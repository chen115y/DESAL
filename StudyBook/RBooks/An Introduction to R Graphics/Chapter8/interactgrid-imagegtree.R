makeImageRect <- function(nrow, ncol, cols, byrow) {
  xx <- (1:ncol)/ncol   
  yy <- (1:nrow)/nrow
  if (byrow) {
    right <- rep(xx, nrow)
    top <- rep(yy, each=ncol)
  } else {
    right <- rep(xx, each=nrow)
    top <- rep(yy, ncol)
  }  
  rectGrob(x=right, y=top, 
           width=1/ncol, height=1/nrow, 
           just=c("right", "top"), 
           gp=gpar(col=NA, fill=cols),
           name="image")
}

imageGrob <- function(nrow, ncol, cols, byrow=TRUE,
                       name=NULL, gp=NULL, vp=NULL) { 
  igt <- gTree(nrow=nrow, ncol=ncol, 
               cols=cols, byrow=byrow,
               children=gList(makeImageRect(nrow, ncol, 
                                            cols, byrow)),
               gp=gp, name=name, vp=vp, 
               cl="imageGrob") 
  igt
}

grid.imageGrob <- function(...) {
  igt <- imageGrob(...)
  grid.draw(igt)
}


