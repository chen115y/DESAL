par(mar=c(2, 1, 1, 1))
y1 <- rnorm(100)
y2 <- rnorm(100)

par(mfrow=c(2, 1), xpd=NA)

plot(y1, type="l", axes=FALSE,
     xlab="", ylab="", main="")
box(col="gray")
mtext("Left end of margin", adj=0, side=3)
lines(x=c(20, 20, 40, 40), y=c(-7, max(y1), max(y1), -7), 
      lwd=3, col="gray")

plot(y2, type="l", axes=FALSE,
     xlab="", ylab="", main="")
box(col="gray")
mtext("Right end of margin", adj=1, side=3)
mtext("Label below x=30", at=30, side=1)
lines(x=c(20, 20, 40, 40), y=c(7, min(y2), min(y2), 7), 
      lwd=3, col="gray")




