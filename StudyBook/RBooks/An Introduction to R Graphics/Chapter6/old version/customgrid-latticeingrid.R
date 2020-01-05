depthgroup <- equal.count(quakes$depth, number=3, overlap=0)



labelvp <- function(name, col="grey", tcol="white", clipOff=TRUE) {
  seekViewport(name)
  if (clipOff)
    pushViewport(viewport(clip="off"))
  grid.rect(gp=gpar(col=col, lwd=5))
  grid.rect(x=0, y=1, width=unit(1, "strwidth", name) + unit(2, "mm"),
    height=unit(1, "lines"), just=c("left", "top"),
    gp=gpar(fill=col, col=NULL))
  grid.text(name, x=unit(1, "mm"), y=unit(1, "npc") - unit(1, "mm"),
    just=c("left", "top"), gp=gpar(col=tcol))
  upViewport(0)
}



lvp <- viewport(x=0, 
                width=unit(1, "npc") - unit(1, "inches"),
                just="left", name="lvp")
tvp <- viewport(x=1, width=unit(1, "inches"), 
                just="right", name="tvp")



lplot <- xyplot(lat ~ long | depthgroup, 
                data=quakes, pch=".",
                layout=c(1, 3), aspect=1, 
                index.cond=list(3:1))



trellis.par.set(theme = canonical.theme("postscript", col=FALSE))
pushViewport(lvp)
print(lplot, newpage=FALSE, prefix="plot1")
upViewport()

labelvp("lvp")
labelvp("plot1.panel.1.3.off.vp")
pushViewport(tvp)
grid.text("Largest\nEarthquake", x=unit(2, "mm"), 
          y=unit(1, "npc") - unit(0.5, "inches"), 
          just="left")

labelvp("tvp")
downViewport("tvp")
grid.move.to(unit(1, "mm"), 
             unit(1, "npc") - unit(0.5, "inches"))
seekViewport("plot1.panel.1.3.off.vp")
grid.arrows(grob=lineToGrob(unit(167.62, "native") +
                            unit(1, "mm"),
                            unit(-15.56, "native")),
            length=unit(3, "mm"), type="closed", 
            angle=10, gp=gpar(fill="black"))
grid.circle(unit(167.62, "native"), 
            unit(-15.56, "native"),
            r=unit(1, "mm"),
            gp=gpar(lwd=0.1))




