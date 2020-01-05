par(mfrow=c(1, 2), mar=c(3, 3, 1, 1), cex=0.7)
y <- sample(1:10)
midpts <- barplot(y, col=" light gray")
width <- diff(midpts[1:2])/4
left <- rep(midpts, y - 1) - width
right <- rep(midpts, y - 1) + width
heights <- unlist(apply(matrix(y, ncol=10), 
                        2, seq))[-cumsum(y)]
segments(left, heights, right, heights,
         col="white")

with(ToothGrowth, 
     {
       boxplot(len ~ supp, border="gray", 
               col="light gray", boxwex=0.5)
       points(jitter(rep(1:2, each=30), 0.5), 
              unlist(split(len, supp)),
              cex=0.5, pch=16)
     })




