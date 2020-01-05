library(circular) 



station22254dir <- with(wind9am, Dir[Station == 22254])



station22254 <- circular(station22254dir, 
                         units="degrees",
                         zero=pi/2, rotation="clock")



windHours <- circular(hourlySpeed$hour,
                      units="hours", 
                      zero=pi/2, rotation="clock")



par(mar=rep(2, 4), xpd=NA)
plot(station22254, stack=TRUE, sep=.06)




par(mar=rep(2, 4), xpd=NA)
plot(density(station22254, bw=45), 
     main="", xlab="", ylab="")




par(mar=rep(1, 4), xpd=NA)
rose.diag(station22254, bins=36, prop=3)




par(mar=rep(1, 4), xpd=NA)
plot(windHours, col=NA, shrink=1.2, axes=FALSE)
lines(windHours, 
      0.5*hourlySpeed$Speed/max(hourlySpeed$Speed),
      nosort=TRUE, lty="dotted", join=FALSE)
axis.circular(template="clock24")




