grid.rect(gp=gpar(col="gray"))
grid.circle(name="circles", x=seq(0.1, 0.9, length=40), 
            y=0.5 + 0.4*sin(seq(0, 2*pi, length=40)),
            r=abs(0.1*cos(seq(0, 2*pi, length=40))))

grid.edit("circles", 
          gp=gpar(col=gray(c(1:20*0.04, 20:1*0.04))))

grid.remove("circles")




