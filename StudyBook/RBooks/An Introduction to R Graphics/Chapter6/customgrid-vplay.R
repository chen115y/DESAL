labelvp <- function(name, col="gray", tcol="white", clipOff=TRUE) {
  seekViewport(name)
  if (clipOff)
    pushViewport(viewport(clip="off"))
  grid.rect(gp=gpar(col=col, lwd=5, fill=NA))
  grid.rect(x=0, y=1, width=unit(1, "strwidth", name) + unit(2, "mm"),
    height=unit(1, "line"), just=c("left", "top"),
    gp=gpar(fill=col, col=NA))
  grid.text(name, x=unit(1, "mm"), y=unit(1, "npc") - unit(1, "mm"),
    just=c("left", "top"), gp=gpar(col=tcol))
  upViewport(0)
}



vplay <- grid.layout(3, 3, 
                     respect=rbind(c(0, 0, 0), 
                                   c(0, 1, 0), 
                                   c(0, 0, 0)))



pushViewport(viewport(width=0.95, height=0.95))
grid.rect(gp=gpar(col="light gray"))
pushViewport(viewport(layout=vplay))

pushViewport(viewport(layout.pos.col=2, name="col2"))
upViewport()
pushViewport(viewport(layout.pos.row=2, name="row2"))

labelvp("col2", "black")
labelvp("row2")



