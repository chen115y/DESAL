grid.rect(gp=gpar(col="gray"))
pushViewport(viewport(gp=gpar(fontsize=10)))
grid.rect(x=0.33, height=0.7, width=0.2, gp=gpar(fill="black"))
grid.rect(x=0.66, height=0.7, width=0.2)
grid.text("grid.rect()", x=0.66, rot=90)
grid.text("grid.rect(gp=gpar(fill=\"black\"))", x=0.33, rot=90, 
  gp=gpar(fontsize=8, col="white"))
popViewport()



