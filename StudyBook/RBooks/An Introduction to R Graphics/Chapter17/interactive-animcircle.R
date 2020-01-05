
n <- 40
t <- seq(0, 2*pi, length=n)
x <- cos(t)
y <- sin(t)



for (i in 1:n) {
    plot.new()
    plot.window(c(-1, 1), c(-1, 1))
    lines(x, y)
    points(x[i], y[i], pch=16, cex=2)
    Sys.sleep(.05)
}



