pushViewport(viewport(layout=grid.layout(2, 2), gp=gpar(cex=0.6, fill=NA)))
pushViewport(viewport(layout.pos.col=1, layout.pos.row=1))
pushViewport(plotViewport(c(5, 4, 2, 2)))
pushViewport(dataViewport(pressure$temperature, 
                          pressure$pressure,
                          name="plotRegion"))

grid.points(pressure$temperature, pressure$pressure, 
  gp=gpar(cex=0.5))
grid.rect()
grid.xaxis()
grid.yaxis()
grid.text("temperature", y=unit(-3, "line"))
grid.text("pressure", x=unit(-3, "line"), rot=90)

popViewport(3)
pushViewport(viewport(layout.pos.col=2, layout.pos.row=1))
pushViewport(plotViewport(c(5, 4, 2, 2)))
pushViewport(dataViewport(pressure$temperature, 
                          pressure$pressure,
                          name="plotRegion"))

grid.points(pressure$temperature, pressure$pressure, pch=2, 
  gp=gpar(cex=0.5))
grid.rect()
grid.xaxis()
grid.yaxis()
grid.text("temperature", y=unit(-3, "line"))
grid.text("pressure", x=unit(-3, "line"), rot=90)

popViewport(3)
pushViewport(viewport(layout.pos.col=2, layout.pos.row=2))
pushViewport(plotViewport(c(5, 4, 2, 2)))
pushViewport(dataViewport(pressure$temperature, 
                          pressure$pressure,
                          name="plotRegion"))

grid.points(pressure$temperature, pressure$pressure, pch=2, 
  gp=gpar(cex=0.5))
grid.rect()
grid.xaxis()
grid.yaxis()
grid.text("temperature", y=unit(-3, "line"))
grid.text("pressure", x=unit(-3, "line"), rot=90)

upViewport(2)
grid.rect(gp=gpar(lty="dashed"))

downViewport("plotRegion")
grid.text("Pressure (mm Hg)\nversus\nTemperature (Celsius)",
          x=unit(150, "native"), y=unit(600, "native"))




