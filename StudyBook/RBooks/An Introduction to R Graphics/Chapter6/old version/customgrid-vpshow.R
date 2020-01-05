vp1 <- 
viewport(x=unit(0.4, "npc"), y=unit(1, "cm"),
         width=stringWidth("very very snug indeed"), 
         height=unit(6, "lines"),
         just=c("left", "bottom"))

grid.show.viewport(scale.col="grey", border.fill="white", vp.col="black", vp.fill="grey", vp1, newpage=FALSE)
pushViewport(viewport(.5, .5, .8, .8))
pushViewport(vp1)
grid.rect()
grid.text("very very snug indeed", 
          gp=gpar(col="white"))
popViewport(2)



