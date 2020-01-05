labels <- c("\"xaxis1\"\nxaxis gTree", "\"major\"\nlines grob", 
            "\"ticks\"\nlines grob", "\"labels\"\ntext grob")
names <- c("", "major", "ticks", "labels")
boxheight <- unit(2.5, "line")
boxwidth <- unit(1.2, "in")
pushViewport(viewport(layout=grid.layout(2, 3)))
pushViewport(viewport(layout.pos.row=1, layout.pos.col=2))
grid.text(labels[1])
grid.lines(unit(0.5, "npc") + unit.c(-0.5*boxwidth, 0.5*boxwidth),
           0.5, gp=gpar(col="gray"))
grid.roundrect(height=boxheight, 
               width=boxwidth, # 1.2*stringWidth(labels[1]),
               r=unit(2, "mm"),
               gp=gpar(fill=NA))
popViewport()
pushViewport(viewport(layout.pos.row=2, layout.pos.col=1))
grid.text(labels[2])
grid.lines(unit(0.5, "npc") + unit.c(-0.5*boxwidth, 0.5*boxwidth),
           0.5, gp=gpar(col="gray"))
grid.roundrect(height=boxheight, 
               width=boxwidth, # 1.2*stringWidth(labels[2]),
               r=unit(2, "mm"),
               gp=gpar(fill=NA))
popViewport()
pushViewport(viewport(layout.pos.row=2, layout.pos.col=2))
grid.text(labels[3])
grid.lines(unit(0.5, "npc") + unit.c(-0.5*boxwidth, 0.5*boxwidth),
           0.5, gp=gpar(col="gray"))
grid.roundrect(height=boxheight, 
               width=boxwidth, # 1.2*stringWidth(labels[3]),
               r=unit(2, "mm"),
               gp=gpar(fill=NA))
popViewport()
pushViewport(viewport(layout.pos.row=2, layout.pos.col=3))
grid.text(labels[4])
grid.lines(unit(0.5, "npc") + unit.c(-0.5*boxwidth, 0.5*boxwidth),
           0.5, gp=gpar(col="gray"))
grid.roundrect(height=boxheight, 
               width=boxwidth, # 1.2*stringWidth(labels[4]),
               r=unit(2, "mm"),
               gp=gpar(fill=NA))
popViewport()
pushViewport(viewport(layout.pos.row=1, layout.pos.col=2))
grid.move.to(x=0.5, y=unit(0.5, "npc") - 0.5*boxheight)
popViewport()
pushViewport(viewport(layout.pos.row=2, layout.pos.col=1))
grid.line.to(x=0.5, y=unit(0.5, "npc") + 0.5*boxheight,
             arrow=arrow(angle=10, length=unit(3, "mm")))
popViewport()
pushViewport(viewport(layout.pos.row=1, layout.pos.col=2))
grid.move.to(x=0.5, y=unit(0.5, "npc") - 0.5*boxheight)
popViewport()
pushViewport(viewport(layout.pos.row=2, layout.pos.col=2))
grid.line.to(x=0.5, y=unit(0.5, "npc") + 0.5*boxheight,
             arrow=arrow(angle=10, length=unit(3, "mm")))
popViewport()
pushViewport(viewport(layout.pos.row=1, layout.pos.col=2))
grid.move.to(x=0.5, y=unit(0.5, "npc") - 0.5*boxheight)
popViewport()
pushViewport(viewport(layout.pos.row=2, layout.pos.col=3))
grid.line.to(x=0.5, y=unit(0.5, "npc") + 0.5*boxheight,
             arrow=arrow(angle=10, length=unit(3, "mm")))
popViewport()



