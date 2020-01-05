
trellis.par.set(list(fontsize=list(text=10)))
gray.colors <- function(n) { 
    adjustcolor(gray(n:1/n), alpha.f=.7) 
}
print(
xyplot(mpg ~ disp | factor(gear), data=mtcars,
       layout=c(3, 1), aspect=1,
       panel=function(x, y, ...) {
           panel.lmline(x, y)
           panel.xyplot(x, y, ...)
       })

)



