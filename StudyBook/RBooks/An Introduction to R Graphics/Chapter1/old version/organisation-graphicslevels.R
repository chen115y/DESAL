
#
# Comment:
#
# Makes use of the roundRect grob defined in the RGraphics package
#

require(RGraphics)

label <- function(label, row, col, title=FALSE, box=TRUE, tcol="black",
                  fill=NA, lwd=1) {
  if (title) {
    face <- "bold"
    cex <- 0.8
  } else {
    face <- "plain"
    cex <- 0.8
  }
  pushViewport(viewport(layout.pos.row=row,
                         layout.pos.col=col))
  if (box)
    grid.roundRect(w=unit(0.82, "inches"), h=unit(1.2, "lines"),
                   r=unit(0.2, "snpc"), 
                   gp=gpar(col=tcol, lwd=lwd, fill=fill))
  grid.text(label, gp=gpar(fontface=face, cex=cex, col=tcol))
  popViewport()
}

arrow <- function(row1, col1, row2, col2, col="black") {
  pushViewport(viewport(layout.pos.row=row1,
                         layout.pos.col=col1))
  grid.move.to(x=0.5, y=unit(0.5, "npc") - unit(0.6, "lines"))
  popViewport()
  pushViewport(viewport(layout.pos.row=row2,
                         layout.pos.col=col2))
  grid.arrows(grob=lineToGrob(x=0.5,
                y=unit(0.5, "npc") + unit(0.6, "lines")),
              angle=10, type="closed", 
              length=unit(0.15, "inches"), gp=gpar(col=col, fill=col))
  popViewport()
} 

pushViewport(viewport(width=unit(4.9, "inches"),
                      layout=grid.layout(7, 5,
                         heights=unit(c(3,.7,3,.7,2,.7,3),
                           c("lines", "inches",
                             "lines", "inches",
                             "lines", "inches",
                             "lines")))
                       ))

pushViewport(viewport(layout.pos.row=1,
                       layout.pos.col=2:5))
grid.roundRect(gp=gpar(lty="dashed"), r=unit(0.1, "snpc"))
popViewport()

label("Graphics\nPackages", 1, 1, title=TRUE, box=FALSE)
label("lattice", 1, 4, lwd=3, fill="grey80")
label("...", 1, 5)
label("maps", 1, 2)
label("...", 1, 3)
arrow(1, 2, 3, 3)
arrow(1, 3, 3, 3)
arrow(1, 4, 3, 4)
arrow(1, 5, 3, 4)

pushViewport(viewport(layout.pos.row=3,
                       layout.pos.col=2:5))
grid.roundRect(gp=gpar(lty="dashed"), r=unit(0.1, "snpc"))
popViewport()

label("Graphics\nSystems", 3, 1, title=TRUE, box=FALSE)
label("graphics", 3, 3, lwd=3, fill="grey80")
label("grid", 3, 4, lwd=3, fill="grey80")
arrow(3, 3, 5, 3:4)
arrow(3, 4, 5, 3:4)

label("Graphics\nEngine\n&\nDevices", 5, 1, title=TRUE, box=FALSE)
label("grDevices", 5, 3:4, lwd=3, fill="grey80")
# arrow(5, 3:4, 7, 2)
# arrow(5, 3:4, 7, 3)
# arrow(5, 3:4, 7, 4)
# arrow(5, 3:4, 7, 5)

pushViewport(viewport(layout.pos.row=7,
                       layout.pos.col=2:5))
grid.roundRect(gp=gpar(lty="dashed"), r=unit(0.1, "snpc"))
popViewport()

label("Graphics\nDevice\nPackages", 7, 1, title=TRUE, box=FALSE)
label("gtkDevice", 7, 3)
label("...", 7, 4)
      
popViewport()



