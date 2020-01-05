library(maptools)
colorado <- readShapeSpatial(system.file("extra", "10m-colorado.shp",
                                         package="RGraphics"))
par(mar=rep(0, 4))
sp::plot(colorado, col="gray")



