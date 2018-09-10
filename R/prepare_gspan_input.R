library(igraph0)
library(subgraphMining)

# IMPORTANT!
# igraph0 is deprecated and it is not available from CRAN anymore and works in R version 3.3
# entire igraph0 directory must be copied from "I:\Users\petelin\Documents\R\win-library\3.3"


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
conf <- matrix(ncol=1)
for (iyear in years) {
  for (imonth in months) {
    count <- count + 1
    # read graphML file
    fname <- paste(graphpath,fileprefix,iyear,"_",sprintf("%02d",imonth),"_",
                   sprintf("%03d",days),"days_depth_", 
                   sprintf("%04d_%04d",depthmin,depthmax),".gml", sep="")
    g[[count]] <- read.graph(fname,format=c("graphml"))
    conf = c(conf,get.edge.attribute(g[[count]],"weight"))
  }
}
conf <- conf[!is.na(conf)]
# thee equal frequency intervals
quant <- quantile(conf, probs = seq(0, 1, 1/3))
prob1 <- quant[[2]][1]
prob2 <- quant[[3]][1]

ncount <- count

local({
  discr <<- function(conf,prob1,prob2) {
    if (conf <= prob1) {
      1
    }
    else {
      if (conf > prob1 & conf <= prob2) {
        2
      }
      else {
        3
      }
    }   
  }
})     

outputFile = file("../data/gspan/input.g", "w")
for (i in seq(ncount)) {
  vert <- V(g[[i]])
  write("XP", outputFile)
  for (j in seq(length(vert))) {
    write(paste("v", j, vert[j-1]$name), outputFile)
  }
  edges = get.edges(g[[i]],0:(ecount(g[[i]])-1))
  conf1 = get.edge.attribute(g[[i]],"weight",index=(0:ecount(g[[i]])-1))
  conf.discr <- lapply(conf1,discr,prob1,prob2)
  for (j in seq(length(edges[,1]))) {
    write(paste("d", edges[j,1]+1, edges[j,2]+1, 
                conf.discr[j]), outputFile)
  }
}
close(outputFile)

