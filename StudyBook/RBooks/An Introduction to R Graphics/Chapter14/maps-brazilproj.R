library(maptools)



library(rgdal)



brazil <- 
    readShapeSpatial(system.file("extra", "10m-brazil.shp",
                                 package="RGraphics"))



proj4string(brazil) <- CRS("+proj=longlat +ellps=WGS84")



glines <- gridlines(brazil)
glinesOrtho <- spTransform(glines, CRS("+proj=ortho"))
par(mar=rep(0, 4))
brazilOrtho <- spTransform(brazil, CRS("+proj=ortho"))
sp::plot(brazilOrtho, col="gray")
sp::plot(glinesOrtho, lty="dashed", add=TRUE)



