library(Rgraphviz)



load(system.file("extra", "grd.rda", package="RGraphics"))
grDraw <- function(layout) {
    ragrd <- agopen(grd, "", layoutType=layout)
    xy <- getNodeXY(ragrd)
    grid.newpage()
    pushViewport(viewport(width=1.1, height=1.1),
                 plotViewport(xscale=range(xy$x), yscale=range(xy$y)))
    grid.circle(xy$x, xy$y, default.units="native", 
                r=unit(.25, "mm"), gp=gpar(fill="black"))
    grdNodes <- graph::nodes(grd)
    grdEdges <- graph::edges(grd)
    mapply(function(start, ends) {
        if (length(ends) > 0) {
            grid.segments(xy$x[grdNodes == start],
                          xy$y[grdNodes == start],
                          xy$x[grdNodes %in% ends],
                          xy$y[grdNodes %in% ends],
                          default.units="native",
                          gp=gpar(col=rgb(0,0,0,.5)))
        }
    },
           as.list(grdNodes),
           grdEdges)
    for (i in c("grDevices", "graphics", "grid", "lattice", "ggplot2")) {
        grid.rect(xy$x[grdNodes == i], xy$y[grdNodes == i],
                  width=stringWidth(i), height=unit(1, "lines"),
                  default.units="native",
                  gp=gpar(col=NA, fill=rgb(.5, .5, .5, .5)))
        grid.text(i, xy$x[grdNodes == i], xy$y[grdNodes == i],
                  default.units="native",
                  gp=gpar(col="white"))
    }
}

png("Figures/graph-pkgdep.png", width=1350, height=1350, res=300)
grDraw("neato")
dev.off()
system("cp Figures/graph-pkgdep.png Web/")



