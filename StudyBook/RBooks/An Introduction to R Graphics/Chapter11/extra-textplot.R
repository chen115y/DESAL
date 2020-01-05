library(gplots)



par(mar=rep(1, 4))
par(mfrow=c(1, 2))
plot(faithful)
textplot(capture.output(summary(faithful)))




