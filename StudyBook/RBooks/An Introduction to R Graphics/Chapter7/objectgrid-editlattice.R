angle <- seq(0, 2*pi, length=21)[-21]
x <- cos(angle)
y <- sin(angle)



trellis.par.set(theme = canonical.theme("postscript", color=FALSE))
print(
xyplot(y ~ x, aspect=1, 
       xlab="displacement", 
       ylab="velocity")

)
grid.edit("[.]xlab$", grep=TRUE, 
          x=unit(1, "npc"), just="right",
          gp=gpar(fontfamily="mono"))
grid.edit("[.]ylab$", grep=TRUE, 
          y=unit(1, "npc"), just="right",
          gp=gpar(fontfamily="mono"))




