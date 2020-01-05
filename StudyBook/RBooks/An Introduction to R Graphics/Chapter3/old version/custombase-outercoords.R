pushViewport(viewport(layout=grid.layout(3, 1, 
  heights=unit(c(1, 1, 1), c("null", "cm", "null")))))

# First page
pushViewport(viewport(layout.pos.row=3, 
  layout=grid.layout(3, 4, 
    widths=unit(c(2.5, 1, 1, 1), c("cm", "null", "null", "cm")),
    heights=unit(c(1, 1, 2.5), c("cm", "null", "cm")))))
grid.rect(gp=gpar(col="black"))
for (i in 2) {
  for (j in 2:3) {
    pushViewport(viewport(layout.pos.col=j, layout.pos.row=i))
    grid.rect(gp=gpar(col="grey"))
      pushViewport(plotViewport(c(2, 2, 1, 1), xscale=c(0, 11),
        gp=gpar(col="grey")))
      grid.rect(gp=gpar(col="grey"))
      grid.text(paste("Plot", j - 1))
      popViewport()      
    popViewport()
  }
}
pushViewport(viewport(layout.pos.row=2, layout.pos.col=1))
grid.rect(gp=gpar(col="grey", fill="light grey"))
grid.text("Outer\nMargin\n2")
grid.lines(c(1, 1), c(0, 1))
grid.segments(c(1, 1), c(0, 1), 
              unit(1, "npc") + unit(c(.5, .5), "lines"),
              c(0, 1))
grid.text(0:1, 
          unit(1, "npc") + unit(c(1, 1), "lines"),
	  c(0, 1))
grid.lines(unit(1, "npc") - unit(c(0, 3), "lines"), c(0, 0))
grid.segments(unit(1, "npc") - unit(c(0, 3), "lines"), 
	      c(0, 0), 
              unit(1, "npc") - unit(c(0, 3), "lines"), 
	      unit(c(-.5, -.5), "lines"))
grid.text(c("0 lines", "3 lines"),
          unit(1, "npc") - unit(c(0, 3), "lines"),
          unit(c(-1, -1), "lines"))
popViewport(2)

# Second page
pushViewport(viewport(layout.pos.row=1, 
  layout=grid.layout(3, 4, 
    widths=unit(c(2.5, 1, 1, 1), c("cm", "null", "null", "cm")),
    heights=unit(c(1, 1, 2.5), c("cm", "null", "cm")))))
grid.rect(gp=gpar(col="black"))
for (i in 2) {
  for (j in 2:3) {
    pushViewport(viewport(layout.pos.col=j, layout.pos.row=i))
    grid.rect(gp=gpar(col="grey"))
      pushViewport(plotViewport(c(2, 2, 1, 1), xscale=c(0, 11),
        gp=gpar(col="grey")))
      grid.rect(gp=gpar(col="grey"))
      grid.text(paste("Plot", j - 1))
      popViewport()      
    popViewport()
  }
}
pushViewport(viewport(layout.pos.row=3, layout.pos.col=2:3))
grid.rect(gp=gpar(col="grey", fill="light grey"))
grid.text("Outer Margin 1")
grid.lines(c(0, 1), c(1, 1))
grid.segments(c(0, 1), 
              unit(c(1, 1), "npc"),
	      c(0, 1),
              unit(c(1, 1), "npc") + unit(.5, "lines"))
grid.rect(c(0, 1), 
	  unit(c(1, 1), "npc") + unit(1, "lines"),
	  unit(c(1, 1), "strwidth", list("0", "1")),
	  unit(c(1, 1), "strheight", list("0", "1")),
	  gp=gpar(col=NULL, fill="white"))
grid.text(c(0, 1), 
          c(0, 1),
          unit(c(1, 1), "npc") + unit(1, "lines"))
grid.lines(c(0, 0), unit(1, "npc") - unit(c(1, 4), "lines"))
grid.segments(c(0, 0), 
              unit(1, "npc") - unit(c(1, 4), "lines"), 
	      unit(c(-.5, -.5), "lines"),
              unit(1, "npc") - unit(c(1, 4), "lines"))
grid.text(c("0 lines", "3 lines"),
          unit(c(-1, -1), "lines"),
	  unit(1, "npc") - unit(c(1, 4), "lines"),
          just="right")
popViewport(2)

popViewport()



