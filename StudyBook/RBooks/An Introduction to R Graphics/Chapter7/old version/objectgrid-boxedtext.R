tg <- textGrob("sample text")
rg <- rectGrob(width=1.1*grobWidth(tg), 
               height=1.3*grobHeight(tg))
boxedText <- gTree(children=gList(tg, rg))



pushViewport(viewport(layout=grid.layout(1, 7,
                                         heights=unit(1.25, "inches"),
                                         widths=unit(rep(c(1, 1.25), length=7),
                                                     rep(c("null", "inches"),
                                                           length=7)))))
pushViewport(viewport(layout.pos.col=2))
grid.rect(gp=gpar(col="grey"))
grid.draw(boxedText)

popViewport()
pushViewport(viewport(layout.pos.col=4))
grid.rect(gp=gpar(col="grey"))
grid.draw(editGrob(boxedText, gp=gpar(col="grey")))

popViewport()
pushViewport(viewport(layout.pos.col=6))
grid.rect(gp=gpar(col="grey"))
grid.draw(editGrob(boxedText, vp=viewport(angle=45),
                   gp=gpar(fontsize=18)))
              
popViewport()
popViewport()
                             


