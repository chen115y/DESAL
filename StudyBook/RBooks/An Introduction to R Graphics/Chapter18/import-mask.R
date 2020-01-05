moon <- read.pnm(system.file("extra", "GPN-2000-000473.pgm",
                                   package="RGraphics"))
helmet <- read.pnm(system.file("extra", "astronaut.pgm",
                               package="RGraphics"))

moonMatrix <- as.matrix(as.raster(moon))
helmetMatrix <- as.matrix(as.raster(helmet))

moonCrop <- moonMatrix[120:(119 + nrow(helmetMatrix)),
                       10:(9 + ncol(helmetMatrix))]
moonGreys <- col2rgb(moonCrop)[1, ]
helmetRGB <- col2rgb(helmetMatrix)
helmetMask <- matrix(rgb(helmetRGB[1, ],
                         helmetRGB[2, ],
                         helmetRGB[3, ],
                         moonGreys, maxColorValue=255), ncol=ncol(helmetMatrix))




library(pixmap)



source(system.file("extra", "as.raster.R", package="RGraphics"))




grid.rect(width=.99, height=.99)
grid.raster(helmetMask)



