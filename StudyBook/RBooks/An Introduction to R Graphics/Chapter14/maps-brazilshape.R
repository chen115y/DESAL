library(maptools)



brazil <- 
    readShapeSpatial(system.file("extra", "10m-brazil.shp",
                                 package="RGraphics"))



par(mar=rep(0, 4))
# Need to spec. sp:: here so that code works in 'RGraphics' package
sp::plot(brazil, col="gray")
box("figure", col="gray", lwd=2)



