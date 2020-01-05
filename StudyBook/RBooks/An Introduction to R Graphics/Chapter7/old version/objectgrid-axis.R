grid.rect(gp=gpar(col="grey"))
pushViewport(viewport(just="bottom", gp=gpar(cex=0.7)))
grid.xaxis(name="axis1", at=1:4/5)
childNames(grid.get("axis1"))

grid.edit("axis1", at=1:3/4)

grid.edit(gPath("axis1", "labels"), rot=45)

popViewport()



