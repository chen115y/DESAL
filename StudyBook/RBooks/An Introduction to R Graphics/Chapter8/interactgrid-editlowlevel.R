grays <- gray(0.5 + (rep(1:4, 4) - rep(0:3, each=4))/10)



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


editDetails.imageGrob <- function(x, specs) { 
  if (any(c("ncol", "nrow", "byrow") %in% names(specs))) { 
    x <- addGrob(x, makeImageRect(x$nrow, x$ncol,
                                  x$cols, x$byrow))
  } 
  if (any(c("cols") %in% names(specs))) { 
    x <- editGrob(x, "image", gp=gpar(fill=x$cols))
  } 
  x 
} 

editDetails.ozGrob <- function(x, specs) {
  if ("ozRegion" %in% names(specs)) {
    x$childrenvp <- makeOzViewports(x$ozRegion)
    x <- setChildren(x, makeOzLines(x$ozRegion))
  }
  x
}


pushViewport(viewport(layout=grid.layout(2, 1, 
                                         heights=unit(c(1, 1),
                                                      c("null", "line")),
                                         respect=TRUE)))
pushViewport(viewport(layout.pos.row=1))
grid.imageGrob(4, 4, grays, name="imageGrob")

grid.edit("imageGrob::image", gp=gpar(col="white"))

popViewport()
pushViewport(viewport(layout.pos.row=2, gp=gpar(cex=0.7)))
grid.text("(a)", name="label")
popViewport()
grid.edit("imageGrob", cols=rev(grays))

grid.remove("label")
pushViewport(viewport(layout.pos.row=2, gp=gpar(cex=0.7)))
grid.text("(b)", name="label")
popViewport()
grid.edit("imageGrob", byrow=FALSE)

grid.remove("label")
pushViewport(viewport(layout.pos.row=2, gp=gpar(cex=0.7)))
grid.text("(c)", name="label")
popViewport(2)



