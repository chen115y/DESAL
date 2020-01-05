library(animation)




n <- 40
t <- seq(0, 2*pi, length=n)
x <- cos(t)
y <- sin(t)



orbit <- function() {
    par(pty="s", mar=rep(1, 4))
    for (i in 1:n) {
        plot.new()
        plot.window(c(-1, 1), c(-1, 1))
        lines(x, y)
        points(x[i], y[i], pch=16, cex=2)
    }
}



ani.options(interval=0.05, outdir="orbitImages",
            filename="orbit.html")
ani.start()
orbit()
ani.stop()


