faceA <- function(x, y, width, height) {
  pushViewport(viewport(x=x, y=y, 
                        width=width, height=height))
  grid.rect()
  grid.circle(x=c(0.25, 0.75), y=0.75, r=0.1)
  grid.lines(x=c(0.33, 0.67), y=0.25)
  popViewport()
}

faceB <- function(x, y, width, height) {
  pushViewport(viewport(x=x, y=y, 
                        width=width, height=height))
  grid.draw(rectGrob())
  grid.draw(circleGrob(x=c(0.25, 0.75), y=0.75, r=0.1))
  grid.draw(linesGrob(x=c(0.33, 0.67), y=0.25))
  popViewport()
}


faceA(.5, .5, width=.1, height=.1)
angle <- seq(0, 2*pi, length=9)[-9]
for (i in angle) {
  x <- 0.5 + 0.3*cos(i)
  y <- 0.5 + 0.3*sin(i)
  faceA(x, y, 0.2*x, 0.2*y)
}
grid.rect(width=.9, height=.9, gp=gpar(col="gray", fill=NA))



