# Awful way to position multiple plots here (using oma)
# Won't lay things out nicely on different sized device or
# different output format (i.e. where line heights differ)
par(cex=0.6)
pairs(iris[1:4], oma=c(18, 4, 4, 4), 
      panel=function(x, y, ...) {
	      points(x, y, lwd=0.1,
              pch = ".") }) 
par(cex=1)

par(new=TRUE)
par(omi=c(0, 0, 4.7, 0), mfrow=c(1, 2), mfg=c(1, 1), xpd=NA)
par(mar=c(1, 1, 0, 1))
palette(grey(0.5 + 1:8/24))
stars(mtcars[1:8, 1:7], len = 0.8, cex=0.5,
      draw.segments = TRUE, xpd=NA)

par(mar=c(0, 1, 1, 1))
# Terrible hack to add empty lines to data set names
# to try to get labelling right in small size
dm <- dimnames(Titanic)
dm$Sex <- c("Male\n\n", "Female\n\n")
dm$Survived <- c("No\n", "Yes\n")
dm$Age <- c("Child\n", "Adult\n")
dimnames(Titanic) <- dm
mosaicplot(~ Sex + Age + Survived, data = Titanic, off=rep(5, 3),
           ylab="", main="", 
           color = c("light grey", "dark grey"))



