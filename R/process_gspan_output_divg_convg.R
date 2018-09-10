library(igraph0)

# minimum support
minsup <- 39

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

output <- "../data/gspan/output_divg_convg.g"
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
    if (graph1$support >= minsup) {
      divg_convg <- FALSE
      edg1 <- get.edgelist(graph1)
      if (length(unique(edg1[,1])) == 1) {
        divg_convg <- TRUE
        graph1 <- set.graph.attribute(graph1, "type", "divg")
      }
      if (length(unique(edg1[,2])) == 1) {
        divg_convg <- TRUE
        graph1 <- set.graph.attribute(graph1, "type", "convg")
      }
      if (divg_convg) {
        gCount <- gCount + 1
        graphList[[gCount]] <- graph1
      }
    }
  }
}

supportList <- vector()
for (ig in seq(length(graphList))) {
  supportList[ig] <- graphList[[ig]]$support
}
supportSorted <- sort.int(supportList, decreasing = TRUE, index.return = TRUE)

gMaxCount <- 1000
ig <- 0
while (ig < gMaxCount && ig < length(supportSorted$ix)) {
  ig <- ig + 1
  write.graph(graphList[[supportSorted$ix[ig]]],paste("../data/subgraphs/","2-subgraph-divg-convg",
                                                      sprintf("%04d",ig),
                                                      ".gml",sep=""),
              format=c("graphml"))        
}
