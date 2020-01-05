tplot <- xyplot(lat ~ long, data=quakes, pch=".")



trellis.par.set(theme = canonical.theme("postscript", col=FALSE))
trellis.par.set(list(dot.symbol=list(pch=1)))
print(
update(tplot, 
       main="Earthquakes in the Pacific Ocean\n(since 1964)")

)



