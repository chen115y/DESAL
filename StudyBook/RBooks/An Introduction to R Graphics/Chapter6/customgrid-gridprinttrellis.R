depthgroup <- equal.count(quakes$depth, number=3, overlap=0)



trellis.par.set(theme = canonical.theme("postscript", col=FALSE))
trellis.par.set(list(dot.symbol=list(pch=1), axis.text=list(cex=0.7)))
temp <- xyplot(lat ~ long | depthgroup,   
               data=quakes, pch=".",
               layout=c(3, 1))
print(temp, 
      panel.width=list(1.21, "inches"), 
      panel.height=list(1.5, "inches"))




