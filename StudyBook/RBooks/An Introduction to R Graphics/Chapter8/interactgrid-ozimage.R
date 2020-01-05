ozImage <- function(mapLong, mapLat, 
                    imageLong, imageLat, cols) {
  grob(mapLong=mapLong, mapLat=mapLat, 
       imageLong=imageLong, imageLat=imageLat, cols=cols,
       cl="ozImage")  
}

drawDetails.ozImage <- function(x, recording) { 
  grid.draw(ozGrob(ozRegion(xlim=x$mapLong, 
                            ylim=x$mapLat))) 
  depth <- downViewport(vpPath("ozlay", "ozvp"))
  pushViewport(viewport(y=min(x$imageLat), 
                        height=diff(range(x$imageLat)), 
                        x=max(x$imageLong), 
                        width=diff(range(x$imageLong)),
                        default.units="native", 
                        just=c("right", "bottom")))
  grid.draw(imageGrob(50, 50, cols=x$col)) 
  popViewport()
  upViewport(depth)
} 


