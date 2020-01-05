par(mar=rep(0, 4), cex=0.7)
plot.new()
plot.window(c(0.05, 0.95), 0:1)
family <- c("sans", "serif", "mono")
face <- 1:4
for (i in 1:4)
  for (j in 1:3) {
    par(family=family[j], lheight=1.5)
    text(seq(.15, .85, length=4)[i],
         seq(.25, .75, length=3)[j],
         paste("family=\"", family[j], "\"\nfont=", face[i], sep=""),
         font=face[i])
  }
segments(.02, c(.125, .375, .625, .875), 
         .98, c(.125, .375, .625, .875), col="gray")
segments(.02, c(.125, .375, .625, .875) - .01, 
         .02, c(.125, .375, .625, .875) + .01, col="gray")
segments(.98, c(.125, .375, .625, .875) - .01, 
         .98, c(.125, .375, .625, .875) + .01, col="gray")
rect(c(.27, .5, .73) - .01,
     .1,
     c(.27, .5, .73) + .01,
     .9, col="white", border=NA)



