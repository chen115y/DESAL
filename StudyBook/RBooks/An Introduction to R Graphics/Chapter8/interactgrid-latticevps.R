pdf("Figures/interactgrid-latticevps-%d.pdf", onefile=FALSE)
print(
xyplot(pressure ~ temperature, pressure)

)
showViewport(newpage=TRUE, 
             col="black",
             fill=rgb(.5, .5, .5, .2))
dev.off()
png("Web/interactgrid-latticevps%d.png")
print(
xyplot(pressure ~ temperature, pressure)

)
showViewport(newpage=TRUE, 
             col="black",
             fill=rgb(.5, .5, .5, .2))
dev.off()
system("rm Web/interactgrid-latticevps1.png")



