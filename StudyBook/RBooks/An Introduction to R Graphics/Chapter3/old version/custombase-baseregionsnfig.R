par(oma=rep(3, 4), mfrow=c(3,2), bg="grey80")
for (i in 1:6) {
    if (i == 3) {
      omar <- par(mar=c(2, 2, 2, 1))  
      plot(c(0, 1), c(0, 1), type="n", ann=FALSE, axes=FALSE)
      par(xpd=TRUE)
      rect(-1, -1, 2, 2, col="grey90")
      box("figure")
      par(xpd=FALSE)
      rect(-1, -1, 2, 2, col="grey80")
      box("plot", lty="dashed")
      text(.5, .5, "Current Plot Region", cex=1.5)
      mtext("Current Figure Region", side=3)
      par(omar)
    } else {
      omar <- par(mar=rep(0, 4))  
      plot(c(0, 1), c(0, 1), type="n", ann=FALSE, axes=FALSE)
      par(xpd=TRUE)
      rect(-1, -1, 2, 2, col="grey90")
      box("figure")
      text(.5, .5, paste("Figure", i), cex=1.5)
      par(omar)
    }
}
box("outer", col="grey")
for (i in 1:4)
    mtext(paste("Outer margin", i), side=i, line=1, outer=TRUE)



