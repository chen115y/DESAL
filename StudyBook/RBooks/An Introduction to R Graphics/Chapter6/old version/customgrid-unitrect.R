grid.rect(gp=gpar(col="grey"))
pushViewport(viewport(gp=gpar(col="grey")))
grid.text("very snug", 0.4, unit(1, "inches"), just=c("left", "bottom"))
grid.arrows(x=0.4, y=unit(0:1, "inches"), ends="both",
  length=unit(1, "mm"))
grid.text("1 inch", unit(0.4, "npc") + unit(0.5, "lines"), 
  unit(0.5, "inches"), rot=90)
grid.arrows(x=c(0, 0.4), y=unit(1, "inches"), ends="both",
  length=unit(1, "mm"))
grid.text(unit(0.4, "npc"), 0.2, unit(1, "inches") + unit(0.5, "lines"))
popViewport()
grid.rect(x=unit(0.4, "npc"), y=unit(1, "inches"),
          width=stringWidth("very snug"), 
          height=unit(1, "lines"),
          just=c("left", "bottom"))




