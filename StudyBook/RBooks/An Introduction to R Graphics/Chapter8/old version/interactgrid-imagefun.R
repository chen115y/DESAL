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


