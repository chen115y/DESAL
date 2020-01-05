library(rgl)



open3d(windowRect=c(0, 0, 600, 600))
clear3d("all")
light3d()
material3d(shininess=100, specular="black")
# Head
radius <- function(d) {
   pchisq(d^2, 3)
}
shade3d(ellipse3d(diag(3), level=radius(1),
                   centre=c(0, 0, 1)),
         color="yellow")
# Neck
# logo is 100x76
png("rlogoExtended.png",
    width=500, height=250)
library(grid)
grid.rect(gp=gpar(col=NA, fill="yellow"))
library(png)
rlogo <- as.raster(readPNG(system.file("extra", "Rlogo.png", 
                                       package="RGraphics")))
rlogo[rlogo == "#FFFFFF"] <- "yellow"
grid.raster(rlogo, x=.6, y=.01, width=.08, just=c("bottom"))
dev.off()
shade3d(cylinder3d(cbind(0, 0, c(-1.4, 1)),
                   e1=cbind(0, 0, 1),
                   e2=cbind(1, 0, 0),
                   sides=100),
        color="yellow",
        texture="rlogoExtended.png",
        texcoords=list(x=rep(seq(1, 0, length.out=101), each=4)[-c(1:2, 403:404)],
                       y=rep(c(0, 1, 1, 0), 50)))
old <- function() {
shade3d(cylinder3d(cbind(0, 0, c(-1.3, 1)),
                   e1=cbind(0, 0, 1),
                   e2=cbind(1, 0, 0),
                   sides=100),
        color="yellow")
}
# Eyes
eyeball <- ellipse3d(diag(3), level=radius(.4))
shade3d(translate3d(eyeball, .8, .35, .7),
         color="white")
shade3d(translate3d(eyeball, .8, -.35, .7),
         color="white")
# Translate radius of eye, rotate, translate position of eye
pupil <- rotate3d(translate3d(ellipse3d(diag(3),
                                        level=radius(.05)),
                              .4, 0, 0),
                  30/180*pi, 0, 0, 1)
shade3d(translate3d(pupil, .8, .35, .7),
         color="black")
shade3d(translate3d(pupil, .8, -.35, .7),
         color="black")
# points3d(1.21, c(-.35, .35), .7, cex=3)
# Nose
shade3d(cylinder3d(cbind(c(1, 1.3), 0, .3),
                    radius=.2,
                    e1=cbind(1, 0, 0),
                    e2=cbind(0, 1, 0),
                    sides=100),
         color="yellow")
shade3d(ellipse3d(diag(3), level=radius(.2),
                   centre=c(1.3, 0, .3)),
         color="yellow")
# Mouth
shade3d(ellipse3d(diag(3), level=radius(.8),
                   centre=c(.6, 0, -.5)),
         color="tan")
angle <- seq(-65, 65, length=30)/180*pi
lines3d(.6 + .81*cos(angle), .81*sin(angle), -.5, lwd=3)
# Hair on top
angle <- seq(15, 165, length=30)/180*pi
lines3d(.2, .7*cos(angle), 1.5 + .7*sin(angle), lwd=3)
lines3d(-.2, .7*cos(angle), 1.5 + .7*sin(angle), lwd=3)
# Hair on sides
lines3d(seq(.5, -.5, length=5), -1, rep(c(.3, .8), length=5), lwd=3)
lines3d(seq(.5, -.5, length=5), 1, rep(c(.3, .8), length=5), lwd=3)

par3d(userMatrix=rotationMatrix(-pi/2, 1, 0, 0)%*%
      rotationMatrix(-50/180*pi, 0, 0, 1)%*%
      rotationMatrix(10/180*pi, 1, 0, 0))

snapshot3d("homer.png")



