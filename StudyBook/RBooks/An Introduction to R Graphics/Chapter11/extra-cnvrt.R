library(gplots)



par(mar=rep(1, 4))
plot(rnorm(100), rnorm(100), pch=16, col="gray",
     ann=FALSE, axes=FALSE)
box()

corner.label("top-left", x=-1, y=1)

smartlegend(x="right", y="top", 
            legend="top-right", pch=16, 
            col="gray", bg="white")

text(grconvertX(1, "npc"), grconvertY(0, "npc"), 
     adj=c(1, 0), labels="bottom-right")




