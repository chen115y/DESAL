trellis.par.set(theme = canonical.theme("postscript", color=FALSE))
trellis.par.set(list(layout.widths=list(left.padding=0, right.padding=0, ylab.axis.padding=0, axis.right=0, key.ylab.padding=0)))
print(
xyplot(mpg ~ disp | factor(gear), data=mtcars,
       panel=function(subscripts, ...) {
           grid.text(paste("n =", length(subscripts)),
                     unit(1, "npc") - unit(1, "mm"),
                     unit(1, "npc") - unit(1, "mm"),
                     just=c("right", "top"))
           panel.xyplot(subscripts=subscripts, ...)
       })

)



