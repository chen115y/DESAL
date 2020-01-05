grid.rect(gp=gpar(col="grey"))
grid.text("top-left corner", x=unit(1, "mm"),
          y=unit(1, "npc") - unit(1, "mm"), 
          just=c("left", "top"))
pushViewport(viewport(width=0.8, height=0.5, angle=10, 
             name="vp1"))
grid.rect()
grid.text("top-left corner", x=unit(1, "mm"),
          y=unit(1, "npc") - unit(1, "mm"), 
          just=c("left", "top"))

pushViewport(viewport(width=0.8, height=0.5, angle=10, 
             name="vp2"))
grid.rect()
grid.text("top-left corner", x=unit(1, "mm"),
          y=unit(1, "npc") - unit(1, "mm"), 
          just=c("left", "top"))

popViewport()
grid.text("bottom-right corner", 
          x=unit(1, "npc") - unit(1, "mm"),
          y=unit(1, "mm"), just=c("right", "bottom"))




