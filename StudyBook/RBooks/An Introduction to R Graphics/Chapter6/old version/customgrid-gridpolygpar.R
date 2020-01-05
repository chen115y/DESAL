grid.rect(gp=gpar(col="grey"))
angle <- seq(0, 2*pi, length=11)[-11]
grid.polygon(x=0.25 + 0.15*cos(angle), y=0.5 + 0.3*sin(angle), 
             id=rep(1:2, c(7, 3)),
             gp=gpar(fill=c("grey", "white")))
angle[4] <- NA
grid.polygon(x=0.75 + 0.15*cos(angle), y=0.5 + 0.3*sin(angle), 
             id=rep(1:2, c(7, 3)),
             gp=gpar(fill=c("grey", "white")))

angle <- seq(0, 2*pi, length=11)[4]
grid.text("NA", x=0.75 + 0.15*cos(angle), y=0.5 + 0.3*sin(angle),)



