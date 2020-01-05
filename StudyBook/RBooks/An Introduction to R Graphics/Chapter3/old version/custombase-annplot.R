par(mfrow=c(2, 2), mar=c(1, 1, 2, 1))
par(cex=0.7)
x <- 1:10
y <- matrix(sort(rnorm(30)), ncol=3)
plot(x, y[,1], ylim=range(y), ann=FALSE, axes=FALSE, 
     type="l", col="grey")
box(col="grey")

points(x, y[,1])
lines(x, y[,2], col="grey")
points(x, y[,2], pch=2)
lines(x, y[,3], col="grey")
points(x, y[,3], pch=3)


mtext("points() & lines()", side=3, line=0.5)
x <- c(4, 5, 2, 1)
y <- x
plot(x, y, ann=FALSE, axes=FALSE, col="grey", pch=16)
points(3, 3, col="grey", pch=16)
box(col="grey")

text(x, y, c("bottom", "left", "top", "right"), pos=1:4)
text(3, 3, "overlay")

mtext("text()", side=3, line=0.5)
x <- rnorm(100)
y <- rnorm(100)
plot(x, y, ann=FALSE, axes=FALSE, col="grey")
box(col="grey")

rect(min(x), min(y), max(x), max(y), lty="dashed")
hull <- chull(x, y)
polygon(x[hull], y[hull])

mtext("rect() & poly()", side=3, line=0.5)



