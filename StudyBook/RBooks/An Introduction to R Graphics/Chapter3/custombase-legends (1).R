par(mfrow=c(2, 1), mar=c(5, 3, 2, 1), cex=0.5, pty="s")
with(iris,
     plot(Sepal.Length, Sepal.Width, 
          pch=as.numeric(Species), cex=1.2))
legend(6.1, 4.4, c("setosa", "versicolor", "virginica"), 
       cex=1.5, pch=1:3)

barplot(VADeaths[1:2,], angle=c(45, 135), density=20, 
        col="gray", names=c("RM", "RF", "UM", "UF"))
legend(0.4, 38, c("55-59", "50-54"), cex=1.5,
       angle=c(135, 45), density=20, fill="gray")




