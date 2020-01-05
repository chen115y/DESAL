par(mar=c(3, 6, 2, 2), xaxs="i", yaxs="i", xpd=FALSE, las=1)
    plot(c(0, 1), c(0, 1), type="n", ann=FALSE, axes=FALSE)
    box("figure")
    rect(0, 0, 1, 1, col="light gray", border="gray")
    axis(1, at=c(0, 1), c("", ""))
    mtext("Min x-value", side=1, adj=0, line=1)
    mtext("Max x-value", side=1, adj=1, line=1)
    axis(2, at=c(0, 1), c("", ""))
    mtext("Min y-value", side=2, at=0, adj=1, line=1)
    mtext("Max y-value", side=2, at=1, adj=1, line=1)
    lines(c(.6, .6, 0), c(0, .6, .6), lty="dashed")
    text(.6, .6, expression(paste("The location ", 
            group("(",list(x[i], y[i]),")"))), pos=3)
    points(.6, .6, pch=16)
    axis(1, at=.6, "")
    mtext(expression(x[i]), side=1, at=.6, line=.7)
    axis(2, at=.6, "")
    mtext(expression(y[i]), side=2, at=.6, line=.7)
        



