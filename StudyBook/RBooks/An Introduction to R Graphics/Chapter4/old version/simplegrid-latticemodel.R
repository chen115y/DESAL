trellis.par.set(theme = canonical.theme("postscript", col=FALSE))
trellis.par.set(list(dot.symbol=list(pch=1)))
print(
xyplot(lat ~ long, data=quakes, pch=".")

)



