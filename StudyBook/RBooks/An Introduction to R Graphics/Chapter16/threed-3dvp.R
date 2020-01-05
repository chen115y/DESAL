library(rgl)
tetra <- function() {
t2vb <- t1$vb
t2vb[1, ] <- -3
t2vb[2, c(1, 4)] <- t2vb[2, c(1, 4)]*.8
t2vb[3, c(1, 4)] <- t2vb[3, c(1, 4)]*.8
t2vb[2, 2:3] <- t2vb[2, 2:3]*.6
t2vb[3, 2:3] <- t2vb[3, 2:3]*.6
t2 <- tmesh3d(t2vb, t1$it)
t3vb <- t1$vb
t3vb[1, ] <- -10
t3vb[2, ] <- 0
t3vb[3, ] <- 0
t3 <- tmesh3d(t3vb, t1$it)
open3d(windowRect=c(0, 0, 600, 600))
# clear3d()
shade3d(plane, color="white", specular="black")
wire3d(plane)
wire3d(t1, lwd=3)
wire3d(t2, lwd=3)
segments3d(rbind(t3$vb[1, t3$it], 
                 t1$vb[1, t1$it]),
           rbind(t3$vb[2, t3$it], 
                 t1$vb[2, t1$it]),
           rbind(t3$vb[3, t3$it], 
                 t1$vb[3, t1$it]),
           col="gray", lwd=3)
shade3d(translate3d(scale3d(cube3d(), .1, .1, .1), -10, 0, 0))
view3d(50, -20, zoom=.8)
}

t1 <- cube3d()
t1tube <- t1
t1tube$ib <- t1tube$ib[, -(3:4)]
t2vb <- t1$vb
t2vb[2, t1$ib[, 4]] <- t2vb[2, t1$ib[, 4]]*.4
t2vb[3, t1$ib[, 4]] <- t2vb[3, t1$ib[, 4]]*.4
t2vb[2, t1$ib[, 3]] <- t2vb[2, t1$ib[, 3]]*.6
t2vb[3, t1$ib[, 3]] <- t2vb[3, t1$ib[, 3]]*.6
t2vb[1, ] <- -4.5
t2 <- qmesh3d(t2vb, t1$ib)
t2tube <- t2
t2tube$ib <- t2tube$ib[, -(3:4)]
t3 <- translate3d(scale3d(cube3d(), .1, .1, .1), -10, 0, 0)
plane <- qmesh3d(rbind(rep(-4.51, 4),
                       c(-2, -2, 2, 2),
                       c(-3, 3, 3, -3),
                       rep(1, 4)),
                 matrix(1:4, ncol=1))
open3d(windowRect=c(0, 0, 600, 300))
# clear3d()
shade3d(plane, color="white", 
        ambient="white", specular="white", emission="white")
wire3d(plane)
shade3d(t1tube, color="white", specular="black")
wire3d(t1, lwd=3)
shade3d(t2tube, color="white", specular="black")
wire3d(t2, lwd=3)
segments3d(rbind(-10, 
                 t1$vb[1, t1$ib[, 4]]),
           rbind(0, 
                 t1$vb[2, t1$ib[, 4]]),
           rbind(0,
                 t1$vb[3, t1$ib[, 4]]),
           col="gray", lwd=3)
shade3d(t3)
view3d(50, -15, fov=0, zoom=.7)
rgl.postscript("Figures/threed-3dvp.eps")
system("epstopdf Figures/threed-3dvp.eps")
system("convert Figures/threed-3dvp.pdf Web/threed-3dvp.png")



