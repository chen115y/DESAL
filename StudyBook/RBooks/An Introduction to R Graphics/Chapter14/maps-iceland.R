library(maptools)



iceland <- 
    readShapeSpatial(system.file("extra", "10m-iceland.shp",
                                 package="RGraphics"))



par(mar=rep(0, 4))
sp::plot(iceland, col="gray")



