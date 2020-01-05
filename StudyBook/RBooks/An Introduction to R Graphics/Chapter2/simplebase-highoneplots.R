plottitle <- function(plotfun, funarg, outer=FALSE, cex=.7, line=1) {
    ncp <- nchar(plotfun)
    nca <- nchar(funarg)
    mtext(paste(plotfun, "(", 
                paste(rep(" ", nca), collapse=""),
                ")", sep=""),
          family="mono", cex=cex, line=line, font=2, outer=outer)
    mtext(paste(paste(rep(" ", ncp + 1), collapse=""),
                funarg, " ", sep=""),
          family="mono", col="gray60", cex=cex, line=line, font=2, outer=outer)
}
plot2title <- function(plotfun, funarg, 
                       extrafn, extraarg, 
                       outer=FALSE, cex=.7, line=.5) {
    ncp <- nchar(plotfun)
    nca <- nchar(funarg)
    ncep <- nchar(extrafn)
    ncea <- nchar(extraarg)
    mtext(paste(plotfun, 
                "(",  paste(rep(" ", nca), collapse=""),
                ")\n", 
                extrafn, "(",
                paste(rep(" ", ncea), collapse=""),
                ")", sep=""),
          family="mono", cex=cex, line=line, font=2, outer=outer)
    mtext(paste(paste(rep(" ", ncp + 1), collapse=""),
                funarg, " \n", 
                paste(rep(" ", ncep + 1), collapse=""),
                extraarg, " ", sep=""),
          family="mono", col="gray60", cex=cex, line=line, font=2, outer=outer)
}
dohplot <- function(plotfn, ..., funarg, 
                    extrafn=NULL, extraarg=NULL, namefudge=FALSE,
                    main="", xlab="", ylab="", axes=FALSE, box=TRUE) {
    if (is.null(xlab) || is.null(ylab)) {
        do.call(plotfn,
                list(..., main=""))
    } else if (is.null(axes)) {
        do.call(plotfn,
                list(..., main="", xlab="", ylab=""))
    } else {
        do.call(plotfn,
                list(..., main="", axes=FALSE, xlab="", ylab=""))
    }
    if (is.null(extrafn)) {
        plottitle(plotfn, funarg)
    } else {
        plot2title(if (namefudge) paste(" ", plotfn, sep="") else plotfn, 
                   funarg, extrafn, extraarg)
    }
    if (box)
        box() # col="gray")
}



par(mfrow=c(3, 4), mar=c(1, 1, 3, 1), mex=.7, mgp=c(3, 100, 100))
dohplot("plot", (1:10)^2, funarg="numeric",
        xlim=c(0, 11), ylim=c(-10, 110))
dohplot("plot", table(rep(1:3, 1:3)), funarg="table", 
        lwd=2, xlim=c(0, 4), ylim=c(0, 4))
# Empty
plot.new()
plot.new()
dohplot("barplot", table(rep(1:3, 1:3)), funarg="", 
        extrafn="plot", extraarg="factor",
        xlim=c(-1, 5), ylim=c(0, 4), names.arg="")
dohplot("pie", c(1, 2, 4), funarg="", col=gray(1:3/4), cex=.7,
        labels="", axes=NULL)
dohplot("dotchart", 1:3, 
        funarg="numeric", pch=21, bg="gray",  
        lcolor="black", xlim=c(0, 4))
# Empty
plot.new()
dohplot("boxplot", (1:10)^2, funarg="numeric", 
        col="gray", ylim=c(-10, 110))
dohplot("hist", (1:100)^2, funarg="", col="gray", 
        breaks=6,
        xlim=c(-1000, 11000), ylim=c(0, 50))
dohplot("stripchart", (1:10)^2, funarg="numeric", 
        method="stack",
        cex=1, xlim=c(-10, 110), ylim=c(-1, 3), pch=21, bg="gray")
# stem()
plot.new()
txt <- capture.output(stem((1:10)^2))[-2]
text(.05, (1:length(txt))/(length(txt) + 1), txt, adj=0, family="mono", cex=.7)
box() # col="gray")
plottitle("stem", "")



