x <- c(.3, .7, .3)
y <- c(.2, .5, .8)
grid.rect(gp=gpar(col="grey"))
grid.lines(x, y, gp=gpar(lwd=40, lineend="square",
                   linejoin="mitre", col="black"))
grid.lines(x, y, gp=gpar(lwd=40, col="grey50"))
                   # lineend="round", linejoin="round"
grid.lines(x, y, gp=gpar(lwd=40, lineend="butt",
                   linejoin="bevel", col="grey80"))
grid.points(x, y, default="npc", pch=16, gp=gpar(cex=0.5))




