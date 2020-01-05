
n <- 7
primtest2 <- function(nas, na) {
  angle <- seq(0, 2*pi, length=n+1)[-(n+1)]
  y <- 0.5 + 0.4*sin(angle)
  x <- 0.5 + 0.4*cos(angle)
  if (any(nas))
    grid.text(paste("NA", (1:n)[nas], sep=""),
              x[nas], y[nas], gp=gpar(col="grey"))
  x[nas] <- na
  y[nas] <- na
  grid.polygon(x, y, gp=gpar(fill="light grey", col=NA))
  grid.arrows(grob=linesGrob(x, y),
              gp=gpar(lwd=5))
  grid.move.to(x[1], y[1])
  for (i in 2:n) {
    grid.line.to(x[i], y[i], gp=gpar(col="white"))
  }
}
celltest <- function(r, c, nas, na) {
  pushViewport(viewport(layout.pos.col=c,
                        layout.pos.row=r))
  primtest2(nas, na)
  grid.rect(width=0.9, height=0.9, gp=gpar(col="grey"))
  popViewport()
}
cellnas <- function(i) {
  temp <- rep(FALSE, n)
  temp[i] <- TRUE
  temp[n-3+i] <- TRUE
  temp
}
pushViewport(viewport(width=.8, height=.8, 
                      layout=grid.layout(2, 2),
                      gp=gpar(cex=0.7)))
celltest(1, 1, rep(FALSE, n), NA)
celltest(1, 2, cellnas(1), NA)
celltest(2, 1, cellnas(2), NA)
celltest(2, 2, cellnas(3), NA)
popViewport()



