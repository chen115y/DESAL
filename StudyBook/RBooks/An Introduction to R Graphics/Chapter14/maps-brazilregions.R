library(maptools)



brazil <- 
    readShapeSpatial(system.file("extra", "10m-brazil.shp",
                                 package="RGraphics"))



print(
spplot(brazil, "Regions", col.regions=gray(5:1/6))

)



