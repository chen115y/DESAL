quakes <- read.csv("Quake/earthquakes.csv")
NZquakes <- quakes[c("LAT", "LONG", "MAG", "DEPTH")]



cantyQuakes <- quakes[quakes$LAT < -42.4 & quakes$LAT > -44 & 
               quakes$LONG > 171 & quakes$LONG < 173.5, ]
library(MASS)
quakeDens <- kde2d(cantyQuakes$LONG, cantyQuakes$LAT, n=30)



par(mar=rep(0, 4))
zinterp <- with(quakeDens,
                z[-1, -1] + z[-1, -ncol(z)] + 
                z[-nrow(z), -1] + z[-nrow(z), -ncol(z)])
persp(quakeDens, scale=FALSE, expand=0.02,
      theta=60, d=.1, r=.1, axes=FALSE, box=FALSE,
      col=gray(.4 + 1:6/10)[cut(zinterp, 6)])




