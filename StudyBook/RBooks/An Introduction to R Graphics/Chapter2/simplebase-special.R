par(cex=.5)
plot(function(x) { 
         sin(x)/x 
     }, 
     from=-10*pi, to=10*pi, 
     xlab="", ylab="", n=500)




par(mfrow=c(1, 2))
par(mar=c(7, 0, 3, 1))
par(mex=0.7)

hc <- hclust(dist(USArrests), "ave")
dend1 <- as.dendrogram(hc)
dend2 <- cut(dend1, h=70)
par(cex=0.7)
par(mar=c(1, 0, 2, 8))
#  dend2$lower is *NOT* a dendrogram, but a list of .. :
plot(dend2$lower[[3]], 
  horiz = TRUE, type = "tr", axes=FALSE, cex=0.8)
par(mar=c(8, 0, 2, 0))
# "inner" and "leaf" edges in different type & color :
plot(dend2$lower[[2]], 
     edgePar = list(col=c("black", "gray")), edge.root=TRUE, 
     axes=FALSE, cex=0.8)



