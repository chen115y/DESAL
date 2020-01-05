par(mar=rep(0, 4))
z <- 2 * volcano        
x <- 10 * (1:nrow(z))   
y <- 10 * (1:ncol(z))   
trans <- persp(x, y, z, zlim=c(0, max(z)),
               theta = 150, phi = 12, lwd=.5,
               scale = FALSE, axes=FALSE)

clines <- contourLines(x, y, z)
lapply(clines,
       function(contour) {
           lines(trans3d(contour$x, contour$y, 0, trans))
       })




