# -*- coding: utf-8 -*-
from numpy import *
import numpy as np
from shapely.geometry import Polygon, Point
from mpl_toolkits.basemap import Basemap
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages
from igraph import *
from matplotlib.colors import ListedColormap
import matplotlib.patches as ptch
from matplotlib.collections import PatchCollection
import matplotlib
import glob
import zipfile
import os
import math


def read_areas_def(vertfile):

    f = vertfile.replace("_vertices_","_vertices_def_")      
    lines = open(f, "r").readlines()
    
    line1 = lines[0].rpartition('\n')
    line2 = line1[0].split('\t')
    nx = float(line2[0])
    ny = float(line2[1])

    line1 = lines[1].rpartition('\n')
    line2 = line1[0].split('\t')
    lons = eval(''.join(line2))

    line1 = lines[2].rpartition('\n')
    line2 = line1[0].split('\t')
    lats = eval(''.join(line2))

    return (nx,ny,lons,lats)

def read_areas(vertfile):
    
    lines = open(vertfile, "r").readlines()

    header = lines[0].split()
    data = lines[1:]
    lh = len(header)
    narea = len(data)

    area_name = []
    area_lon_wmc = zeros(narea,dtype=float)
    area_lat_wmc = zeros(narea,dtype=float)
    area_poly = []
    
    for i in range(narea):     
        line1 = data[i].rpartition('\n')
        line2 = line1[0].split('\t')
        area_name.append(line2[0])
        area_lon_wmc[i] = float(line2[1])
        area_lat_wmc[i] = float(line2[2])
        area_poly.append(Polygon(eval(line2[3])))

    vcolor = [[""] for x in range(narea)]        
    vcol_loop = [[""] for x in range(narea)]        
            
    return (narea,area_name,area_lon_wmc,area_lat_wmc,area_poly,vcolor,vcol_loop)

def draw_pie(ax,ratios=[0.4,0.3,0.3], X=0, Y=0, size = 1000, colors = ['red','blue','green','yellow','magenta','purple']):  
 
    N = len(ratios)
 
    xy = []
 
    start = 0.
    for ratio in ratios:
        x = [0] + np.cos(np.linspace(2*math.pi*start,2*math.pi*(start+ratio), 30)).tolist()
        y = [0] + np.sin(np.linspace(2*math.pi*start,2*math.pi*(start+ratio), 30)).tolist()
        xy1 = zip(x,y)
        xy.append(xy1)
        start += ratio
 
    for i, xyi in enumerate(xy):
        ax.scatter([X],[Y] , marker=(xyi,0), s=size, facecolor=colors[i], zorder=600, linewidths=1, edgecolors='k' )
 
def show_igraph(fvert,fgmls,n_subgr,outfile,minsup,scale,labels,fontsize):

    (nx,ny,lons,lats) = read_areas_def(fvert)

    (narea,area_name,area_lon_wmc,area_lat_wmc,area_poly,vcolor,vcol_loop)=read_areas(fvert)

    ## MFS frame ##
    F_lon_min = min(lons)
    F_lon_max = max(lons)
    F_lat_min = min(lats)
    F_lat_max = max(lats)

    ## MFS frame ##
    F_lon_min = -5.5
    F_lon_max = 36.0
    F_lat_min = 30.24
    F_lat_max = 45.9587212

    ## AFS frame ##
    F_lon_min = 12.0
    F_lon_max = 20.25
    F_lat_min = 39.6
    F_lat_max = 45.9587212    
    
    map = Basemap(llcrnrlon=F_lon_min,llcrnrlat=F_lat_min,urcrnrlon=F_lon_max,urcrnrlat=F_lat_max,\
                  rsphere=(6378137.00,6356752.3142),\
                  resolution='h',projection='merc')

    ax = plt.gca()

    #colors = ['blue','green','magenta','yellow','white','cyan','burlywood' ]
    #colors = ['blue','green','magenta','yellow','cyan','burlywood' ]
    #colors = ['blue','red','green','magenta','yellow','cyan','burlywood' ]
    colors = ['blue','red','green' ]

    radii = 0.
    countr = 0
    circleScale = 0.5

    shape = []
    rulea = []

    fout = open(outfile, 'w')    

    gcnt = 0
    for fgml in fgmls:

        g = Graph.Read_GraphML(fgml)

        support = g["support"]
        support_season = g["support_season"]
        season = g["season"]

        if (support >= minsup):

            gcnt = gcnt + 1

            print [gcnt,support,support_season,season]
            
            nrules = g.ecount()
            is_loop = g.es.is_loop()
            areas1=g.vs.get_attribute_values('name')
            lon_wmc=g.vs.get_attribute_values('lon_wmc')
            lat_wmc=g.vs.get_attribute_values('lat_wmc')
            edges=g.get_edgelist()
            
            vertices = []
            vert_loop = []
            for i in range(nrules):
                if (not(is_loop[i])):
                    vertices.append(areas1[edges[i][0]])
                    vertices.append(areas1[edges[i][1]])
                if (is_loop[i]):
                    vert_loop.append(areas1[edges[i][0]])
            colr = 'black'
            if (len(vertices) > 0):
                gcolors = []
                for vert in vertices:
                    gcolors.append(vcolor[area_name.index(vert)])
                col_avail = list(set(colors) - set(reduce(lambda x, y: x + y, gcolors, [])))
                if (len(col_avail) > 0):
                    colr = col_avail[0]
                    for vert in vertices:
                        vcolor[area_name.index(vert)].append(colr)
                    for vert in vert_loop:
                        vcol_loop[area_name.index(vert)].append(colr)
                    

            if (n_subgr > 1):
                m_lon_wmc = mean(lon_wmc)
                m_lat_wmc = mean(lat_wmc)
                (xt,yt) = map(m_lon_wmc,m_lat_wmc)
                # labels will be added manually in adobe acrobat
##                ax.add_artist(plt.text(xt,yt,str(gcnt),fontsize=18,
##                                       fontweight='normal', ha='center', va='center', color=colr,zorder=2000))

            fout.write('%d %s\n' % (gcnt,g["support_season"]))

            area_this_epoch = []
            area_next_epoch = []
            lonm_this_epoch = []
            latm_this_epoch = []
            lonm_next_epoch = []
            latm_next_epoch = []
            conf = g.es.get_attribute_values("weight")            

            for i in range(nrules):
                area_this_epoch.append(areas1[edges[i][0]])
                area_next_epoch.append(areas1[edges[i][1]])
                lonm_this_epoch.append(lon_wmc[edges[i][0]])
                latm_this_epoch.append(lat_wmc[edges[i][0]])
                lonm_next_epoch.append(lon_wmc[edges[i][1]])
                latm_next_epoch.append(lat_wmc[edges[i][1]])

            first = True

            for i in range(nrules):
                if (is_loop[i]):
                    for j in range(narea):
                        ## area A472 removed (Brindisi)
                        if area_name[j] == area_this_epoch[i] and area_this_epoch[i] != 'A472':   
                            x = []
                            y = []
                            polygon = area_poly[j].exterior.coords
                            lp = len(polygon)
                            for kk in range(lp):
                                x.append(polygon[kk][0])
                                y.append(polygon[kk][1])
                            (xp, yp) = map(x, y)
                            xpyp = zeros((lp, 2), dtype=float)                   
                            for kk in range(lp):
                                xpyp[kk, 0] = xp[kk]
                                xpyp[kk, 1] = yp[kk]
                            bounds = area_poly[i].bounds
                            radius = (bounds[2]-bounds[0]+bounds[3]-bounds[1])/ 2 / 2 * (conf[i] / 3) * circleScale
                            if (conf[i] == 3):
                                radii = radii + radius
                                countr = countr + 1
                            if (n_subgr == 1 or n_subgr == 8):
                                # ec = 'r'
                                ec = 'g'
                            else:
                                ec = colr
                            cols = unique(vcol_loop[j])
                            cols = cols[1:]
                            radius1 = radius
                            if (len(cols) > 1):
                                lenc = len(cols) - 1 
                                for ic in range(len(cols)-1):
                                    #radius1 = radius1 * 0.7
                                    radius1 = radius * float(3 - ic) / 4
                            map.tissot(lonm_this_epoch[i],latm_this_epoch[i],radius1,100,
                                       edgecolor='black',facecolor=ec,linewidth=1, zorder=500)
                            if (len(cols) > 1):
                                pie_size = [1. / len(cols)] * len(cols)
                                (xt, yt) = map(lonm_this_epoch[i], latm_this_epoch[i])
                                draw_pie(ax,pie_size, xt, yt,size=775,colors=cols)
                            if (labels == 2):
                                (xt, yt) = map(lonm_this_epoch[i], latm_this_epoch[i])
##                                plt.text(xt, yt, str(int(round(conf[i] * 100, 1))), fontsize=fontsize,
##                                         fontweight='normal', ha='center', va='center', color='black')
                                plt.text(xt, yt, area_this_epoch[i], fontsize=fontsize,
                                         fontweight='normal', ha='center', va='center', color='black',zorder=1000)
                            break

            for i in range(nrules):
                ## the arrow A473 --> A472 removed (Brindisi)
                if (not(is_loop[i])) and area_next_epoch[i] != 'A472':
                    (xbm, ybm) = map(lonm_this_epoch[i], latm_this_epoch[i])
                    (xm, ym) = map(lonm_next_epoch[i], latm_next_epoch[i])
                    if (n_subgr == 1 or n_subgr == 8):
                        ec = 'g'
                    else:
                        ec = colr
                    arr = ptch.FancyArrow(xbm,ybm,xm-xbm,ym-ybm,width=scale*conf[i],shape='full',
                                          length_includes_head=True,facecolor=ec, edgecolor='black', zorder=1000)
                    ax = plt.gca()
                    ax.add_patch(arr)
                    if (labels == 2):
                        att = plt.text(xbm + (xm - xbm) / 3, ybm + (ym - ybm) / 3, str(int(round(conf[i] * 100, 0))),
                                       fontsize=fontsize,fontweight='normal', ha='center', va='center', color='green')
                        ax.add_artist(att)

    for iarea in range(narea):
        x = []
        y = []
        polygon = area_poly[iarea].exterior.coords
        lp = len(polygon)
        for kk in range(lp):
            x.append(polygon[kk][0])
            y.append(polygon[kk][1])
        (xp, yp) = map(x, y)
        xpyp = zeros((lp, 2), dtype=float)                   
        for kk in range(lp):
            xpyp[kk, 0] = xp[kk]
            xpyp[kk, 1] = yp[kk]
        ax.add_patch(ptch.Polygon(xpyp, closed=True, facecolor='none', edgecolor='black'))  

    # draw coastlines, country boundaries, fill continents.
    map.drawcoastlines(linewidth=0.25)
    map.drawcountries(linewidth=0.25)
    land_color = (199, 233, 192)
    land_color = tuple(x / 255. for x in land_color) 
    #map.fillcontinents(color='coral', lake_color='aqua')
    map.fillcontinents(color=land_color, lake_color='aqua')
    # draw the edge of the map projection region (the projection limb)
    map.drawmapboundary(fill_color='white')    
    # draw lat/lon grid lines every five degrees.
    map.drawmeridians(arange(0,360,1),labels=[0,0,1,0],fontsize=16,linewidth=0)
    map.drawparallels(arange(-90,90,1),labels=[1,0,0,0],fontsize=16,linewidth=0)


    # legend of edges  (adriatic)

    LXPosStart = 17.0                  # legend edge start x position
    LXPosEnd = 18.0                    # legend edge end x position
    LYPosStart = 45.35                  # legend edge start y position
    LYPosEnd = LYPosStart              # legend edge end y position
    #LYStepFactor = -1. / 4.            # legend edges step factor
    LYStepFactor = -1. / 3.            # legend edges step factor
    LXPosCircleStart = 18.5
    LYPosCircleStart = 45.3
    LXPosTextStart = 19.0
    LYPosTextStart = 45.3
    confText = ['low','medium','high']

    #radii = radii / countr

    #return    
    
    radii = radius
    
    for confl in range(3):
        xpos1 = LXPosStart
        ypos1 = LYPosStart-0.05 + confl * LYStepFactor
        xpos2 = LXPosEnd
        ypos2 = ypos1
        (xbm, ybm) = map(xpos1, ypos1)
        (xm, ym) = map(xpos2, ypos2)
        if (n_subgr == 1 or n_subgr == 8):
            arr = ptch.FancyArrow(xbm, ybm, xm - xbm, ym - ybm, width=scale * (confl+1),
                                  length_includes_head=True, facecolor='g', edgecolor='black',zorder=100)
        else:
            arr = ptch.FancyArrow(xbm, ybm, xm - xbm, ym - ybm, width=scale * (confl+1),
                                  length_includes_head=True, facecolor='b', edgecolor='black',zorder=100)
        ax.add_patch(arr)
        xpos3 = LXPosCircleStart
        ypos3 = LYPosCircleStart + confl * LYStepFactor
        radius = radii * ((confl + 1.) / 3.)
        #radius = radii * float(confl+1) / 4
        if (n_subgr == 1 or n_subgr == 8):
            map.tissot(xpos3,ypos3,radius,100,edgecolor='black',facecolor='g',linewidth=1,zorder=100)
        else:
            map.tissot(xpos3,ypos3,radius,100,edgecolor='black',facecolor='b',linewidth=1,zorder=100)
 
        xtext = LXPosTextStart
        ytext = LYPosTextStart + confl * LYStepFactor
        (xt, yt) = map(xtext, ytext)
        att = plt.text(xt, yt, confText[confl], fontsize=14,
                       fontweight='normal', ha='left', va='center', color='k',zorder=100)
        ax.add_artist(att)

    lats = [ ypos1 + LYStepFactor, ypos1 + LYStepFactor, LYPosStart - LYStepFactor, LYPosStart - LYStepFactor]
    lons = [ LXPosStart + LYStepFactor, LXPosTextStart - LYStepFactor*3, LXPosTextStart - LYStepFactor*3, LXPosStart + LYStepFactor ]
    x, y = map(lons,lats)
    xy = zip(x,y)
    poly = ptch.Polygon(xy,facecolor='white',edgecolor='k',zorder=99)
    ax.add_patch(poly)

    xtext = LXPosStart
    ytext = LYPosTextStart - LYStepFactor * 0.6
    (xt, yt) = map(xtext, ytext)
    att = plt.text(xt, yt, 'Probability of transition:', fontsize=14,
                   fontweight='normal', ha='left', va='center', color='k',zorder=101)
    ax.add_artist(att)

    ## Gargano
    (xt, yt) = map(15.35, 41.70)
    att = plt.text(xt, yt, 'Gargano', fontsize=14,
                   fontweight='normal', ha='left', va='center', color='k',zorder=101, rotation=30)
    ax.add_artist(att)
    
    ## Capitals
    ## Rome 41°54′N 12°30′E
    (xt, yt) = map(12.5, 41.9+0.02)
    map.tissot(12.5,41.9,0.02,100,edgecolor='black',facecolor='black',linewidth=1,zorder=101)
    att = plt.text(xt, yt, 'Rome', fontsize=12,
                   fontweight='normal', ha='center', va='bottom', color='k',zorder=101)
    ax.add_artist(att)
    ## Zagreb 45°49′0″N 15°59′0″E
    (xt, yt) = map(15.983, 45.817+0.02)
    map.tissot(15.983, 45.817,0.02,100,edgecolor='black',facecolor='black',linewidth=1,zorder=101)
    att = plt.text(xt, yt, 'Zagreb', fontsize=12,
                   fontweight='normal', ha='center', va='bottom', color='k',zorder=101)
    ax.add_artist(att)
    ## Sarajevo 43°52′N 18°25′E
    (xt, yt) = map(18.417, 43.867+0.02)
    map.tissot(18.417, 43.867,0.02,100,edgecolor='black',facecolor='black',linewidth=1,zorder=101)
    att = plt.text(xt, yt, 'Sarajevo', fontsize=12,
                   fontweight='normal', ha='center', va='bottom', color='k',zorder=101)
    ax.add_artist(att)
    ## Podgorica 42°26′28.63″N 19°15′46.41″E
    xcc = 19+15./60+46.41/3600
    ycc = 42+26./60+28.63/3600
    (xt, yt) = map(xcc, ycc+0.02)
    map.tissot(xcc, ycc,0.02,100,edgecolor='black',facecolor='black',linewidth=1,zorder=101)
    att = plt.text(xt, yt, 'Podgorica', fontsize=12,
                   fontweight='normal', ha='center', va='bottom', color='k',zorder=101)
    ax.add_artist(att)
    ## Tirana 41°19′44″N 19°49′04″E
    xcc = 19+49./60+4./3600
    ycc = 41+19./60+44/3600
    (xt, yt) = map(xcc, ycc+0.02)
    map.tissot(xcc, ycc,0.02,100,edgecolor='black',facecolor='black',linewidth=1,zorder=101)
    att = plt.text(xt, yt, 'Tirana', fontsize=12,
                   fontweight='normal', ha='center', va='bottom', color='k',zorder=101)
    ax.add_artist(att)

    ## Sea names
    ## Adriatic Sea
    (xt, yt) = map(16, 42.3)
    att = plt.text(xt, yt, 'Adriatic Sea', fontsize=14, bbox=dict(boxstyle="square", ec='black', fc='white'),
                   fontweight='normal', ha='left', va='center', color='k',zorder=1100, rotation=-30)
    ax.add_artist(att)
    ## Tyrrhenian Sea
    (xt, yt) = map(12.2, 41)
    att = plt.text(xt, yt, 'Tyrrhenian Sea', fontsize=14, bbox=dict(boxstyle="square", ec='black', fc='white'),
                   fontweight='normal', ha='left', va='center', color='k',zorder=101, rotation=0)
    ax.add_artist(att)

    ## map scale
    map.drawmapscale(12.71, 40.3, lon0=0, lat0=0, length=100, barstyle='fancy', units='km', fontsize=9, yoffset=None,
                     labelstyle='simple', fontcolor='k', fillcolor1='w', fillcolor2='k', ax=None, format='%d', zorder=None, linecolor=None, linewidth=None)

    ## annotate projection
    (xt, yt) = map(12.2, 39.8)
    att = plt.text(xt, yt, 'Mercator Projection', fontsize=10, bbox=dict(boxstyle="square", ec='black', fc='white'),
                   fontweight='normal', ha='left', va='center', color='k',zorder=101, rotation=0)
    ax.add_artist(att)

    ## 8-subgraphs - red circles and labels fo convergences / divergences

    fout.close()    

    return                    

fvert='..\\data\\vertices\\mfs_vertices_60x30.tab'

files = glob.glob('..\\data\\temp1\\*')
for f in files:
    os.remove(f)
## enter desired n_subgr
n_subgr = 8
zipfile1 = zipfile.ZipFile("..\\data\\subgraphs\\%d-subgraph-adriatic-26.zip" % n_subgr,"r")
zipfile1.extractall('..\\data\\temp1\\')
fgmls = glob.glob("..\\data\\temp1\\graph*.gml")
outfile = "..\\results\\%d-subgraph-adriatic-26.txt" % n_subgr
print outfile

matplotlib.rcParams.update({'font.size': 24})

## enter desired minsup (minsup=52 for 1-subgraphs, 26 otherwise)
minsup = 26

show_igraph(fvert,fgmls,n_subgr,outfile,minsup,3000,1,12)
#plt.savefig("filename.pdf")
plt.show()
                 
