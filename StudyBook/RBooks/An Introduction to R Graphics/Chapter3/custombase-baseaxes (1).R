par(cex=0.8)
x <- 1:2
y <- runif(2, 0, 100)
par(mar=c(4, 4, 2, 4))
plot(x, y, type="n", xlim=c(0.5, 2.5), ylim=c(-10, 110),
     axes=FALSE, ann=FALSE)

axis(2, at=seq(0, 100, 20))
mtext("Temperature (Centigrade)", side=2, line=3)

axis(1, at=1:2, labels=c("Treatment 1", "Treatment 2"))
axis(4, at=seq(0, 100, 20), labels=seq(0, 100, 20)*9/5 + 32)
mtext("Temperature (Fahrenheit)", side=4, line=3)
box()

segments(x, 0, x, 100, lwd=20)
segments(x, 0, x, 100, lwd=16, col="white")
segments(x, 0, x, y, lwd=16, col="gray")




