library(pixmap)



source(system.file("extra", "as.raster.R", package="RGraphics"))




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




pushViewport(viewport(layout=grid.layout(1, 2, respect=TRUE)))
pushViewport(viewport(layout.pos.row=1, layout.pos.col=1),
             viewport(width=.8, height=.8))
grid.raster(helmet)
popViewport(2)
pushViewport(viewport(layout.pos.row=1, layout.pos.col=2),
             viewport(width=.8, height=.8))
grid.raster(moonCrop)
popViewport(2)



