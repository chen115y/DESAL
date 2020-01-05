par(mfrow=c(1, 2), mar=c(1, 1, 2, 1), pty="s")
par(cex=0.7)
x <- runif(20, 1, 10)
y <- x + rnorm(20)
plot(x, y, ann=FALSE, axes=FALSE, col="gray", pch=16)
box(col="gray")

lmfit <- lm(y ~ x)
abline(lmfit)
arrows(5, 8, 7, predict(lmfit, data.frame(x=7)),
       length=0.1)
text(5, 8, "Line of best fit", pos=2)

mtext("abline() & arrows()", side=3, line=0.5)
y <- rnorm(50)
hist(y, main="", xlab="", ylab="", axes=FALSE, 
     border="gray", col="light gray")
box(col="gray")
rug(y, ticksize=0.02)

mtext("rug()", side=3, line=0.5)



