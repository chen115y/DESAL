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



set.seed(1500)
# mgp draws the axes miles off the page
par(mfrow=c(4, 4), mar=c(1, 1, 3, 1), mex=.7, mgp=c(3, 100, 100))
dohplot("plot", 1:10, (1:10)^2, funarg="num,num", 
        pch=21, bg="gray", 
        xlim=c(0, 11), ylim=c(-10, 110))
x <- rnorm(10000)
dohplot("smoothScatter", x, x + rnorm(10000)/3,  funarg="",
        nbin=64, colramp=function(n) { gray(n:1/(n + 1)) },
        xlim=c(-5, 5), ylim=c(-5, 5))
x <- sample(1:4, 20, replace=TRUE)
y <- x + sample(0:1, 20, replace=TRUE)
dohplot("sunflowerplot", x, y,
        funarg="", seg.col="black", size=.07,
        xlim=c(0, 5), ylim=c(0, 6))
# Empty gap 
plot.new()
dohplot("boxplot", list((1:10)^2, 120 - (1:10)^2), funarg="list", 
        extrafn="plot", extraarg="fac,num", col="gray", boxwex=0.5,
        ylim=c(-10, 130))
dohplot("barplot", rbind(1:3, (1:3)^2), funarg="matrix",
        xlim=c(0, 4), ylim=c(0, 13))
dohplot("barplot", rbind(1:3, (1:3)^2), funarg="matrix",
        beside=TRUE,
        xlim=c(0, 10), ylim=c(0, 11))
# Empty gap for dotchart
plot.new()
fig <- par("fig")
dohplot("stripchart", list((1:10)^2, 140 - (1:10)^2), funarg="list",
        extrafn="plot", extraarg="num,fac",
        xlim=c(-10, 150), ylim=c(0, 3), pch=21, bg="gray", cex=1)
dohplot("spineplot", 
        rep(1:3, each=6), 
        factor(c(rep(1:3, 3:1), rep(1:3, 2), rep(1:3, 1:3))),
        funarg="num,fac", box=FALSE)
dohplot("cdplot", 
        rep(1:3, each=6), 
        factor(c(rep(1:3, 3:1), rep(1:3, 2), rep(1:3, 1:3))),
        funarg="", box=FALSE)
# Empty gap 
plot.new()
dohplot("spineplot", 
        factor(rep(1:3, each=6)), 
        factor(c(rep(1:3, 3:1), rep(1:3, 2), rep(1:3, 1:3))),
        funarg="fac,fac", off=5,
        extrafn="plot", extraarg="fac,fac",
        namefudge=TRUE,
        box=FALSE)
dohplot("assocplot", 
        table(rep(1:2, each=3),
              c(rep(1:2, 1:2), rep(1:2, 2:1))),
        funarg="",
        col=c("black", "gray"), axes=NULL)
dohplot("fourfoldplot", 
        table(rep(1:2, each=3),
              c(rep(1:2, 1:2), rep(1:2, 2:1))),
        color=gray(1:2/3),
        # NOTE: can't make 'space' too small or font size of labels
        # goes to zero and get error from ghostscript
        funarg="", xlab=NULL, box=FALSE, space=0.03)
dohplot("mosaicplot", 
        table(factor(rep(1:3, each=6)), 
              factor(c(rep(1:3, 3:1), rep(1:3, 2), rep(1:3, 1:3)))),
        funarg="", off=10,
        extrafn="plot", extraarg="table",
        cex.axis=.1, box=FALSE)
# Put dotchart in gap
par(fig=c(fig[1] - .1, fig[2:4]), new=TRUE)
dotdata <- rbind(1:3, (1:3)^2) # rbind(table(gy), table(gx))
colnames(dotdata) <- rep("", 3)
dohplot("dotchart", dotdata, funarg="matrix",
        labels="", pch=c(16, 21), bg="gray",
        lcolor="black", xlim=c(0, 13), box=FALSE)



