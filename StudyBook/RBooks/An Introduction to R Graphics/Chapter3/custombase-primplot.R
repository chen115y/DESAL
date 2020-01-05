t <- seq(60, 360, 30)
x <- cos(t/180*pi)*t/360
y <- sin(t/180*pi)*t/360



library(pixmap)
source(system.file("extra", "as.raster.R", package="RGraphics"))
rlogo <- read.pnm(system.file("pictures/logo.pgm", 
                              package="pixmap")[1])



par(mfrow=c(1, 2), mar=c(1, 1, 2, 1))
par(cex=0.7)

t <- seq(60, 360, 30)
x <- cos(t/180*pi)*t/360
y <- sin(t/180*pi)*t/360


par(mfrow=c(3, 3), mar=rep(1, 4), pty="s")
plot(x, y, pch=16, col="gray",
     xlim=c(-.6, 1.1), ylim=c(-1.1, .6),
     axes=FALSE, ann=FALSE)
box(col="gray")
mtext("lines()", side=3, line=.6, cex=.7, family="mono")
lines(x, y)

plot(x, y, pch=16, col="gray",
     xlim=c(-.6, 1.1), ylim=c(-1.1, .6),
     axes=FALSE, ann=FALSE)
box(col="gray")
mtext("segments()", side=3, line=.6, cex=.7, family="mono")
segments(0, 0, x, y)

plot(x, y, pch=16, col="gray",
     xlim=c(-.6, 1.1), ylim=c(-1.1, .6),
     axes=FALSE, ann=FALSE)
box(col="gray")
mtext("arrows()", side=3, line=.6, cex=.7, family="mono")
arrows(0, 0, x[-1], y[-1], length=.1)

plot(x, y, pch=16, col="gray",
     xlim=c(-.6, 1.1), ylim=c(-1.1, .6),
     axes=FALSE, ann=FALSE)
box(col="gray")
mtext("xspline()", side=3, line=.6, cex=.7, family="mono")
xspline(x, y, shape=1)

plot(x, y, pch=16, col="gray",
     xlim=c(-.6, 1.1), ylim=c(-1.1, .6),
     axes=FALSE, ann=FALSE)
box(col="gray")
mtext("rect()", side=3, line=.6, cex=.7, family="mono")
rect(min(x), min(y), max(x), max(y), col="gray")

plot(x, y, pch=16, col="gray",
     xlim=c(-.6, 1.1), ylim=c(-1.1, .6),
     axes=FALSE, ann=FALSE)
box(col="gray")
mtext("polygon()", side=3, line=.6, cex=.7, family="mono")
polygon(x, y, col="gray")

plot(x, y, pch=16, col="gray",
     xlim=c(-.6, 1.1), ylim=c(-1.1, .6),
     axes=FALSE, ann=FALSE)
box(col="gray")
mtext("polypath()", side=3, line=.6, cex=.7, family="mono")
polypath(c(x, NA, .5*x), c(y, NA, .5*y),
         col="gray", rule="evenodd")

plot(x, y, pch=16, col="gray",
     xlim=c(-.6, 1.1), ylim=c(-1.1, .6),
     axes=FALSE, ann=FALSE)
box(col="gray")
mtext("xspline()", side=3, line=.6, cex=.7, family="mono")
xspline(x, y, shape=1, open=FALSE, col="gray")

plot(x, y, pch=16, col="gray",
     xlim=c(-.6, 1.1), ylim=c(-1.1, .6),
     axes=FALSE, ann=FALSE)
box(col="gray")
mtext("rasterImage()", side=3, line=.6, cex=.7, family="mono")
rasterImage(rlogo,
            x - .07, y - .07,
            x + .07, y + .07,
            interpolate=FALSE)





