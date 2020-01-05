tg1 <- textGrob("Sample")
rg1 <- rectGrob(x=rep(0.5, 2),
                width=1.1*grobWidth(tg1), 
                height=1.3*grobHeight(tg1),
                gp=gpar(col=c("grey60", "white"), 
                        lwd=c(3, 1)))



pushViewport(viewport(layout=grid.layout(1, 7,
                                         heights=unit(1.25, "inches"),
                                         widths=unit(rep(c(1, 1.25), length=7),
                                                     rep(c("null", "inches"),
                                                           length=7)))))
pushViewport(viewport(layout.pos.col=2))
grid.rect(gp=gpar(col="grey"))
grid.draw(tg1)
grid.draw(rg1)

popViewport()
pushViewport(viewport(layout.pos.col=4))
grid.rect(gp=gpar(col="grey"))
pushViewport(viewport(gp=gpar(cex=2)))
grid.draw(tg1)
grid.draw(rg1)
popViewport()

popViewport()
pushViewport(viewport(layout.pos.col=6))
grid.rect(gp=gpar(col="grey"))
pushViewport(viewport(gp=gpar(cex=2)))
grid.draw(tg1)
popViewport()
grid.draw(rg1)

popViewport()
popViewport()



