library(igraph0)

# minimum support
minsup <- 13
# path length
n.edges <- 5

graphpath <- "../data/multilevel_directed_graphs/"
fileprefix <- "mfs_60x30_rules_"
days <- 6
years <- c(1999:2011)
syears <- "1999_2011"
months <- c(1:12)
depthmin <- 1
depthmax <- 1
seasons <- c("winter","spring","summer","autumn")

g <- list()
count <- 0
for (iyear in years) {
  for (imonth in months) {
    count <- count + 1
    # read graphML file
    fname <- paste(graphpath,fileprefix,iyear,"_",sprintf("%02d",imonth),"_",
                   sprintf("%03d",days),"days_depth_", 
                   sprintf("%04d_%04d",depthmin,depthmax),".gml", sep="")
    g[[count]] <- read.graph(fname,format=c("graphml"))
  }
}

vname <- get.vertex.attribute(g[[1]], "name", index=V(g[[1]]))
lon_wmc <- get.vertex.attribute(g[[1]], "lon_wmc", index=V(g[[1]]))
lat_wmc <- get.vertex.attribute(g[[1]], "lat_wmc", index=V(g[[1]]))
df <- data.frame(vname,lon_wmc,lat_wmc,row.names=1)

adriatic <- c("A290","A291","A292",
              "A310","A311","A312","A313","A314",
              "A333","A334","A335","A336","A337","A338",
              "A356","A357","A358","A359","A360","A360",
              "A378","A379","A380","A381","A382","A383","A384",
              "A402","A403","A404","A405","A406",
              "A424","A425","A426","A427","A428","A429",
              "A447","A448","A449","A450","A451","A452","A453",
              "A471","A472","A473","A474","A475","A476",
              "A495","A496","A497","A498","A499","A500",
              "A519","A520","A521","A522","A523",
              "A542","A543","A544","A545")

output <- "../data/gspan/output_paths.g"
region <- adriatic
vertmin <- 1

test = readLines(output)
numGraphs = 0
resultArray = array()
for (i in 1:length(test)) {
  if (test[i] == "XP") {
    numGraphs = numGraphs + 1
  }
}
index = 2
graphList <- list()
gCount <- 0
for (i in 1:numGraphs) {
  graph1 = graph.empty()
  vertexNum = 0
  edgeNum = 0
  vertexName <- list()
  lon <- list()
  lat <- list()
  while (index < length(test) && test[index] != "XP") {
    splitString = strsplit(test[index], " ")
    if (length(splitString[[1]]) != 0 && identical(splitString[[1]][[1]], 
                                                   "v")) {
      graph1 = add.vertices(graph1, 1)
      vertexName[vertexNum+1] <- as.character(splitString[[1]][[3]])
      lon[vertexNum+1] <- df[as.character(splitString[[1]][[3]]),]$lon_wmc
      lat[vertexNum+1] <- df[as.character(splitString[[1]][[3]]),]$lat_wmc
      vertexNum = vertexNum + 1
    }
    if (length(splitString[[1]]) != 0 && splitString[[1]][[1]] != 
        "%" && (identical(splitString[[1]][[1]], "d") || 
                identical(splitString[[1]][[1]], "e"))) {
      graph1 = add.edges(graph1, c(as.integer(splitString[[1]][[2]]) - 
                                     1, as.integer(splitString[[1]][[3]]) - 1), 
                         attribute = "weight")
      graph1 = set.edge.attribute(graph1, "weight", edgeNum, 
                                  as.numeric(splitString[[1]][[4]]))
      edgeNum = edgeNum + 1
    }
    if (length(splitString[[1]]) != 0 && 
        identical(splitString[[1]][[1]],"%") &&
        identical(splitString[[1]][[2]],"=>")) {
      supportVector <- as.numeric(unlist(strsplit(test[index], "[[:punct:]]")))
      graphSupport <- supportVector[4]
      graphMonths <- supportVector[5:length(supportVector)] + 1
      grMonths <- graphMonths %% 12
      grMonths[grMonths==0] <- 12
      graphSeason <- "NA"
      if (!is.na(grMonths)) {
        bb <- hist(grMonths, breaks=c(0,4,6,10,12), plot=FALSE)
        graphSeason <- seasons[which.max(bb$counts)]
      }
      graph1 <- set.graph.attribute(graph1, "months", toString(graphMonths))
      graph1 <- set.graph.attribute(graph1, "support", graphSupport)
      graph1 <- set.graph.attribute(graph1, "season", graphSeason)
      graph1 <- set.graph.attribute(graph1, "support_season", 
                                    toString(bb$counts))
    }
    index = index + 1
  }
  index = index + 1
  for (j in 1:vertexNum) {
    graph1 = set.vertex.attribute(graph1, "name", j - 
                                    1, unlist(vertexName)[j])
    graph1 = set.vertex.attribute(graph1, "lon_wmc", j - 
                                    1, unlist(lon)[j])
    graph1 = set.vertex.attribute(graph1, "lat_wmc", j - 
                                    1, unlist(lat)[j])
  }
  reg <- unlist(vertexName)
  if (all(reg %in% region) & length(reg) >= vertmin) {
    gCount <- gCount + 1
    graphList[[gCount]] <- graph1
  }
}

autumn <- c(4)  # 26 occurrences
spring_summer_autumn <- c(2,3,4) # 104 occurrences
summer_autumn <- c(3,4)  # 78 occurrences
autumn_winter_spring <- c(4,1,2)   # 104 occurrences

group.seasons <- summer_autumn 

supportList <- vector()
for (ig in seq(length(graphList))) {
  supportList[ig] <- graphList[[ig]]$support
  #   supportList[ig] <- sum(as.numeric(unlist(strsplit(graphList[[ig]]$support_season,",")))
  #                          [group.seasons])
}
supportSorted <- sort.int(supportList, decreasing = TRUE, index.return = TRUE)

minsup <- 13
minedges <- n.edges
maxedges <- n.edges
gMaxCount <- 1000
gCount <- 0
gCount_d <- 0
gCount_c <- 0
graph.convg <- graph.empty()
graph.divg <- graph.empty()
df.convg <- data.frame
ig <- 0
graphOutput <- list()
overlap <- FALSE
while (gCount < gMaxCount && ig < length(supportSorted$ix)) {
  ig <- ig + 1
  g1 <- graphList[[supportSorted$ix[ig]]]
  ne <- ecount(g1) 
  if (ne >= minedges && ne <= maxedges && supportSorted$x[ig] >= minsup) {
    #     if (ne >= minedges && g1$support >= minsup && 
    #           (g1$season == "summer" | g1$season=="autumn" | g1$season=="NA")) {
    gOutLen <- length(graphOutput)
    if (gOutLen > 0) {
      overlap <- FALSE
      e1 <- get.edges(g1,0:(ecount(g1)-1))
      if (minedges > 1) {
        e1.aux <- e1
        ind_loop1 <- !(is.loop(g1, eids=E(g1)))
        e1 <- matrix(e1[ind_loop1,1:2],ncol=2)        
      }
      afr1 = get.vertex.attribute(g1,"name",e1[,1])
      ato1 = get.vertex.attribute(g1,"name",e1[,2])
      df1 <- paste(afr1,ato1)
      for (io in seq(gOutLen)) {
        g2 <- graphOutput[[io]]
        e2 = get.edges(g2,0:(ecount(g2)-1))
        if (minedges > 1) {
          e2.aux <- e2
          ind_loop2 <- !(is.loop(g2, eids=E(g2)))
          e2 <- matrix(e2[ind_loop2,],ncol=2)          
        }
        afr2 = get.vertex.attribute(g2,"name",e2[,1])
        ato2 = get.vertex.attribute(g2,"name",e2[,2])
        df2 <- paste(afr2,ato2)
        print("--------------------")
        print(paste(ig,io))
        print(df1)
        print(df2)
        if (length(intersect(df1,df2))) {
          print("overlap!")
          overlap <- TRUE
          break
        }
      }     
    }
    if (!overlap) {
      gCount <- gCount + 1
      graphOutput[[gCount]] <- graphList[[supportSorted$ix[ig]]] 
      write.graph(graphList[[supportSorted$ix[ig]]],
                  paste("../data/subgraphs/",minedges,"-subgraph",sprintf("%04d",gCount),".gml",sep=""),
                  format=c("graphml"))       
    }
  }
}
