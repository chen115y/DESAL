
trellis.par.set(list(fontsize=list(text=10)))
print(
xyplot(mpg ~ disp | factor(gear), data=mtcars,
       layout=c(3, 1), aspect=1,
       panel=function(...) {
           panel.xyplot(...)
           panel.abline(h=29, lty="dashed")
           panel.text(470, 29.5, "efficiency criterion",
                      adj=c(1, 0), cex=.7)
       })

)



