library(maptools)



brazil <- 
    readShapeSpatial(system.file("extra", "10m-brazil.shp",
                                 package="RGraphics"))



brazilRegions <- 
    readShapeSpatial(system.file("extra", 
                                 "10m_brazil_regions.shp",
                                 package="RGraphics"))


brazilCapitals <- 
    readShapeSpatial(system.file("extra",
                                 "10m_brazil_capitals.shp",
                                 package="RGraphics"))




print(
spplot(brazil, "Regions", 
       col.regions=gray.colors(5, 0.8, 0.3),
       col="white", 
       panel=function(...) {
           panel.polygonsplot(...)
           sp.lines(brazilRegions, col="gray40")
           labels <- brazilCapitals$Name
           w <- stringWidth(labels)
           h <- stringHeight(labels)
           locs <- coordinates(brazilCapitals)
           grid.rect(unit(locs[, 1], "native"),
                     unit(locs[, 2], "native"),
                     w, h, just=c("right", "top"),
                     gp=gpar(col=NA, fill=rgb(1, 1, 1, .5)))
           sp.text(locs, labels, adj=c(1, 1))
           sp.points(brazilCapitals, pch=21,
                     col="black", fill="white")
       })


)



