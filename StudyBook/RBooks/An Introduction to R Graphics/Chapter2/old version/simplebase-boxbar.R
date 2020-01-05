par(mfrow=c(2, 2), mar=c(2.5, 2, 1, 1), cex=0.6)
boxplot(decrease ~ treatment, data = OrchardSprays,
        log = "y", col="light grey")
boxplot(decrease ~ treatment, data = OrchardSprays,
        log = "y", col="light grey", 
        boxwex=0.5)

par(las=2, xpd=NA)
barplot(VADeaths[1:2,], angle = c(45, 135), 
        density = 20, col = "grey",
        names=c("RM", "RF", "UM", "UF"))
barplot(VADeaths[1:2,], angle = c(45, 135), 
        density = 20, col = "grey",
        names=c("RM", "RF", "UM", "UF"),
        horiz=TRUE)




