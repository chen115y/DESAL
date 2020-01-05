midpts <- barplot(1:10, col="grey90", axes=FALSE)
axis(2)
axis(1, at=midpts, labels=FALSE)

library(gridBase)
vps <- baseViewports()
pushViewport(vps$inner, vps$figure, vps$plot)

grid.text(c("one", "two", "three", "four", "five",
            "six", "seven", "eight", "nine", "ten"), 
          x=unit(midpts, "native"), y=unit(-1, "lines"),
          just="right", rot=60)
popViewport(3)




