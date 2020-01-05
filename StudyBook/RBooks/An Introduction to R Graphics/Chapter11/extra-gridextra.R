library(gridExtra)



grid.ellipse(x=1:6/7, y=rep(.8, 6), size=.1, 
             default.units="npc", size.unit="npc", 
             ar=1:6, angle=1:6*15/180*pi)
grid.text("grid.ellipse", y=.7)
grid.pattern(x=1:6/7, y=.5, width=unit(.1, "npc"),
             height=unit(.1, "npc"), pattern=1:6,
             motif.cex=.7, gp=gpar(fill="gray80"))

grid.text("grid.pattern", y=.4)
grid.barbed(1:6/7, y=rep(c(.15, .25), 3), 
            size=unit(.05, "snpc"), 
            pch=21, gp=gpar(fill="gray"))

grid.text("grid.barbed", y=.1)
grid.rect(gp=gpar(col="gray", fill=NA))



