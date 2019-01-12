# -*- coding: utf-8 -*-
from numpy import *
from shapely.geometry import Polygon, Point
from mpl_toolkits.basemap import Basemap
import matplotlib.pyplot as plt
from igraph import *
from matplotlib.colors import ListedColormap
import matplotlib.patches as ptch
from matplotlib.collections import PatchCollection
import matplotlib
import glob
import zipfile
import os

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

    season_1 = []

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
                    

##            if (n_subgr > 1):
##                m_lon_wmc = mean(lon_wmc)
##                m_lat_wmc = mean(lat_wmc)
##                (xt,yt) = map(m_lon_wmc,m_lat_wmc)
##                ax.add_artist(plt.text(xt,yt,str(gcnt),fontsize=18,
##                                       fontweight='normal', ha='center', va='center', color=colr,zorder=2000))

            fout.write('%d %s\n' % (gcnt,g["support_season"]))

            area_this_epoch = []
            lonm_this_epoch = []
            latm_this_epoch = []
            lonm_next_epoch = []
            latm_next_epoch = []
            conf = g.es.get_attribute_values("weight")            

            for i in range(nrules):
                area_this_epoch.append(areas1[edges[i][0]])
                lonm_this_epoch.append(lon_wmc[edges[i][0]])
                latm_this_epoch.append(lat_wmc[edges[i][0]])
                lonm_next_epoch.append(lon_wmc[edges[i][1]])
                latm_next_epoch.append(lat_wmc[edges[i][1]])

            for i in range(nrules):
                if (is_loop[i]):
                    for j in range(narea):
                        if area_name[j] == area_this_epoch[i]:   
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
                            if (n_subgr == 1):
                                ec = 'r'
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
                            if (labels == 2):
                                (xt, yt) = map(lonm_this_epoch[i], latm_this_epoch[i])
                                plt.text(xt, yt, str(int(round(conf[i] * 100, 1))), fontsize=fontsize,
                                         fontweight='normal', ha='center', va='center', color=red)
                            break

            
            # season_1.append(season)
            print season

            for i in range(nrules):
                if (not(is_loop[i])):
                    season_color = 'black'
                    if season == 'winter':
                        season_color = 'blue'
                    elif season == 'spring':
                        season_color = 'green'
                    elif season == 'summer':
                        season_color = 'red'
                    elif season == 'autumn':
                        season_color = 'burlywood'

                    (xbm, ybm) = map(lonm_this_epoch[i], latm_this_epoch[i])
                    (xm, ym) = map(lonm_next_epoch[i], latm_next_epoch[i])
                    arr = ptch.FancyArrow(xbm,ybm,xm-xbm,ym-ybm,width=scale*conf[i],shape='full',
                                          length_includes_head=True,facecolor=season_color, edgecolor='black', zorder=1000)
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
    LYPosStart = 45.3                  # legend edge start y position
    LYPosEnd = LYPosStart              # legend edge end y position
    LYStepFactor = -1. / 4.            # legend edges step factor
    LXPosCircleStart = 18.5
    LYPosCircleStart = 45.3
    LXPosTextStart = 19.0
    LYPosTextStart = 45.3
    confText = ['low','medium','high']

    #radii = radii / countr

    #radii = radii / countr

    for confl in range(3):
        xpos1 = LXPosStart
        ypos1 = LYPosStart + confl * LYStepFactor
        xpos2 = LXPosEnd
        ypos2 = ypos1
        (xbm, ybm) = map(xpos1, ypos1)
        (xm, ym) = map(xpos2, ypos2)
        arr = ptch.FancyArrow(xbm, ybm, xm - xbm, ym - ybm, width=scale * (confl+1),
                              length_includes_head=True, facecolor='k', edgecolor='black',zorder=100)
        ax.add_patch(arr)
        xtext = LXPosCircleStart
        ytext = LYPosCircleStart + confl * LYStepFactor
        (xt, yt) = map(xtext, ytext)
        att = plt.text(xt, yt, confText[confl], fontsize=14,
                       fontweight='normal', ha='left', va='center', color='k',zorder=100)
        ax.add_artist(att)

    lats = [ ypos1 + LYStepFactor*4, ypos1 + LYStepFactor*4, LYPosStart - LYStepFactor, LYPosStart - LYStepFactor]
    lons = [ LXPosStart + LYStepFactor, LXPosTextStart - LYStepFactor*3, LXPosTextStart - LYStepFactor*3, LXPosStart + LYStepFactor ]
    x, y = map(lons,lats)
    xy = zip(x,y)
    poly = ptch.Polygon(xy,facecolor='white',zorder=99)
    ax.add_patch(poly)

    xtext = LXPosStart
    ytext = LYPosTextStart - LYStepFactor * 0.6
    (xt, yt) = map(xtext, ytext)
    att = plt.text(xt, yt, 'Probability of transition:', fontsize=14,
                   fontweight='normal', ha='left', va='center', color='k',zorder=101)
    ax.add_artist(att)
    
    xtext = LXPosStart
    ytext = LYPosTextStart + LYStepFactor * 3
    (xt, yt) = map(xtext, ytext)
    att = plt.text(xt, yt, 'Seasons:', fontsize=14,
                   fontweight='normal', ha='left', va='center', color='k',zorder=101)
    ax.add_artist(att)

    radius = 0.075

    xtiss = LXPosStart + radius
    ytiss = LYPosTextStart + LYStepFactor * 4
    (xt, yt) = map(xtiss, ytiss)
    # map.tissot(xtiss,ytiss,radius,100,edgecolor='black',facecolor='blue',linewidth=3,zorder=100)
    map.scatter(xt,yt, 100, color="b", marker="s", edgecolor="k", linewidth=1, zorder=100)
    xtext = xtiss + 3 * radius
    ytext = ytiss
    (xt, yt) = map(xtext, ytext)
    att = plt.text(xt, yt, 'winter', fontsize=14,
                   fontweight='normal', ha='left', va='center', color='k',zorder=101)
    ax.add_artist(att)
   
    xtiss = LXPosCircleStart + radius 
    ytiss = LYPosTextStart + LYStepFactor * 4
    (xt, yt) = map(xtiss, ytiss)
    # map.tissot(xtiss,ytiss,radius,100,edgecolor='black',facecolor='green',linewidth=3,zorder=100)
    map.scatter(xt,yt, 100, color="g", marker="s", edgecolor="k", linewidth=1, zorder=100)
    xtext = xtiss + 3 * radius
    ytext = ytiss
    (xt, yt) = map(xtext, ytext)
    att = plt.text(xt, yt, 'spring', fontsize=14,
                   fontweight='normal', ha='left', va='center', color='k',zorder=101)
    ax.add_artist(att)
    
    xtiss = LXPosStart + radius
    ytiss = LYPosTextStart + LYStepFactor * 5
    (xt, yt) = map(xtiss, ytiss)
    # map.tissot(xtiss,ytiss,radius,100,edgecolor='black',facecolor='red',linewidth=3,zorder=100)
    map.scatter(xt,yt, 100, color="r", marker="s", edgecolor="k", linewidth=1, zorder=100)
    xtext = xtiss + 3 * radius
    ytext = ytiss
    (xt, yt) = map(xtext, ytext)
    att = plt.text(xt, yt, 'summer', fontsize=14,
                   fontweight='normal', ha='left', va='center', color='k',zorder=101)
    ax.add_artist(att)

    xtiss = LXPosCircleStart + radius
    ytiss = LYPosTextStart + LYStepFactor * 5
    (xt, yt) = map(xtiss, ytiss)
    # map.tissot(xtiss,ytiss,radius,100,edgecolor='black',facecolor='burlywood',linewidth=3,zorder=100)
    map.scatter(xt,yt, 100, color="burlywood", marker="s", edgecolor="k", linewidth=1, zorder=100)
    xtext = xtiss + 3 * radius
    ytext = ytiss
    (xt, yt) = map(xtext, ytext)
    att = plt.text(xt, yt, 'autumn', fontsize=14,
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
##    (xt, yt) = map(18.417, 43.867+0.02)
##    map.tissot(18.417, 43.867,0.02,100,edgecolor='black',facecolor='black',linewidth=1,zorder=101)
##    att = plt.text(xt, yt, 'Sarajevo', fontsize=12,
##                   fontweight='normal', ha='center', va='bottom', color='k',zorder=101)
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
    (xt, yt) = map(16.5, 42.0)
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

    fout.close()    

    return                    

fvert='..\\data\\vertices\\mfs_vertices_60x30.tab'

files = glob.glob('..\\data\\temp1\\*')
for f in files:
    os.remove(f)
n_subgr = 5
zipfile1 = zipfile.ZipFile("..\\data\\subgraphs\\%d-subgraph-paths-13.zip" % n_subgr,"r")
zipfile1.extractall('..\\data\\temp1\\')
fgmls = glob.glob("..\\data\\temp1\\%d-subgraph*.gml" % n_subgr)
outfile = "..\\results\\%d-subgraph-adriatic-26.txt" % n_subgr
print outfile

matplotlib.rcParams.update({'font.size': 24})

minsup = 13

show_igraph(fvert,fgmls,n_subgr,outfile,minsup,3000,1,12)
plt.show()                 
                 
