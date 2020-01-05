grid.rect(gp=gpar(col="gray"))
angle <- seq(0, 2*pi, length=10)[-10]
grid.path(x=0.25 + 0.15*cos(angle), y=0.5 + 0.3*sin(angle), 
          gp=gpar(fill="gray"))
grid.path(x=c(0.75 + 0.15*cos(angle), .7, .7, .8, .8),
          y=c(0.5 + 0.3*sin(angle),  .4, .6, .6, .4), 
          id=rep(1:2, c(9, 4)),
          gp=gpar(fill="gray"))




