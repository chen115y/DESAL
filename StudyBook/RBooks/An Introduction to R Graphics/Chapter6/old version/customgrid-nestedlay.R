gridfun <- function() {
  pushViewport(viewport(layout=grid.layout(1, 2)))
  pushViewport(viewport(layout.pos.col=1))
  grid.rect()
  grid.text("black")
  grid.text("&", x=1)
  popViewport()
  pushViewport(viewport(layout.pos.col=2, clip="on"))
  grid.rect(gp=gpar(fill="black"))
  grid.text("white", gp=gpar(col="white"))
  grid.text("&", x=0, gp=gpar(col="white"))
  popViewport(2)
}



grid.rect(gp=gpar(col="grey"))
w <- unit(1, "npc") - unit(15, "mm")
x <- unit.c(unit(5, "mm"),
            unit(5, "mm") + 1/3*w,
            unit(5, "mm") + 1/3*w + unit(5, "mm"),
	    unit(1, "npc") - unit(5, "mm"))
y <- unit.c(unit(5, "mm"),
            unit(5, "mm") + 2/3*w,
            unit(5, "mm") + 2/3*w + unit(5, "mm"),
	    unit(1, "npc") - unit(5, "mm"))
grid.segments(x, 0, x, 1,
  gp=gpar(col="grey", lty="dashed"))
grid.segments(0, y, 1, y,
  gp=gpar(col="grey", lty="dashed"))
pushViewport(
  viewport(
    layout=grid.layout(5, 5, 
                       widths=unit(c(5, 1, 5, 2, 5),
                                   c("mm", "null", "mm",
                                     "null", "mm")),  
                       heights=unit(c(5, 1, 5, 2, 5),
                                    c("mm", "null", "mm",
                                      "null", "mm")))))
pushViewport(viewport(layout.pos.col=2, layout.pos.row=2))
gridfun()
popViewport()
pushViewport(viewport(layout.pos.col=4, layout.pos.row=4))
gridfun()
popViewport(2)




