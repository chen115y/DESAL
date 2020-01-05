grid.rect(gp=gpar(col="grey"))
levels <- round(seq(90, 10, length=25))
greys <- paste("grey", c(levels, rev(levels)), sep="")
grid.circle(x=seq(0.1, 0.9, length=100), 
            y=0.5 + 0.4*sin(seq(0, 2*pi, length=100)),
            r=abs(0.1*cos(seq(0, 2*pi, length=100))),
            gp=gpar(col=greys))




