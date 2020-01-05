ncol <- 6
nrow <- 1
grid.rect(gp=gpar(col="gray"))
for (i in 1:nrow) {
  for (j in 1:ncol) {
    x <- unit(j/(ncol+1), "npc")
    y <- unit(i/(nrow + 1), "npc")
    pch <- (i - 1)*ncol + j - 1
    grid.points(x + unit(3, "mm"), y, 
      pch=pch, gp=gpar(fill="gray"))
    grid.text(pch, x - unit(3, "mm"), y, gp=gpar(col="gray"))
  }
}



