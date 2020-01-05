library(rgl)
tetra <- function() {
t1 <- tetrahedron3d()
t2vb <- t1$vb
t2vb[1, ] <- -3
t2 <- tmesh3d(t2vb, t1$it)
plane <- qmesh3d(rbind(rep(-3.01, 4),
                       c(-2, -2, 2, 2),
                       c(-3, 3, 3, -3),
                       rep(1, 4)),
                 matrix(1:4, ncol=1))
open3d(windowRect=c(0, 0, 600, 600))
# clear3d()
shade3d(plane, color="white", specular="black")
wire3d(plane)
wire3d(t1, lwd=3)
wire3d(t2, lwd=3)
segments3d(rbind(t2$vb[1, t2$it], 
                 t1$vb[1, t1$it]),
           rbind(t2$vb[2, t2$it], 
                 t1$vb[2, t1$it]),
           rbind(t2$vb[3, t2$it], 
                 t1$vb[3, t1$it]),
           col="gray", lwd=3)
view3d(40, -30)
}


t1 <- cube3d()
t1tube <- t1
t1tube$ib <- t1tube$ib[, -(3:4)]
t2vb <- t1$vb
t2vb[1, ] <- -5
t2 <- qmesh3d(t2vb, t1$ib)
plane <- qmesh3d(rbind(rep(-5.01, 4),
                       c(-2, -2, 2, 2),
                       c(-3, 3, 3, -3),
                       rep(1, 4)),
                 matrix(1:4, ncol=1))
open3d(windowRect=c(0, 0, 600, 600))
# clear3d()
shade3d(plane, color="white", 
        ambient="white", specular="white", emission="white")
wire3d(plane)
shade3d(t1tube, color="white", specular="black")
wire3d(t1, lwd=3)
wire3d(t2, lwd=3)
segments3d(rbind(t2$vb[1, t2$ib[, 4]], 
                 t1$vb[1, t1$ib[, 4]]),
           rbind(t2$vb[2, t2$ib[, 4]], 
                 t1$vb[2, t1$ib[, 4]]),
           rbind(t2$vb[3, t2$ib[, 4]], 
                 t1$vb[3, t1$ib[, 4]]),
           col="gray", lwd=3)
view3d(55, -20, fov=0)
rgl.postscript("Figures/threed-3dproj.eps")
system("epstopdf Figures/threed-3dproj.eps")
system("convert Figures/threed-3dproj.pdf Web/threed-3dproj.png")



