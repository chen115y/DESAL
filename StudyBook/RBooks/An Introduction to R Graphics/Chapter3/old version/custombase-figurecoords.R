pushViewport(viewport(layout=grid.layout(3, 1, 
  heights=unit(rep(1, 3), c("null", "cm", "null")))))
pushViewport(viewport(layout.pos.row=1))
grid.rect()
pushViewport(plotViewport(c(5, 5, 3, 2), xscale=c(0, 11)))
grid.rect(gp=gpar(col="grey"))
grid.text("Current Plot", gp=gpar(col="grey"))
grid.rect(0, unit(-5, "lines"), 1, unit(5, "lines"),
          just=c("left", "bottom"), gp=gpar(col="grey", fill="light grey"))
grid.text("Figure\nMargin\n1", y=unit(-2.5, "lines"))
grid.lines(c(0, 1), c(0, 0))
grid.segments(c(0, 1), c(0, 0), c(0, 1), unit(c(.5, .5), "lines"))
grid.text(c("xmin", "xmax"), c(0, 1), unit(c(1, 1), "lines"))
grid.lines(c(0, 0), unit(c(-1, -4), "lines"))
grid.segments(c(0, 0), unit(c(-1, -4), "lines"), 
              unit(c(-.5, -.5), "lines"), unit(c(-1, -4), "lines"))
grid.text(c("0 lines", "3 lines"),
          unit(c(-1, -1), "lines"), unit(c(-1, -4), "lines"),
          just="right")
popViewport(2)
pushViewport(viewport(layout.pos.row=3))
grid.rect()
pushViewport(plotViewport(c(5, 5, 3, 2), yscale=c(0, 11)))
grid.rect(gp=gpar(col="grey"))
grid.text("Current Plot", gp=gpar(col="grey"))
grid.rect(unit(-5, "lines"), 0, unit(5, "lines"), 1,
          just=c("left", "bottom"), gp=gpar(col="grey", fill="light grey"))
grid.text("Figure\nMargin\n2", x=unit(-2.5, "lines"))
grid.lines(c(0, 0), c(0, 1))
grid.segments(c(0, 0), c(0, 1), unit(c(.5, .5), "lines"), c(0, 1))
grid.text(c("ymin", "ymax"), unit(c(1, 1), "lines"), c(0, 1), just="left")
grid.lines(unit(c(0, -3), "lines"), c(0, 0))
grid.segments(unit(c(0, -3), "lines"), c(0, 0), 
              unit(c(0, -3), "lines"), unit(c(-.5, -.5), "lines"))
grid.text(c("0 lines", "3 lines"),
          unit(c(0, -3), "lines"), unit(c(-1, -1), "lines"))
popViewport(2)
popViewport()



