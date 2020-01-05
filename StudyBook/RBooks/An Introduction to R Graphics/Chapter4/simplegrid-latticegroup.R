
trellis.par.set(list(layout.widths=list(left.padding=0, right.padding=0, ylab.axis.padding=0, axis.right=0, key.ylab.padding=0)))
print(
xyplot(mpg ~ disp, data=mtcars,
       group=gear, 
       auto.key=list(space="right"),
       par.settings=list(superpose.symbol=list(pch=c(1, 3, 16),
                           fill="white")))

)



