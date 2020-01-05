axisfun <- function(mgp=c(3, 1, 0), xaxs="r", tcl=-.5,
                    mgpcol="black", xaxscol="black", tclcol="black") {
  par(mar=c(5, 1, 0, 1), mgp=mgp, xaxs=xaxs, tcl=tcl, pty="s")
  plot.new()
  box(col="gray")
  text(.5, .75, paste("mgp=c(", paste(mgp, collapse=", "), ")", sep=""),
       col=mgpcol)
  text(.5, .5, paste("xaxs=\"", xaxs, "\"", sep=""),
       col=xaxscol)
  text(.5, .25, paste("tcl=", tcl, sep=""),
       col=tclcol)
  axis(1, at=c(0, .5, 1))
  title(xlab="X-axis Label")
}



par(mfrow=c(2, 2))
axisfun()
axisfun(mgp=c(2, 0.3, 0), tcl=0.2, xaxscol="gray")
axisfun(xaxs="i", mgpcol="gray", tclcol="gray")



