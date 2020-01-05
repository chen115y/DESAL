grid.lshow <- function(i, j, lab, order, nrow, ncol, heights, respect) {
  pushViewport(viewport(layout.pos.col=j, layout.pos.row=i))
  pushViewport(viewport(width=unit(1, "npc") - unit(2, "lines"),
               height=unit(1, "npc") - unit(3, "lines"),
	       y=unit(3, "lines"), just="bottom", 
    layout=grid.layout(nrow, ncol, heights=heights, 
      respect=respect)))
  grid.rect(gp=gpar(col="grey"))
  for (i in 1:nrow) {
    for (j in 1:ncol) {
      pushViewport(viewport(layout.pos.row=i, layout.pos.col=j))
      grid.rect()
      grid.text(order[i, j])
      popViewport()
    }
  }
  popViewport()
  grid.text(lab, y=unit(2, "lines"))
  popViewport()
}
pushViewport(viewport(layout=grid.layout(2, 2)))
grid.lshow(1, 1, "(a)", cbind(c(1, 3, 5), c(2, 4, 6)), 3, 2, rep(1, 3), 
  FALSE)
grid.lshow(1, 2, "(b)", cbind(c(6, 4, 2), c(5, 3, 1)), 3, 2, rep(1, 3), 
  FALSE)
grid.lshow(2, 1, "(c)", matrix(c(1, 2), ncol=1), 2, 1, c(2, 1), FALSE)
grid.lshow(2, 2, "(d)", matrix(c(1, 2), ncol=1), 2, 1, c(2, 1), TRUE)
popViewport()



