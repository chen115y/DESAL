par(mfrow=c(2, 2), mar=c(2, 2, 1, 1), cex=0.6)
y <- rnorm(20)
plot(y, type="l", lwd=3)
plot(y, type="l", col="gray")
plot(y, type="l", lty="dashed")
plot(y, type="l", ylim=c(-4, 4))




