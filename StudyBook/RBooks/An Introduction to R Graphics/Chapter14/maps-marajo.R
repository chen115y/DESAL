library(maptools)



marajo <- 
    readShapeSpatial(system.file("extra", "marajo.shp",
                                 package="RGraphics"))



par(mar=rep(0, 4))
sp::plot(marajo, col="gray", pbg="white")



