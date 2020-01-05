library(network)



nodes <- c("grDevices", "graphics", "grid",
           "lattice", "ggplot2")
edgeList <- 
    list(grDevices=list(edges=c("graphics", "grid")),
         graphics=list(),
         grid=list(edges=c("lattice", "ggplot2")),
         lattice=list(),
         ggplot2=list())
simpleGNEL <- new("graphNEL",
                  nodes=nodes,
                  edgeL=edgeList,
                  edgemode="directed")



simpleNetwork <- 
    network(rbind(c(1, 2),
                  c(1, 3),
                  c(3, 4),
                  c(3, 5)),
            vertex.attr=list(vertex.names=nodes))




par(mar=rep(2, 4), xpd=NA)
set.seed(2500)
plot(simpleNetwork, mode="fruchtermanreingold", 
     vertex.col=1, displaylabels=TRUE)




