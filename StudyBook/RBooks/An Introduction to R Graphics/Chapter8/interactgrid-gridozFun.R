library(oz)



grid.ozFun <- function(ozRegion) {
  pushViewport( 
    viewport(name="ozlay", 
             layout=grid.layout(1,1,
                      widths=diff(ozRegion$rangex),
                      heights=diff(ozRegion$rangey), 
                      respect=TRUE)))
  pushViewport(viewport(name="ozvp", 
                        layout.pos.row=1, 
                        layout.pos.col=1,
                        xscale=ozRegion$rangex, 
                        yscale=ozRegion$rangey, 
                        clip=TRUE)) 
  index <- 1
  for(i in ozRegion$lines) {
    grid.lines(i$x, i$y, default.units="native",
               name=paste("ozlines", index, sep="")) 
    index <- index + 1
  }
  upViewport(2) 
}


grid.rect(gp=gpar(col="gray"))
grid.ozFun(ozRegion())




