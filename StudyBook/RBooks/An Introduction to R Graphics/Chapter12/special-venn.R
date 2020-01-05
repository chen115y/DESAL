TitanicDF <- as.data.frame(Titanic)
TitanicList <- lapply(TitanicDF[1:4], rep, TitanicDF$Freq)
TitanicSets <- 
    data.frame(passenger=TitanicList$Class != "Crew",
               adult=TitanicList$Age == "Adult",
               male=TitanicList$Sex == "Male",
               survivor=TitanicList$Survived == "Yes")
head(TitanicSets)



library(gplots)



library(venneuler)



venn(TitanicSets[1:2])



par(mar=rep(2, 4))
plot(venneuler(TitanicSets[1:2]), 
     col=hcl(0, 0, c(60, 80), .5),
     alpha=NA, border="black")




venn(TitanicSets[1:3])



par(mar=rep(2, 4))
plot(venneuler(TitanicSets[1:3]), 
     col=hcl(0, 0, seq(40, 80, 20), .5),
     alpha=NA, border="black")




pdf("Figures/special-venn-3-%d.pdf", onefile=FALSE,
    width=6, height=6)
venn(TitanicSets)

dev.off()
png("Figures/special-venn-3-%d.png", width=240, height=240, pointsize=8)
venn(TitanicSets)

dev.off()


par(mar=rep(2, 4))
plot(venneuler(TitanicSets[1:4]), 
     col=hcl(0, 0, seq(20, 80, 20), .5),
     alpha=NA, border="black")




