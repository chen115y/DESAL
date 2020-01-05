# grid.newpage()
layvp <- viewport(layout=grid.layout(1, 9,
                    heights=unit(1, "inch"),
                    widths=unit(c(1, .5), "inch")),
                  name="vplay")
vpi <- function(i) {
    viewport(layout.pos.col=i, name=paste("vp", i, sep=""))
}
pushViewport(layvp)
pushViewport(viewport(layout.pos.col=1:9))
grid.rect(width=1.1, gp=gpar(col=NA, fill="gray"))
popViewport()
pushViewport(vpi(1))
upViewport()
pushViewport(vpi(3))
upViewport()
pushViewport(vpi(5))
upViewport()
pushViewport(vpi(7))
upViewport()
pushViewport(vpi(9))
upViewport(0)
for (i in c(1, 3, 5, 7, 9)) {
    grid.roundrect(height=.5,
                   vp=paste("vplay::vp", i, sep=""),
                   name=paste("rr", i, sep=""),
                   gp=gpar(fill="white"))
}
grid.text("data", vp="vplay::vp1")
grid.text("scale", vp="vplay::vp3")
grid.text("stat", vp="vplay::vp5")
grid.text("aesthetic", vp="vplay::vp7")
grid.text("geom", vp="vplay::vp9")
arr <- arrow(length=unit(3, "mm"), type="closed")
grid.segments(grobX("rr1", 0), .5,
              grobX("rr3", 180), .5,
              arrow=arr, gp=gpar(fill="black"))
grid.segments(grobX("rr3", 0), .5,
              grobX("rr5", 180), .5,
              arrow=arr, gp=gpar(fill="black"))
grid.segments(grobX("rr5", 0), .5,
              grobX("rr7", 180), .5,
              arrow=arr, gp=gpar(fill="black"))
grid.segments(grobX("rr7", 0), .5,
              grobX("rr9", 180), .5,
              arrow=arr, gp=gpar(fill="black"))



