quakes <- read.csv("Quake/earthquakes.csv")
NZquakes <- quakes[c("LAT", "LONG", "MAG", "DEPTH")]



cantyQuakes <- quakes[quakes$LAT < -42.4 & quakes$LAT > -44 & 
               quakes$LONG > 171 & quakes$LONG < 173.5, ]
library(MASS)
quakeDens <- kde2d(cantyQuakes$LONG, cantyQuakes$LAT, n=30)



shallowCantyQuakes <- subset(cantyQuakes, DEPTH < 20)



library(scatterplot3d)



par(lab=c(3, 3, 0))
s3d <- with(shallowCantyQuakes,
            scatterplot3d(-DEPTH ~ LONG + LAT,
                          angle=30, scale.y=0.45, type="n",
                          pch=16, color=rgb(0, 0, 0, .5),
                          x.ticklabs=pretty(LONG, 3),
                          grid=FALSE, zlim=c(-20, 0)))

quakeDensXY <- kde2d(shallowCantyQuakes$LONG, 
                     shallowCantyQuakes$LAT, n=30)
lapply(contourLines(quakeDensXY, nlevels=8),
       function(cl) {
           polygon(s3d$xyz.convert(cl$x, cl$y, 
                                   rep(-20, length(cl$x))),
                   lwd=.5, col=gray(.8 - cl$level/20),
                   border=NA)
       })

quakeDensXZ <- kde2d(shallowCantyQuakes$LONG, 
                     -shallowCantyQuakes$DEPTH, n=30)
lapply(contourLines(quakeDensXZ, nlevels=8),
       function(cl) {
           polygon(s3d$xyz.convert(cl$x, 
                                   rep(-43.2, length(cl$x)),
                                   cl$y),
                   lwd=.5, col=gray(.8 - 2*cl$level),
                   border=NA)
       })
quakeDensYZ <- kde2d(shallowCantyQuakes$LAT, 
                     -shallowCantyQuakes$DEPTH, n=30)
lapply(contourLines(quakeDensYZ, nlevels=8),
       function(cl) {
           polygon(s3d$xyz.convert(rep(171.5, length(cl$x)),
                                 cl$x, cl$y),
                   lwd=.5, col=gray(.8 - cl$level),
                   border=NA)
       })
lapply(contourLines(quakeDensYZ, nlevels=8),
       function(cl) {
           polygon(s3d$xyz.convert(rep(173.5, length(cl$x)),
                                   cl$x, cl$y),
                   lwd=.5, col=gray(.8 - cl$level),
                   border=NA)
       })

with(shallowCantyQuakes,
     s3d$points3d(-DEPTH ~ LONG + LAT, pch=16,
                  col=rgb(0, 0, 0, .3)))

s3d$box()



