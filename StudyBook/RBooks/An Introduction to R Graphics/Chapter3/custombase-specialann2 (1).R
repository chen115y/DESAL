par(cex=.7)
pairs(iris[1:2], 
      diag.panel=function(x, ...) { 
          boxplot(x, add=TRUE, axes=FALSE,
                  at=mean(par("usr")[1:2])) 
      }, 
      text.panel=function(x, y, labels, ...) { 
          mtext(labels, side=3, line=0) 
      })





