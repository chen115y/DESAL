library(vrmlgen)



quakes <- read.csv("Quake/earthquakes.csv")
NZquakes <- quakes[c("LAT", "LONG", "MAG", "DEPTH")]



cantyQuakes <- quakes[quakes$LAT < -42.4 & quakes$LAT > -44 & 
               quakes$LONG > 171 & quakes$LONG < 173.5, ]
library(MASS)
quakeDens <- kde2d(cantyQuakes$LONG, cantyQuakes$LAT, n=30)



shallowCantyQuakes <- subset(cantyQuakes, DEPTH < 20)



with(shallowCantyQuakes,
     cloud3d(LONG, LAT, -DEPTH,
             filename="vrmlgen.wrl",
             cols="white"))




