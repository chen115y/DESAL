library(Rgraphviz)



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



toFile(agopen(simpleGNEL, ""), 
       filename="Figures/graph-graphvizrender.ps", 
       fileType="ps")



