library(colorspace)



grid.rect(1:10/11, .75, width=1/15, height=1/3,
          gp=gpar(col=NA,
            fill=sequential_hcl(10, 0, 0, c(20, 90))))

grid.rect(1:10/11, .25, width=1/15, height=1/3,
          gp=gpar(col=NA,
            fill=diverge_hcl(10, 0, 0, c(20, 90))))

grid.rect(gp=gpar(col="gray", fill=NA))



