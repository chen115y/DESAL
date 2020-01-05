
trellis.par.set(list(dot.symbol=list(pch=1)))
print(
xyplot(mpg ~ disp | factor(gear), data=mtcars,
       layout=c(1, 3), aspect=1)

)



