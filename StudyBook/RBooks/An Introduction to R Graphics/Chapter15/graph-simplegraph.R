library(graph)



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



library(Rgraphviz)
# Weird stuff happening if don't pre-layout graph
temp <- agopen(simpleGNEL, "")
Rgraphviz::plot(temp)



