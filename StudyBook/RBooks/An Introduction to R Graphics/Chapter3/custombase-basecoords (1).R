par(mar=rep(1, 4))
plot(0:1, 0:1, type="n", axes=FALSE, ann=FALSE)
usr <- par("usr")
pin <- par("pin")
xcm <- diff(usr[1:2])/(pin[1]*2.54)
ycm <- diff(usr[3:4])/(pin[2]*2.54)

par(xpd=NA)
rect(0 + 0.2*xcm, 0 - 0.2*ycm,
     1 + 0.2*xcm, 1 - 0.2*ycm,
     col="gray", border=NA)

rect(0, 0, 1, 1, col="white")
segments(seq(1, 8, 0.1)*xcm, 0,
         seq(1, 8, 0.1)*xcm, 
         c(rep(c(0.5, rep(0.25, 4), 
                 0.35, rep(0.25, 4)),
               7), 0.5)*ycm)
text(1:8*xcm, 0.6*ycm, 0:7, adj=c(0.5, 0))
text(8.2*xcm, 0.6*ycm, "cm", adj=c(0, 0))




