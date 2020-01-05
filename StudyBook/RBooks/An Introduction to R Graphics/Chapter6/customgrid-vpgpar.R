grid.rect(gp=gpar(col="gray"))
pushViewport(viewport(gp=gpar(fill="gray", fontsize=10)))
grid.text("viewport(gp=gpar(fill=\"gray\"))", y=0.925)
grid.rect(x=0.33, height=0.7, width=0.2)
grid.text("grid.rect()", x=0.33, rot=90)
grid.rect(x=0.66, height=0.7, width=0.2, gp=gpar(fill="black"))
grid.text("grid.rect(gp=gpar(fill=\"black\"))", x=0.66, rot=90, 
  gp=gpar(fontsize=8, col="white"))
popViewport()



