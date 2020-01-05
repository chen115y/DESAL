library(SVGAnnotation)



doc <- svgPlot({ par(mfrow=c(2, 1), cex=.7,     
                     mar=c(5.1, 4.1, 1, 1))
                 plot(mpg ~ disp, mtcars, cex=2)
                 plot(qsec ~ wt, mtcars, cex=2) },
               width=4, height=8)
linkPlots(doc)
saveXML(doc, "linkedplots.svg")


