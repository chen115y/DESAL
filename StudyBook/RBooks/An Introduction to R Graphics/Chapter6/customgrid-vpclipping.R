grid.rect(gp=gpar(col="gray"))
pushViewport(viewport(gp=gpar(fill=NA)))
pushViewport(viewport(width=.5, height=.5, clip="on"))
grid.rect()
grid.circle(r=.7, gp=gpar(lwd=20))

pushViewport(viewport(clip="inherit"))
grid.circle(r=.7, gp=gpar(lwd=10, col="gray"))

pushViewport(viewport(clip="off"))
grid.circle(r=.7)
popViewport(3)




