library(maps)
coplot(lat ~ long | depth, data = quakes, number=4, 
       panel=function(x, y, ...) {
         usr <- par("usr")
         rect(usr[1], usr[3], usr[2], usr[4], col="white")
         map("world2", regions=c("New Zealand", "Fiji"),
             add=TRUE, lwd=0.1, fill=TRUE, col="grey")
         text(180, -13, "Fiji", adj=1, cex=0.7)
         text(170, -35, "NZ", cex=0.7)
         points(x, y, pch=".")
       })




