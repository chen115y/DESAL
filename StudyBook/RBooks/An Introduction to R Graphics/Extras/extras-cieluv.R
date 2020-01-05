grid.rect(gp=gpar(col="grey"))
pushViewport(viewport(w=0.8, h=0.8))
offset <- unit(3, "mm")
grid.text("CIE-LUV\nchroma = 40\nluminance = 80",
          gp=gpar(fontfamily="mono"))
t <- seq(0, 2*pi, length=7)[-7]
x <- 0.5 + .4*cos(t)
y <- 0.5 + .4*sin(t)
rad <- .13
cols <- hcl(t/pi*180, 40, 80)
grid.circle(x, y, r=unit(rad, "npc"),
            gp=gpar(fill=cols))
labels <- c("r", "g", "b")
rgbcols <- col2rgb(cols)
hbars <- seq(50, 250, 50)
for (i in 1:6) {
  pushViewport(viewport(x[i], y[i], width=.2, height=.2,
                        layout=grid.layout(2, 3,
                          heights=unit(c(1, 1), c("null", "lines")))))
  for (j in 1:3) {
    pushViewport(viewport(layout.pos.col=j,
                          layout.pos.row=1))
    grid.text(labels[j], y=unit(-.5, "lines"),
              gp=gpar(fontfamily="mono"))
    grid.lines(x=c(.1, .9), y=0)
    grid.rect(y=0, width=.6, height=rgbcols[j, i]/300,
              just="bottom",
              gp=gpar(fill=NA))
    popViewport()
  }
  popViewport()
}
popViewport()
