library(gridBase)
par(oma=rep(3, 4))
vps <- baseViewports()
# Annotation helper function
annWidth <- function(x, y, lab, above=TRUE, horiz=TRUE) {
  grid.arrows(x=x, y=y, 
              ends="both", angle=10, type="closed",
              length=unit(3, "mm"), gp=gpar(fill="black"))
  nl <- length(lab)
  if (nl > 1) {
    y <- y + unit(c(-0.5, 0.5), "lines")
    if (horiz) {
      vjust <- 1:0
      hjust <- 0.5
      rot <- 0
    } else {
      hjust <- 1:0
      vjust <- 0.5
      rot <- 90
    }
  } else {
    hjust <- 0.5
    rot <- 0
    if (above) {
      y <- y + unit(0.5, "lines")
      vjust <- 0
    } else {
      y <- y - unit(0.5, "lines")
      vjust <- 1
    }
  }
  grid.text(lab,
            x=0.5*sum(x),
            y=y, hjust=hjust, vjust=vjust, rot=rot,
            gp=gpar(fontfamily="mono", cex=1))
}
# Annotate whole page
grid.rect(gp=gpar(col="gray", fill="gray80"))
annWidth(0:1, unit(1, "npc") - unit(1.5, "lines"), "din[1]")
# grid.lines(x=0.5)
annWidth(unit(c(0, 3), "lines"), unit(0.7, "npc"), c("omi[2]", "oma[2]"))
annWidth(unit(1, "npc") - unit(c(0, 3), "lines"),
         unit(0.7, "npc"), c("omi[4]", "oma[4]"))
annWidth(unit(c(0, 3), "lines"), unit(0.3, "npc"), 
         "omd[1]", above=FALSE)
annWidth(unit.c(unit(0, "npc"),
                unit(1, "npc") - unit(3, "lines")),
         unit(2, "lines"), "omd[2]",
         above=FALSE)
# Annotate figure region
pushViewport(do.call("vpStack", vps[1:2]))
grid.rect(gp=gpar(fill="gray90"))
annWidth(0:1, unit(1, "npc") - unit(1.5, "lines"), "fin[1]")
annWidth(unit(c(0, 4.1), "lines"), unit(0.6, "npc"), c("mai[2]", "mar[2]"))
annWidth(unit(1, "npc") - unit(c(0, 2.1), "lines"),
         unit(0.6, "npc"), c("mai[4]", "mar[4]"), horiz=FALSE)
annWidth(unit(c(0, 4.1), "lines"), unit(0.4, "npc"), 
         "plt[1]", above=FALSE)
annWidth(unit.c(unit(0, "npc"),
                unit(1, "npc") - unit(2.1, "lines")),
         unit(4, "lines"), "plt[2]",
         above=FALSE)
# Annotate plot region
pushViewport(vps[[3]])
grid.rect(gp=gpar(lty="dashed", fill="gray80"))
annWidth(0:1, unit(1, "npc") - unit(1.5, "lines"), "pin[1]")
popViewport(3)



