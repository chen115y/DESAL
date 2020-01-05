par(mfrow=c(2, 2))
z <- 2 * volcano        # Exaggerate the relief
x <- 10 * (1:nrow(z))   # 10 meter spacing (S to N)
y <- 10 * (1:ncol(z))   # 10 meter spacing (E to W)
# Don't draw the grid lines :  border = NA
par(mar=rep(0, 4))
persp(x, y, z, theta = 135, phi = 30, col = "light grey", scale = FALSE,
      ltheta = -120, shade = 0.75, border = NA, box = FALSE)
mtext("persp()", side=3, line=-2)
par(mar=c(3, 3, 2, 0.5))
# Note that  example(trees)  shows more sensible plots!
N <- nrow(trees)
attach(trees)
# Girth is diameter in inches
symbols(Height, Volume, circles=Girth/24, inches=FALSE,
        main="", xlab="", ylab="", bg=grey(Girth/max(Girth)))
mtext("symbols()", side=3, line=0.5)
par(mar=rep(0.5, 4))
contour(x, y, z, asp=1, labcex=0.35, axes=FALSE)
rect(0, 0, 870, 620)
mtext("contour()", side=3, line=-1.5)
image(x, y, z, asp=1, col=grey(0.5 + 1:12/24), xlab="", ylab="", axes=FALSE)
rect(min(x)-5, min(y)-5, max(x)+5, max(y)+5)
mtext("image()", side=3, line=-1.5)



