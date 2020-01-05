depthgroup <- equal.count(quakes$depth, number=3, overlap=0)



trellis.par.set(theme = canonical.theme("postscript", col=FALSE))
trellis.par.set(list(dot.symbol=list(pch=1)))
print(
xyplot(lat ~ long | depthgroup, data=quakes, pch=".",
       layout=c(1, 3), aspect=1, index.cond=list(3:1))

)



