plot(1:5, main="plot title ('main')", 
     sub="plot sub-title ('sub')",
     xlab="x-axis label ('xlab')",
     ylab="y-axis label ('ylab')", 
     col="grey", axes=FALSE)
box(col="grey")
axis(1, col="grey", col.axis="grey")
axis(2, col="grey", col.axis="grey")
text(1:5, 1:5, "data\nsymbol\n('pch')", cex=.7, pos=c(4, 1, 3, 2, 2))
mtext("tick label ('labels')", side=1, line=1.5, at=1:5, cex=.7)
mtext("tick mark ('at')", side=1, line=.1, at=1:5, cex=.7)
mtext("tick label ('labels')", side=2, line=2, at=1:5, cex=.7)
mtext("tick mark ('at')", side=2, line=.6, at=1:5, cex=.7)
