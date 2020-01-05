ribbonLegend <- function(nlevels=NULL, breaks=NULL, cols, 
                         scale=range(breaks), 
                         margin=unit(0.5, "lines"), 
                         gp=NULL, vp=NULL, name=NULL) {
  gTree(
    nlevels=nlevels, breaks=breaks, cols=cols, scale=scale, 
    children=ribbonKids(nlevels, breaks, cols, scale),
    childrenvp=ribbonVps(nlevels, breaks, margin, scale),
    gp=gp, vp=vp, name=name, cl="ribbonLegend")
}

widthDetails.ribbonLegend <- function(x) { 
  sum(layout.widths(viewport.layout(x$childrenvp[[1]]))) 
} 


