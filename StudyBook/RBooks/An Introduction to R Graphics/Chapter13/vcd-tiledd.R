library(vcd)



grid.rect(gp=gpar(col=NA, fill="gray"))
tile(nObs ~ Schedule + Priority, xmm,
     tile_type="area",
     shade=TRUE, 
     gp=gpar(lwd=2, fill="white"), 
     pos_labels=c(left="left", top="left", right="left"), 
     just_labels=c(left="left", top="left", right="left"),
     pop=FALSE, newpage=FALSE)

downViewport("cell:Schedule=fixed,Priority=C,nObs=multiple")
grid.circle(0, 0, r=unit(1, "mm"))
upViewport(0)

downViewport("cell:Schedule=fixed,Priority=C,nObs=single")
grid.circle(0, 0, r=unit(1, "mm"))
upViewport(0)
downViewport("cell:Schedule=free,Priority=A,nObs=multiple")
grid.circle(0, 0, r=unit(1, "mm"))
upViewport(0)
downViewport("cell:Schedule=free,Priority=B,nObs=multiple")
grid.circle(0, 0, r=unit(1, "mm"))
upViewport(0)




doubledecker(nObs ~ Schedule + Priority, xmm,
             dep_varname=FALSE,
             gp=gpar(fill=c("gray90", "gray")),
             offset_labels=c(right=-.5),
             margins=c(bottom=3, left=1, top=1, right=5))




