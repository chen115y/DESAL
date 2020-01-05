grid.rect(gp=gpar(col="grey"))
suffix <- c("even", "odd")
for (i in 1:8)
  grid.circle(name=paste("circle.", suffix[i %% 2 + 1], 
                         sep=""),
              r=(9 - i)/20, 
              gp=gpar(col=NA, fill=grey(i/10)))

grid.edit("circle.odd", gp=gpar(fill="grey10"), 
          global=TRUE)

grid.edit("circle", gp=gpar(col="grey", fill="grey90"), 
          grep=TRUE, global=TRUE) 




