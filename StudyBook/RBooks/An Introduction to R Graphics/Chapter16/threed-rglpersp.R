library(rgl)



quakes <- read.csv("Quake/earthquakes.csv")
NZquakes <- quakes[c("LAT", "LONG", "MAG", "DEPTH")]



cantyQuakes <- quakes[quakes$LAT < -42.4 & quakes$LAT > -44 & 
               quakes$LONG > 171 & quakes$LONG < 173.5, ]
library(MASS)
quakeDens <- kde2d(cantyQuakes$LONG, cantyQuakes$LAT, n=30)



open3d(windowRect=c(0, 0, 900, 450))
# clear3d("all")
persp3d(quakeDens$x, quakeDens$y, quakeDens$z, 
        aspect=c(1, 0.55, .2), col="white", box=FALSE,
        axes=FALSE, xlab="", ylab="", zlab="")

par3d(userMatrix=rotationMatrix(-80/180*pi, 1, 0, 0)%*%
                 rotationMatrix(-65/180*pi, 0, 0, 1),
      zoom=.5)
snapshot3d("Figures/threed-rglpersp.png")
system("cp Figures/threed-rglpersp.png Web/")



