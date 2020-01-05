trellis.par.set(theme = canonical.theme("postscript", col=FALSE))
trellis.par.set(list(fontsize=list(text=10)))
spots <- by(sunspots, gl(235, 12, lab=1749:1983), mean)
plot1 <- xyplot(spots ~ 1749:1983, xlab="", type="l",
                main="Average Yearly Sunspots", 
                scales=list(x=list(alternating=2)))
plot2 <- xyplot(spots ~ 1749:1983, xlab="Year", type="l")
print(plot1, position=c(0, 0.2, 1, 1), more=TRUE)
print(plot2, position=c(0, 0, 1, 0.33))




