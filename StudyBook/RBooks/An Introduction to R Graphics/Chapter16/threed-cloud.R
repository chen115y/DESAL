quakes <- read.csv("Quake/earthquakes.csv")
NZquakes <- quakes[c("LAT", "LONG", "MAG", "DEPTH")]



cantyQuakes <- quakes[quakes$LAT < -42.4 & quakes$LAT > -44 & 
               quakes$LONG > 171 & quakes$LONG < 173.5, ]
library(MASS)
quakeDens <- kde2d(cantyQuakes$LONG, cantyQuakes$LAT, n=30)



shallowCantyQuakes <- subset(cantyQuakes, DEPTH < 20)



trellis.device("pdf", color=FALSE,
               file="Figures/threed-cloud%d.pdf", onefile=FALSE)
for (i in seq(40, 80, 20)) {
    print(cloud(-DEPTH ~ LONG + LAT, shallowCantyQuakes,
                xlim=c(171, 173), ylim=c(-44.5, -42.5),
                pch=16, col=rgb(0, 0, 0, .5),
                screen=list(z=i, x=-70)))
}

dev.off()



