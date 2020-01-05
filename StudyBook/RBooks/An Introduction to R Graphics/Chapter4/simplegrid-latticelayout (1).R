
trellis.par.set(list(fontsize=list(text=10)))
trellis.par.set(list(layout.widths=list(left.padding=0, right.padding=0, ylab.axis.padding=0, axis.right=0, key.ylab.padding=0)))
plot1 <- xyplot(mpg ~ disp, data=mtcars, 
                aspect=1, xlim=c(65, 480), ylim=c(9, 35),
                subset=gear == 5)
plot2 <- xyplot(mpg ~ disp, data=mtcars, 
                aspect=1, xlim=c(65, 480), ylim=c(9, 35),
                subset=gear == 4)
plot3 <- xyplot(mpg ~ disp, data=mtcars, 
                aspect=1, xlim=c(65, 480), ylim=c(9, 35),
                subset=gear == 3)
print(plot1, position=c(0, 2/3, 1, 1), more=TRUE)
print(plot2, position=c(0, 1/3, 1, 2/3), more=TRUE)
print(plot3, position=c(0, 0, 1, 1/3))




