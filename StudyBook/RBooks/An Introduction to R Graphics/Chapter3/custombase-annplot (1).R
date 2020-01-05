par(mfrow=c(1, 2), mar=c(1, 1, 2, 1))
par(cex=0.7)
x <- 1:10
y <- matrix(sort(rnorm(30)), ncol=3)
plot(x, y[,1], ylim=range(y), ann=FALSE, axes=FALSE, 
     type="l", col="gray")
box(col="gray")

points(x, y[,1])
lines(x, y[,2], col="gray")
points(x, y[,2], pch=2)
lines(x, y[,3], col="gray")
points(x, y[,3], pch=3)


mtext("points() & lines()", side=3, line=0.5)
x <- 1:5
y <- x
plot(x, y, ann=FALSE, axes=FALSE, col="gray", pch=16)
box(col="gray")

text(x[-3], y[-3], c("right", "top", "bottom", "left"), 
     pos=c(4, 3, 1, 2))
text(3, 3, "overlay")

mtext("text()", side=3, line=0.5)



