depthgroup <- equal.count(quakes$depth, number=3, overlap=0)



magnitude <- equal.count(quakes$mag, number=2, overlap=0)



trellis.par.set(theme = canonical.theme("postscript", col=FALSE))
trellis.par.set(list(layout.widths=list(left.padding=0, right.padding=0, ylab.axis.padding=0, axis.right=0, key.ylab.padding=0)))
print(
xyplot(lat ~ long | depthgroup * magnitude,
       data=quakes,
       main="Fiji Earthquakes",
       ylab="latitude", xlab="longitude",
       pch=".",
       scales=list(x=list(alternating=c(1, 1, 1))),
       between=list(y=1),
       par.strip.text=list(cex=0.7),
       par.settings=list(axis.text=list(cex=0.7)))

)



