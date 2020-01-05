tg1 <- textGrob("Sample", name="tg1")
rg1 <- rectGrob(width=1.1*grobWidth("tg1"), 
                height=1.3*grobHeight("tg1"),
                gp=gpar(col="grey60", lwd=3))
rg2 <- rectGrob(width=1.1*grobWidth(tg1), 
                height=1.3*grobHeight(tg1),
                gp=gpar(col="white"))



pushViewport(viewport(gp=gpar(cex=1.5)))
grid.rect(gp=gpar(col="grey"))
grid.draw(tg1)
grid.draw(rg1)
grid.draw(rg2)

grid.edit("tg1", grep=TRUE, global=TRUE, 
          label="Different text")

popViewport()



