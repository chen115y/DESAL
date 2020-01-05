plot.newclass <- 
  function(x, y=NULL, 
           main="", sub="",
           xlim=NULL, ylim=NULL,
           axes=TRUE, ann=par("ann"),
           col=par("col"),
           ...) {
  xy <- xy.coords(x, y)
  if (is.null(xlim))
    xlim <- range(xy$x[is.finite(xy$x)])
  if (is.null(ylim))
    ylim <- range(xy$y[is.finite(xy$y)])
  opar <- par(no.readonly=TRUE)
  on.exit(par(opar))
  plot.new()
  plot.window(xlim, ylim, ...)
  points(xy$x, xy$y, col=col, ...)
  if (axes) {
    axis(1)
    axis(2)
    box()
  }
  if (ann) 
    title(main=main, sub=sub, 
          xlab=xy$xlab, ylab=xy$ylab, ...)
}


