x <- runif(10)
y <- rnorm(10)



library(plotrix)




library(TeachingDemos)



library(maptools)



library(Hmisc)



par(mar=c(1, 1, 2, 1))
plot(x, y, pch=21, bg="gray", ylim=c(-3, 3), asp=1)
spread.labels(x, y, labels=1:10)

mtext("spread.labels", side=3, line=0)



par(mar=c(1, 1, 2, 1))
plot(x, y, pch=21, bg="gray",  
     ylim=c(-2, 3), xlim=c(-.5, 1.5))
thigmophobe.labels(x, y, labels=1:10)

mtext("thigmophobe.labels", side=3, line=0)



par(mar=c(1, 1, 2, 1))
plot(x, y, pch=21, bg="gray", ylim=c(-3, 3), asp=1)
adjy <- spread.labs(y, strheight("10", cex=1.5))
text(-0.5, adjy, labels=1:10, pos=2)
segments(-0.5, adjy, x, y)

mtext("spread.labs", side=3, line=0)



par(mar=c(1, 1, 2, 1))
plot(x, y, pch=16, col="gray", ylim=c(-2, 3), xlim=c(-.5, 1.5))
pointLabel(x, y, labels=as.character(1:10))

mtext("pointLabel", side=3, line=0)



par(mar=c(1, 1, 2, 1))
sx <- sort(x)
sy <- sort(y)
lines <- list(A=list(x=sx, y=y, lty=1), 
              B=list(x=sx, y=sy, lty=2),
              C=list(x=sx, y=rev(y), lty=3), 
              D=list(x=sx, y=rev(sy), lty=4))

plot(x, y, type="n", ylim=c(-3, 3))
lapply(lines, function(l) do.call("lines", l))
labcurve(lines)

mtext("labcurve", side=3, line=0)


