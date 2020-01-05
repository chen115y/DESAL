grid.lshow <- function(i, j, lab, locs, nrow, ncol, heights, respect) {
  pushViewport(viewport(layout.pos.col=j, layout.pos.row=i))
  pushViewport(viewport(width=unit(1, "npc") - unit(2, "lines"),
               height=unit(1, "npc") - unit(3, "lines"),
	       y=unit(3, "lines"), just="bottom", 
    layout=grid.layout(nrow, ncol, heights=heights, 
      respect=respect)))
  grid.rect(gp=gpar(col="grey"))
  for (i in locs) {
      pushViewport(viewport(layout.pos.row=i$rows, layout.pos.col=i$cols))
      grid.rect()
      grid.text(i$lab)
      popViewport()
  }
  popViewport()
  grid.text(lab, y=unit(2, "lines"))
  popViewport()
}
pushViewport(viewport(layout=grid.layout(2, 2)))
grid.lshow(1, 1, "(a)", 
  list(
    list(rows=1, cols=1, lab=1),
    list(rows=3, cols=1, lab=2)),
  3, 1,
  unit(c(2, 0.5, 1), c("null", "cm", "null")), 
  TRUE)
grid.lshow(1, 2, "(b)", 
  list(
    list(rows=1, cols=1, lab=1),
    list(rows=3, cols=1:2, lab=2),
    list(rows=1, cols=2, lab=3)), 
  3, 2,
  unit(c(2, 0.5, 1), c("null", "cm", "null")), 
  TRUE)
grid.lshow(2, 1, "(c)", 
  list(
    list(rows=1, cols=1, lab=1),
    list(rows=3, cols=1:2, lab=2),
    list(rows=1, cols=2, lab=3)), 
  3, 2,
  unit(c(2, 0.5, 1), c("null", "cm", "null")), 
  cbind(c(0, 0, 1), c(0, 0, 0)))
popViewport()



