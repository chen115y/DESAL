library(oz)



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


calcBreaks <- function(nlevels, breaks, scale) {
  if (is.null(breaks)) {
    seq(min(scale), max(scale), diff(scale)/nlevels)
  } else {
    breaks
  }
}

ribbonVps <- function(nlevels, breaks, margin, scale) {
  breaks <- format(signif(calcBreaks(nlevels, breaks, scale), 
                          3))
  vpTree(
    viewport(name="layout", layout=
      grid.layout(3, 4,
        widths=unit.c(margin, unit(1, "line"),
                      max(unit(0.8, "line") + 
                          stringWidth(breaks)), margin),
        heights=unit.c(margin, unit(1, "null"), margin))),
    vpList(viewport(layout.pos.col=2, layout.pos.row=2,
                    yscale=scale, name="ribbon"),
           viewport(layout.pos.col=3, layout.pos.row=2,
                    yscale=scale, name="labels")))
}

ribbonKids <- function(nlevels, breaks, cols, scale) {
  breaks <- calcBreaks(nlevels, breaks, scale)
  nb <- length(breaks)
  tickloc <- breaks[-c(1, nb)]
  gList(rectGrob(y=unit(breaks[-1], "native"), 
                 height=unit(diff(breaks), "native"),
                 just="top", gp=gpar(fill=cols),
                 vp=vpPath("layout", "ribbon")),
        segmentsGrob(x1=unit(0.5, "line"),
                     y0=unit(tickloc, "native"),
                     y1=unit(tickloc, "native"),
                     vp=vpPath("layout", "labels")),
        textGrob(x=unit(0.8, "line"),
                 y=unit(tickloc, "native"),
                 just="left", 
                 label=format(signif(tickloc, 3)),
                 vp=vpPath("layout", "labels")))
}


ribbonLegend <- function(nlevels=NULL, breaks=NULL, cols, 
                         scale=range(breaks), 
                         margin=unit(0.5, "line"), 
                         gp=NULL, vp=NULL, name=NULL) {
  gTree(
    nlevels=nlevels, breaks=breaks, cols=cols, scale=scale, 
    children=ribbonKids(nlevels, breaks, cols, scale),
    childrenvp=ribbonVps(nlevels, breaks, margin, scale),
    gp=gp, vp=vp, name=name, cl="ribbonLegend")
}

widthDetails.ribbonLegend <- function(x) { 
  sum(layout.widths(viewport.layout(x$childrenvp[[1]]))) 
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



ozKey <- function(x, y, width, height, just, 
                  mapLong, mapLat) {
  gTree(childrenvp=viewport(name="ozkeyframe",
                            x=x, y=y, just=just,
                            width=width, height=height),
        children=gList(ozGrob(ozRegion(), vp="ozkeyframe",
                              gp=gpar(lwd=0.1)),
                       rectGrob(x=mean(mapLong),
                                y=mean(mapLat),
                                width=abs(diff(mapLong)),
                                height=abs(diff(mapLat)),
                                default.units="native",
                                gp=gpar(lwd=1),
                                vp=vpPath("ozkeyframe",
                                          "ozlay", "ozvp"))))
}


ozimage <- ozImage(mapLong, mapLat, 
                   imageLong, imageLat, imageCols)



ribbonlegend <- ribbonLegend(breaks=zbreaks, 
                             cols=ozgrays, 
                             scale=range(zbreaks),
                             gp=gpar(cex=0.7))



ozkey <- ozKey(x=unit(1, "npc") - unit(1, "mm"),
               y=unit(1, "npc") - unit(1, "mm"),
               width=unit(3.5, "cm"),
               height=unit(2, "cm"),
               just=c("right", "top"),
               mapLong, mapLat)



grid.rect(gp=gpar(col="gray"))
fg <- frameGrob()
fg <- packGrob(fg, ozimage)
fg <- placeGrob(fg, ozkey)
fg <- packGrob(fg, ribbonlegend, "right")
grid.draw(fg)




