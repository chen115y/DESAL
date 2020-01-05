makeOzViewports <- function(ozRegion) {
  vpStack(viewport(name="ozlay", layout=grid.layout(1, 1,
                     widths=diff(ozRegion$rangex),
                     heights=diff(ozRegion$rangey), 
                     respect=TRUE)),
          viewport(name="ozvp", layout.pos.row=1, 
                   layout.pos.col=1,
                   xscale=ozRegion$rangex, 
                   yscale=ozRegion$rangey, 
                   clip=TRUE))
}

makeOzLines <- function(ozRegion) {
  numLines <- length(ozRegion$lines)
  lines <- vector("list", numLines)
  index <- 1
  for(i in ozRegion$lines) {
    lines[[index]] <- linesGrob(i$x, i$y, 
                    default.units="native",
                    vp=vpPath("ozlay", "ozvp"), 
                    name=paste("ozlines", index, sep=""))
    index <- index + 1
  }
  do.call("gList", lines)
}

ozGrob <- function(ozRegion, name=NULL, gp=NULL, vp=NULL) {
  gTree(ozRegion=ozRegion, name=name, gp=gp, vp=vp, 
    childrenvp=makeOzViewports(ozRegion), 
    children=makeOzLines(ozRegion), 
    cl="ozGrob")
}

grid.ozGrob <- function(...) {
  grid.draw(ozGrob(...))
}


