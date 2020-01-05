faceC <- function(x, y, width, height) {
  gTree(childrenvp=viewport(x=x, y=y,
                            width=width, height=height,
                            name="face"),
        children=gList(rectGrob(vp="face"),
                       circleGrob(x=c(0.25, 0.75), 
                                  y=0.75, r=0.1, vp="face"),
                       linesGrob(x=c(0.33, 0.67), y=0.25,
                                 vp="face")))
}

faceD <- function(x, y, width, height) {
  grid.grabExpr({
                  pushViewport(viewport(x=x, y=y,
                                        width=size, 
                                        height=size))
                  grid.rect()
                  grid.circle(x=c(0.25, 0.75), 
                              y=0.75, r=0.1)
                  grid.lines(x=c(0.33, 0.67), y=0.25)
                  popViewport()
                })
}

drawDetails.face <- function(x, recording) {
  pushViewport(viewport(x=x$x, y=x$y,
                        width=x$width, height=x$height))
  grid.rect()
  grid.circle(x=c(0.25, 0.75), y=0.75, r=0.1)
  grid.lines(x=c(0.33, 0.67), y=0.25)
  popViewport()  
}

faceE <- function(x, y, width, height) {
  grob(x=x, y=y, width=width, height=height, cl="face")
}


