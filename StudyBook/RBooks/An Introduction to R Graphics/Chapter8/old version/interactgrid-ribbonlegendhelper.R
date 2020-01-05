calcBreaks <- function(nlevels, breaks, scale) {
  if (is.null(breaks)) {
    seq(min(scale), max(scale), diff(scale)/nlevels)
  } else {
    breaks
  }
}

ribbonVps <- function(nlevels, breaks, margin, scale) {
  breaks <- format(signif(calcBreaks(nlevels, breaks, scale), 
                          3))
  vpTree(
    viewport(name="layout", layout=
      grid.layout(3, 4,
        widths=unit.c(margin, unit(1, "lines"),
                      max(unit(0.8, "lines") + 
                          stringWidth(breaks)), margin),
        heights=unit.c(margin, unit(1, "null"), margin))),
    vpList(viewport(layout.pos.col=2, layout.pos.row=2,
                    yscale=scale, name="ribbon"),
           viewport(layout.pos.col=3, layout.pos.row=2,
                    yscale=scale, name="labels")))
}

ribbonKids <- function(nlevels, breaks, cols, scale) {
  breaks <- calcBreaks(nlevels, breaks, scale)
  nb <- length(breaks)
  tickloc <- breaks[-c(1, nb)]
  gList(rectGrob(y=unit(breaks[-1], "native"), 
                 height=unit(diff(breaks), "native"),
                 just="top", gp=gpar(fill=cols),
                 vp=vpPath("layout", "ribbon")),
        segmentsGrob(x1=unit(0.5, "lines"),
                     y0=unit(tickloc, "native"),
                     y1=unit(tickloc, "native"),
                     vp=vpPath("layout", "labels")),
        textGrob(x=unit(0.8, "lines"),
                 y=unit(tickloc, "native"),
                 just="left", 
                 label=format(signif(tickloc, 3)),
                 vp=vpPath("layout", "labels")))
}


