grid.rect(gp=gpar(col="gray"))
pushViewport(viewport(gp=gpar(col="gray")))
grid.text("very snug", 0.4, unit(1, "in"), just=c("left", "bottom"))
grid.lines(x=0.4, y=unit(0:1, "in"), arrow=arrow(ends="both",
                                       length=unit(1, "mm")))
grid.text("1 inch", unit(0.4, "npc") + unit(0.5, "line"), 
  unit(0.5, "in"), rot=90)
grid.lines(x=c(0, 0.4), y=unit(1, "in"), arrow=arrow(ends="both",
                                           length=unit(1, "mm")))
grid.text(unit(0.4, "npc"), 0.2, unit(1, "in") + unit(0.5, "line"))
popViewport()
pushViewport(viewport(gp=gpar(fill=NA)))
grid.rect(x=unit(0.4, "npc"), y=unit(1, "in"),
          width=stringWidth("very snug"), 
          height=unit(1, "line"),
          just=c("left", "bottom"))




