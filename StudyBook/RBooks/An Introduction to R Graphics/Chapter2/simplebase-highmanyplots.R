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



# mgp draws the axes miles off the page
par(mfrow=c(3, 4), mar=c(1, 1, 3, 1), mex=.7, mgp=c(3, 100, 100))
mdf <- cbind(3:6, (3:6)^2, (3:6)^3)
names(mdf) <- c("Y1", "Y2", "Y3")
aaa <- seq(0, pi, length=10)
xxx <- rep(aaa, 10)
yyy <- rep(aaa, each=10)
zzz <- sin(xxx) + sin(yyy)
# gap for pairs(matrix)
plot.new()
dohplot("matplot", mdf[order(mdf[, 1]), ], funarg="", 
        pch=21:23, bg=c("white", "black", "gray"), type="o",
        col="black", xlim=c(0, 6), ylim=c(-10, 230))
df <- USJudgeRatings[1:6, ]
rownames(df) <- NULL
dohplot("stars", df, funarg="", ncol=2, lwd=1,
        len=.8, col.stars=rep("gray", 13), mar=c(1, 1, 3, 1))
# gap
plot.new()
dohplot("image", matrix(zzz, ncol=10), funarg="", col=gray(1:12/13))
dohplot("contour", matrix(zzz, ncol=10), funarg="", 
        levels=seq(0, 2, .25), labcex=.4)
# gap for filled.contour(matrix)
plot.new()
dohplot("persp", matrix(zzz, ncol=10), funarg="",
        theta=30, phi=45, col="gray")
dohplot("symbols", xxx, yyy, funarg="",
        circles=zzz, inches=.03, axes=NULL)
# gap for coplot(y ~ x | g)
plot.new()
dohplot("mosaicplot", 
        table(factor(rep(1:3, each=6)), 
              factor(c(rep(1:3, 3:1), rep(1:3, 2), rep(1:3, 1:3)))),
        funarg="", cex.axis=.1, off=10,
        box=FALSE)



