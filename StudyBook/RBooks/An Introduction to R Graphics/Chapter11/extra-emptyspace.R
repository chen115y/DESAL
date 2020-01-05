library(plotrix)




library(Hmisc)



par(mar=rep(1, 4))
x <- rnorm(20)
y <- rnorm(20)
plot(x, y, pch=16, col="gray")

xy <- emptyspace(x, y)
text(xy, label="largest\nempty\nregion")

xy2 <- largest.empty(x, y, 1, 1)
rect(xy2$x - .5, xy2$y - .5, 
     xy2$x + .5, xy2$y + .5)




