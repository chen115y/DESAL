par(mar=rep(0, 4), xaxs="i", yaxs="i", cex=0.8)
plot.new()
par(new=TRUE)
grid.rect(gp=gpar(col="grey"))
ncol <- 4
nrow <- 4
xadj <- c(1, 0.5, NA, 0)
yadj <- c(1, 0.5, NA, 0)
size <- unit(3, "mm")
for (i in 1:nrow) {
  for (j in 1:ncol) {
    x <- i/(nrow + 1)
    y <- j/(ncol + 1)
    xu <- unit(x, "npc")
    yu <- unit(y, "npc")
    grid.segments(unit.c(xu - size, xu),
                  unit.c(yu, yu - size),
                  unit.c(xu + size, xu),
                  unit.c(yu, yu + size),
		  gp=gpar(col="grey"))
    text(x, y, paste("c(", xadj[j], ", ", yadj[i], ")", sep=""),
         adj=c(xadj[j], yadj[i]))
  }
}



