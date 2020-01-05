
trellis.par.set(list(fontsize=list(text=10)))
print(
xyplot(mpg ~ disp | factor(gear), data=mtcars,
       layout=c(3, 1), aspect=1,
       scales=list(y=list(at=seq(10, 30, 10))),
       ylab="miles per gallon",
       xlab=expression(paste("displacement (", inch^3, ")")))

)



