x <- -5:5
y <- -x^2 + 25
plottype <- function(type) {
  par(mar=c(1, 0, 1, 0), pty="s")
  plot.new()
  plot.window(c(-6, 6), c(-2, 27))
  box(col="gray")
  points(x, y, type=type)
  mtext(paste("type=\"", type, "\"", sep=""))
}



par(mfrow=c(3, 2))
plottype("p")
plottype("l")
plottype("b")
plottype("o")
plottype("h")
plottype("s")



