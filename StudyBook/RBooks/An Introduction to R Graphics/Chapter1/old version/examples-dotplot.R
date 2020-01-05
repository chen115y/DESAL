
#
# Comment:
#
# A slightly modified version of Figure 1.1 from 
# Cleveland's book "Visualizing Data"
#


library(lattice)
trellis.par.set(theme = canonical.theme("postscript", col=FALSE))
trellis.par.set(list(fontsize=list(text=6),
	             par.xlab.text=list(cex=1.5),
                     add.text=list(cex=1.5),
                     superpose.symbol=list(cex=.5)))
key <- simpleKey(levels(barley$year), space = "right")
key$text$cex <- 1.5
print(
     dotplot(variety ~ yield | site, data = barley, groups = year,
             key = key,
             xlab = "Barley Yield (bushels/acre) ",
             aspect=0.5, layout = c(1,6), ylab=NULL)
)



