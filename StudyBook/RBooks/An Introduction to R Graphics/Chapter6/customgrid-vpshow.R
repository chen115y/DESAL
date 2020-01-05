vp1 <- 
viewport(x=unit(0.4, "npc"), y=unit(1, "cm"),
         width=stringWidth("very very snug indeed"), 
         height=unit(6, "line"),
         just=c("left", "bottom"))

grid.show.viewport(scale.col="gray", border.fill="white", vp.col="black", vp.fill="gray", vp1)
grid.rect(gp=gpar(col="white", fill=NA, lwd=3))
pushViewport(viewport(.5, .5, .8, .8))
pushViewport(vp1)
grid.rect(gp=gpar(fill=NA))
grid.text("very very snug indeed", 
          gp=gpar(col="white"))
popViewport(2)



