grid.rect(gp=gpar(col="gray"))
angle <- seq(0, 2*pi, length=50)
grid.lines(x=seq(0.1, 0.5, length=50), 
           y=0.5 + 0.3*sin(angle), arrow=arrow())
grid.segments(6:8/10, 0.2, 7:9/10, 0.8,
              arrow=arrow(angle=15, type="closed"))




