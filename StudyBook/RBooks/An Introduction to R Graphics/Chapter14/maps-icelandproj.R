library(rgdal)



iceland <- 
    readShapeSpatial(system.file("extra", "10m-iceland.shp",
                                 package="RGraphics"))



proj4string(iceland) <- CRS("+proj=longlat +ellps=WGS84")



icelandMercator <- spTransform(iceland, 
                               CRS("+proj=merc +ellps=GRS80"))



par(mar=rep(0, 4))
sp::plot(iceland, col="gray80", border="white", lwd=3)
par(new=TRUE)
sp::plot(icelandMercator)



