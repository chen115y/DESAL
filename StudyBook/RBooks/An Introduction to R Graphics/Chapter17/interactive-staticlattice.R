trellis.par.set(theme = canonical.theme("postscript", color=FALSE))
print(
xyplot(mpg ~ disp | factor(gear), mtcars, subset=gear != 5, pch=16)

)



