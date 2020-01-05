grid.rect(gp=gpar(col="grey"))
angle <- seq(0, 2*pi, length=50)
grid.arrows(x=seq(0.1, 0.5, length=50), 
            y=0.5 + 0.3*sin(angle))
grid.arrows(grob=segmentsGrob(6:8/10, 0.2, 7:9/10, 0.8))




