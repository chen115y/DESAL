library(oz)



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


mapLong <- c(132, 136)
mapLat <- c(-35, -31.5)
imageLong <- range(fluoro.predict$x)
imageLat <- range(fluoro.predict$y)
zbreaks <- seq(min(fluoro.predict$z, na.rm=TRUE), 
               max(fluoro.predict$z, na.rm=TRUE), 
               length=10)
zcol <- cut(fluoro.predict$z, zbreaks,
            include.lowest=TRUE, labels=FALSE)
ozgrays <- gray(0.5 + 1:9/20)
imageCols <- ozgrays[zcol]



mapLong <- c(132, 136)
mapLat <- c(-35, -31.5)
imageLong <- range(fluoro.predict$x)
imageLat <- range(fluoro.predict$y)
zbreaks <- seq(min(fluoro.predict$z, na.rm=TRUE), 
               max(fluoro.predict$z, na.rm=TRUE), 
               length=10)
zcol <- cut(fluoro.predict$z, zbreaks,
            include.lowest=TRUE, labels=FALSE)
ozgrays <- gray(0.5 + 1:9/20)
imageCols <- ozgrays[zcol]

grid.rect(gp=gpar(col="gray"))
grid.ozFun(ozRegion(xlim=mapLong, ylim=mapLat))

downViewport("ozvp")

pushViewport(viewport(y=min(imageLat), 
                      height=abs(diff(imageLat)), 
                      x=max(imageLong), 
                      width=abs(diff(imageLong)),
                      default.units="native", 
                      just=c("right", "bottom")))
grid.imageFun(50, 50, col=imageCols)
upViewport(0)




