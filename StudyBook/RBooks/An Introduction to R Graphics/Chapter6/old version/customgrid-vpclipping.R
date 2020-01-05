grid.rect(gp=gpar(col="grey"))
pushViewport(viewport(w=.5, h=.5, clip="on"))
grid.rect()
grid.circle(r=.7, gp=gpar(lwd=20))

pushViewport(viewport(clip="inherit"))
grid.circle(r=.7, gp=gpar(lwd=10, col="grey"))

pushViewport(viewport(clip="off"))
grid.circle(r=.7)
popViewport(3)




