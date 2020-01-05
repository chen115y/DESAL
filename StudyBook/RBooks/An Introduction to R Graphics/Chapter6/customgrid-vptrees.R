circText <- function(lab, x, y, suffix) {
    grid.circle(x, y, r=unit(3, "mm"), 
                name=paste(lab, suffix, sep="-"))
    grid.text(lab, x, y,
              gp=if (lab == "ROOT") gpar(cex=.7) else NULL)
}
edge <- function(a, b, angle) {
    grid.segments(grobX(a, angle), grobY(a, angle),
                  grobX(b, 180 + angle), grobY(b, 180 + angle),
                  arrow=arrow(length=unit(2, "mm"),
                    type="closed"),
                  gp=gpar(fill="black"))
}
grid.newpage()
pushViewport(viewport(width=.9, height=.9,
                      layout=grid.layout(2, 2),
                      gp=gpar(cex=.5)))
pushViewport(viewport(layout.pos.col=1, 
                      layout.pos.row=1))
grid.rect(width=.9, height=.9, gp=gpar(col="gray"))
circText("ROOT", .5, .8, 1)
circText("A", .3, .6, 1)
circText("B", .5, .6, 1)
circText("C", .7, .6, 1)
edge("ROOT-1", "A-1", 225)
edge("ROOT-1", "B-1", 270)
edge("ROOT-1", "C-1", 315)
popViewport()
pushViewport(viewport(layout.pos.col=2, 
                      layout.pos.row=1))
grid.rect(width=.9, height=.9, gp=gpar(col="gray"))
circText("ROOT", .5, .8, 2)
circText("A", .5, .6, 2)
circText("B", .5, .4, 2)
circText("C", .5, .2, 2)
edge("ROOT-2", "A-2", 270)
edge("A-2", "B-2", 270)
edge("B-2", "C-2", 270)
popViewport()
pushViewport(viewport(layout.pos.col=1, 
                      layout.pos.row=2))
grid.rect(width=.9, height=.9, gp=gpar(col="gray"))
circText("ROOT", .5, .8, 3)
circText("A", .5, .6, 3)
circText("B", .4, .4, 3)
circText("C", .6, .4, 3)
edge("ROOT-3", "A-3", 270)
edge("A-3", "B-3", 244)
edge("A-3", "C-3", 296)
popViewport()



