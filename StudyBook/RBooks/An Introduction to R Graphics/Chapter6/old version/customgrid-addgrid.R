depthgroup <- equal.count(quakes$depth, number=3, overlap=0)



trellis.par.set(theme = canonical.theme("postscript", col=FALSE))
trellis.par.set(list(layout.widths=list(left.padding=0, right.padding=0, ylab.axis.padding=0, axis.right=0, key.ylab.padding=0)))
print(
xyplot(lat ~ long | depthgroup, data=quakes, pch=".",
       panel=function(...) {
         grid.points(174.75, -36.87, pch=16, 
                     size=unit(2, "mm"),
                     default.units="native")
         grid.text("Auckland",
                   unit(174.75, "native") - unit(2, "mm"),
                   unit(-36.87, "native"),
                   just="right")
         panel.xyplot(...)
       })

)



