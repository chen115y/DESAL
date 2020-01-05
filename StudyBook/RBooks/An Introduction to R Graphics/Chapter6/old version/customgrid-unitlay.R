unitlay <- 
  grid.layout(3, 3, 
              widths=unit(c(1, 1, 2), 
                          c("inches", "null", "null")), 
              heights=unit(c(3, 1, 1), 
                           c("lines", "null", "null")))



pushViewport(viewport(gp=gpar(cex=0.8)))
grid.show.layout(unitlay, bg="white", 
                 cell.border="black", cell.fill="grey90", 
                 label.col="black", unit.col="black",
                 newpage=FALSE)
popViewport()



