pushViewport(viewport(gp=gpar(fill=NA)))
vptop <- viewport(width=.9, height=.4, y=.75,
                  name="vptop")
vpbot <- viewport(width=.9, height=.4, y=.25,
                  name="vpbot")
pushViewport(vptop)
upViewport()
pushViewport(vpbot)
upViewport()

grid.rect(vp="vptop")
grid.lines(1:50/51, runif(50), vp="vptop")
grid.rect(vp="vpbot")
grid.lines(1:50/51, runif(50), vp="vpbot")

grid.null(x=.2, y=.95, vp="vptop", name="tl")
grid.null(x=.4, y=.95, vp="vptop", name="tr")
grid.null(x=.2, y=.05, vp="vpbot", name="bl")
grid.null(x=.4, y=.05, vp="vpbot", name="br")

grid.polygon(unit.c(grobX("tl", 0),
                    grobX("tr", 0),
                    grobX("br", 0),
                    grobX("bl", 0)),
             unit.c(grobY("tl", 0),
                    grobY("tr", 0),
                    grobY("br", 0),
                    grobY("bl", 0)),
             gp=gpar(col="gray", lwd=3))




