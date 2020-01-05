library(pixmap)

pic <- read.pnm(system.file("extra", "AfterTheBombs.pnm", package="RGraphics"))

source(system.file("extra", "as.raster.R", package="RGraphics"))

library(grid)

w <- 1024 # 578
h <- 768 # 500
picRaster <- as.raster(pic)
bg <- picRaster # [1:h, (1024 - w):1024]

unknown <- 8.7
total <- 9.1
known <- total - unknown

theta0 <- pi/4
thetaN <- theta0 + 2*pi*unknown/total
theta <- seq(theta0, thetaN, length.out=100)
x <- 0.3*c(0, cos(theta)) + 0.5
y <- 0.3*c(0, sin(theta)) + 0.35

# grid.newpage()
grid.raster(bg)
pushViewport(viewport(width=unit(1, "snpc"), height=unit(1, "snpc"),
                      gp=gpar(cex=1.2)))
grid.polygon(x, y, gp=gpar(col=NA, fill=rgb(.67, 0, .11, .7)))
label1 <- textGrob("UNACCOUNTED\nFOR",
                   unit(.2, "npc") - unit(2, "mm"),
                   unit(.6, "npc") + unit(2, "mm"),
                   gp=gpar(cex=1.4, fontface="bold"),
                   just=c("right", "bottom"))
grid.rect(.2, .6, just=c("right", "bottom"),
          width=grobWidth(label1) + unit(4, "mm"),
          height=grobHeight(label1) + unit(4, "mm"),
          gp=gpar(col=NA, fill=rgb(1, 1, 1, .5)))
grid.draw(label1)
label2 <- textGrob("ACCOUNTED\nFOR", 
                   unit(.8, "npc") + unit(2, "mm"),
                   unit(.6, "npc") + unit(2, "mm"),
                   gp=gpar(cex=1.4, fontface="bold"),
                   just=c("left", "bottom"))
grid.rect(.8, .6, just=c("left", "bottom"),
          width=grobWidth(label2) + unit(4, "mm"),
          height=grobHeight(label2) + unit(4, "mm"),
          gp=gpar(col=NA, fill=rgb(1, 1, 1, .5)))
grid.draw(label2)
grid.segments(c(.2, .8), .6,
              c(.3, .7), .5,
              gp=gpar(lty="dotted", lwd=2))
heading <- textGrob("The Department of Defense is unable to account for the use of
$8.7 billion of the $9.1 billion it spent on reconstruction in Iraq",
                    x=unit(0.5, "cm"),
                    y=unit(3, "lines"),
                    just=c("left", "top"),
                    gp=gpar(cex=1, col="white"))
pushViewport(viewport(x=0, y=1,
                      just=c("left", "top"),
                      height=grobHeight(heading) + unit(4, "lines"),
                      width=grobWidth(heading) + unit(1, "cm")))
grid.rect(gp=gpar(fill="black"))
grid.segments(x0=unit(0.5, "cm"),
              x1=unit(1, "npc") - unit(0.5, "cm"),
              y0=unit(1, "npc") - unit(2, "lines"),
              y1=unit(1, "npc") - unit(2, "lines"),
              gp=gpar(col="grey50", lwd=2))
grid.text("That's 96 Percent",
          x=unit(0.5, "cm"),
          y=unit(1, "npc") - unit(1, "lines"),
          just="left",
          gp=gpar(fontface="bold", col="white"))
grid.draw(heading)
popViewport(2)



