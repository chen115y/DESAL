library(maptools)



library(raster)



brazil <- 
    readShapeSpatial(system.file("extra", "10m-brazil.shp",
                                 package="RGraphics"))



# Read in prepared raster
brazilRelief <- raster(system.file("extra", "brazilRelief.tif",
                                   package="RGraphics"))



# Make PNG version for this one because otherwise it's TOO big
png("Figures/maps-brazilraster.png",
    width=900, height=900)
par(mar=rep(0, 4))
raster::image(brazilRelief, col=gray(0:255/255), maxpixels=1e6)
sp::plot(brazil, add=TRUE)
box(lwd=4)
dev.off()
system("cp Figures/maps-brazilraster.png Web/")


