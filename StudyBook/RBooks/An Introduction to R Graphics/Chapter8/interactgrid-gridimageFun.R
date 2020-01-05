grays <- gray(0.5 + (rep(1:4, 4) - rep(0:3, each=4))/10)



grid.imageFun <- function(nrow, ncol, cols, 
                          byrow=TRUE) {
  x <- (1:ncol)/ncol
  y <- (1:nrow)/nrow
  if (byrow) {
    right <- rep(x, nrow)
    top <- rep(y, each=ncol)
  } else {
    right <- rep(x, each=nrow)
    top <- rep(y, ncol)
  }
  grid.rect(x=right, y=top,  
    width=1/ncol, height=1/nrow, 
    just=c("right", "top"),
    gp=gpar(col=NA, fill=cols),
    name="image") 
}


pushViewport(viewport(layout=grid.layout(3, 5, widths=c(1,8,2,8,1),
  heights=unit(c(1, 8, 1), c("null", "null", "line")))))
pushViewport(viewport(layout.pos.col=2, 
                      layout.pos.row=2))
grid.imageFun(4, 4, grays)

popViewport()
pushViewport(viewport(layout.pos.col=2, 
                      layout.pos.row=3))
grid.text("(a)", gp=gpar(cex=0.7))
popViewport()
pushViewport(viewport(layout.pos.col=4,
                      layout.pos.row=2))
grid.imageFun(4, 4, grays, byrow=FALSE)

popViewport()
pushViewport(viewport(layout.pos.col=4, 
                      layout.pos.row=3))
grid.text("(b)", gp=gpar(cex=0.7))
popViewport(2)



