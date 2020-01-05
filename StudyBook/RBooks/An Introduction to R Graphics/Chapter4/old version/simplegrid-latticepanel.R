trellis.par.set(theme = canonical.theme("postscript", col=FALSE))
myPanel <- function(x, y, subscripts, ...) {
  panel.xyplot(x, y, ...)
  ltext(x - 1, y + 1, letters[subscripts], cex=0.5)
}

myStrip <- function(which.panel, ...) {
  font <- rep(1, 2)
  font[which.panel] <- 2
  col=rep("grey", 2)
  col[which.panel] <- "black"
  llines(c(0, 1, 1, 0, 0), c(0, 0, 1, 1, 0))
  ltext(c(0.33, 0.66), rep(0.5, 2), 1:2, 
        font=font, col=col)
}

myPrePanel <- function(x, y, ...) {
  list(xlim=c(min(x) - 1, max(x) + 1),
       ylim=c(min(y) - 1, max(y) + 1))
}

X <- 1:20
Y <- 1:20
G <- factor(rep(1:2, 10))

print(
xyplot(X ~ Y | G, aspect=1, layout=c(1, 2),
       panel=myPanel, strip=myStrip,
       prepanel=myPrePanel)

)



