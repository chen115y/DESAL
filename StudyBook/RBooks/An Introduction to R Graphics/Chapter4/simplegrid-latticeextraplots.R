doplot <- function(name, ...) {
  do.call(name, 
          list(..., scales=list(draw=FALSE), xlab=NULL, ylab="",
               strip=function(which.panel, ...) { 
                       grid.rect(gp=gpar(fill="gray90")); grid.text(name) 
                     }))
}
library(latticeExtra)
plot <- vector("list", 4)
plot[[1]] <- doplot("ecdfplot", ~ rnorm(10) | 1)
plot[[2]] <- doplot("rootogram", ~ rpois(50, 10) | 1, 
                    dfun=function(x) dpois(x, 10))
plot[[3]] <- doplot("segplot", factor(1:5) ~ rnorm(5) + rnorm(5) | 1)
plot[[4]] <- doplot("tileplot", 
                    1:10 ~ rnorm(10) + rnorm(10) | 1,
                    colorkey=FALSE, aspect="fill")


grid.newpage()
pushViewport(viewport(layout=grid.layout(1, 4)))
for (i in 1:4) {
  pushViewport(viewport(layout.pos.col=i,
                        layout.pos.row=1))
  print(plot[[i]], newpage=FALSE, 
        panel.width=list(1.025, "inches"),
        panel.height=list(1.025, "inches"))
  popViewport()
}
popViewport()



