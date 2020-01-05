x <- c(.3, .7, .3)
y <- c(.2, .5, .8)
grid.rect(gp=gpar(col="gray"))
grid.lines(x, y, gp=gpar(lwd=40, lineend="square",
                   linejoin="mitre", col="black"))
grid.lines(x, y, gp=gpar(lwd=40, col="gray50"))
                   # lineend="round", linejoin="round"
grid.lines(x, y, gp=gpar(lwd=40, lineend="butt",
                   linejoin="bevel", col="gray80"))
grid.points(x, y, default.units="npc", pch=16, gp=gpar(cex=0.5))




