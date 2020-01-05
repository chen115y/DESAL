library(cluster)



subset <- sample(1:150, 20)
cS <- as.character(Sp <- iris$Species[subset])
cS[Sp == "setosa"] <- "S"
cS[Sp == "versicolor"] <- "V"
cS[Sp == "virginica"] <- "g"
ai <- agnes(iris[subset, 1:4])

par(mfrow=c(2, 1), cex=0.5, pty="s")
plot(ai, which=1, col=c("gray90", "gray"), labels = cS)
plot(ai, which=2, labels = cS)



