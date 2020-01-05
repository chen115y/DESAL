xx <- c(1:50)
yy <- rnorm(50)
n <- 50
hline <- 0



xx <- c(1:50)
yy <- rnorm(50)
n <- 50
hline <- 0

par(mfrow=c(2,2), mar=c(3, 3, 1, 1))
plot (yy ~ xx, type="n", axes=FALSE, ann=FALSE)
polygon(c(xx[1], xx, xx[n]), c(min(yy), yy, min(yy)), 
        col="gray", border=NA)

box(col="gray")
plot (yy ~ xx, type="n", axes=FALSE, ann=FALSE)
polygon(c(xx[1], xx, xx[n]), c(min(yy), yy, min(yy)), 
        col="gray", border=NA)

usr <- par("usr")
rect(usr[1], usr[3], usr[2], hline, col="white", border=NA)

box(col="gray")
plot (yy ~ xx, type="n", axes=FALSE, ann=FALSE)
polygon(c(xx[1], xx, xx[n]), c(min(yy), yy, min(yy)), 
        col="gray", border=NA)

usr <- par("usr")
rect(usr[1], usr[3], usr[2], hline, col="white", border=NA)

lines(xx, yy)

box(col="gray")
plot (yy ~ xx, type="n", axes=FALSE, ann=FALSE)
polygon(c(xx[1], xx, xx[n]), c(min(yy), yy, min(yy)), 
        col="gray", border=NA)

usr <- par("usr")
rect(usr[1], usr[3], usr[2], hline, col="white", border=NA)

lines(xx, yy)

abline (h=hline,col="gray")
box()
axis(1)
axis(2) 




