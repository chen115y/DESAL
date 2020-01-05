library(rgl)



library(misc3d)



quakes <- read.csv("Quake/earthquakes.csv")
NZquakes <- quakes[c("LAT", "LONG", "MAG", "DEPTH")]



cantyQuakes <- quakes[quakes$LAT < -42.4 & quakes$LAT > -44 & 
               quakes$LONG > 171 & quakes$LONG < 173.5, ]
library(MASS)
quakeDens <- kde2d(cantyQuakes$LONG, cantyQuakes$LAT, n=30)



shallowCantyQuakes <- subset(cantyQuakes, DEPTH < 20)



d <- with(shallowCantyQuakes, 
          {
              kde3d(LONG, LAT, -DEPTH, 
                    h=c(.1, .1, 2), n = 30)
          })



open3d(windowRect=c(0, 0, 900, 900))
with(shallowCantyQuakes, 
     {
         plot3d(LONG, LAT, -DEPTH, 
                aspect=c(1, 0.55, 1), 
                axes=TRUE, box=FALSE,
                xlab="", ylab="", zlab="")
         contour3d(d$d, c(.4, .1), d$x, d$y, d$z,
                   color=rep("gray80", 2), 
                   color2="gray", specular="black",
                   engine="rgl", add=TRUE, alpha=.5)
     })

par3d(userMatrix=rotationMatrix(-60/180*pi, 1, 0, 0)%*%
                 rotationMatrix(-40/180*pi, 0, 0, 1),
      zoom=.9)
snapshot3d("Figures/contour3d.png")
system("cp Figures/contour3d.png Web/threed-contour3d.png")


