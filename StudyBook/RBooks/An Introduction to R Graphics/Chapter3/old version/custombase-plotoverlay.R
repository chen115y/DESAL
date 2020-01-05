layout(matrix(1:2, ncol=1), heights=1:2/6.5)
par(cex=0.7)
drunkenness <- ts(c(3875, 4846, 5128, 5773, 7327, 
                    6688, 5582, 3473, 3186,
                    rep(NA, 51)),
                  start=1912, end=1971)

# Have to copy-and-paste to shrink the mtext text (arggh!)
par(mar=c(5, 6, 2, 4))
plot(drunkenness, lwd=3, col="grey", ann=FALSE, las=2)
mtext("Drunkenness\nRelated Arrests", side=2, line=3.5, cex=0.7)
par(new=TRUE)
plot(nhtemp, ann=FALSE, axes=FALSE)
mtext("Temperature (F)", side=4, line=3, cex=0.7)
title("Using par(new=TRUE) or par(usr=...)")
axis(4)

par(mar=c(5, 4, 4, 2))
with(trees, 
     {
       plot(Height, Volume, pch=3,
            xlab="Height (ft)", 
            ylab=expression(paste("Volume ", (ft^3))))
       symbols(Height, Volume, circles=Girth/12, 
               fg="grey", inches=FALSE, add=TRUE)
     })

mtext("symbols(..., add=TRUE)", font=2, side=3, line=1)



