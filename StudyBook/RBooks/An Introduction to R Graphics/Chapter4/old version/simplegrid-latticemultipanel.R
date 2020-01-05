depthgroup <- equal.count(quakes$depth, number=3, overlap=0)



trellis.par.set(theme = canonical.theme("postscript", col=FALSE))
trellis.par.set(list(dot.symbol=list(pch=1)))
trellis.par.set(list(layout.widths=list(left.padding=0, right.padding=0, ylab.axis.padding=0, axis.right=0, key.ylab.padding=0)))
print(
xyplot(lat ~ long | depthgroup, data=quakes, pch=".")

)



