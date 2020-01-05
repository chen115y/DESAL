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



Rgraphviz::plot(simpleGNEL, 
     edgeAttrs=list(lty=c(`grDevices~graphics`="solid", 
                      `grDevices~grid`="solid",
                      `grid~lattice`="dashed", 
                      `grid~ggplot2`="dashed")),
     nodeAttrs=list(fillcolor=c(grDevices="white", 
                      graphics="gray90", grid="gray90",
                      lattice="gray60", ggplot2="gray60")))



