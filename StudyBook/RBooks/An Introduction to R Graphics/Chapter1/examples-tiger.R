# Produce a plot of tiger populations with picture as background
# Source: http://www.globaltiger.org/population.htm
year <- c(1993, 1996, 1998, 2001)
minpop <- c(20, 50, 50, 115)
maxpop <- c(50, 240, 240, 150)

library(grImport)
tiger <- readPicture(system.file("extra", "tiger.ps.xml", 
                                 package="RGraphics"))[-1]

require(colorspace)

source(system.file("extra", "grayify.R", package="RGraphics"))

# grid.newpage()
pushViewport(plotViewport(c(3, 2, 2, 1)),
             viewport(xscale=c(1991, 2003), yscale=c(0, 250)))
grid.rect()
# tiger backdrop in gray
grid.picture(tiger, x=0.45, FUN=grayify, min=.8)
grid.xaxis(at=year, gp=gpar(cex=0.7))
grid.yaxis(gp=gpar(cex=0.7))
# black bars
grid.rect(x=unit(year, "native"), y=0,
          width=unit(1, "native"), height=unit(maxpop, "native"),
          just="bottom", gp=gpar(fill="black"))
# tiger in bars
tigerGrob <- pictureGrob(tiger, x=0.45, 
 FUN=grobify)
# Start from 2 because bar 1 does not overlap with tiger
for (i in 2:length(year)) {
    grid.clip(x=unit(year[i], "native"), y=0,
              width=unit(1, "native"), height=unit(maxpop[i], "native"),
              just="bottom")
    # tiger backdrop (shift slightly to left so get one eye in one bar)
    grid.draw(tigerGrob)
}
grid.clip()
# redo bar borders
grid.rect(x=unit(year, "native"), y=0,
          width=unit(1, "native"), height=unit(maxpop, "native"),
          just="bottom", gp=gpar(fill=NA))
grid.text("Estimated Population (max.) of Bengal Tigers\n(in Bhutan)",
          y=unit(1, "npc") + unit(1, "lines"))
popViewport(2)



