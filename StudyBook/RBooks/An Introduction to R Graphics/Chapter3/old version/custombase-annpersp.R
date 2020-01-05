par(mar=rep(0, 4), lwd=0.1)
z <- 2 * volcano        
x <- 10 * (1:nrow(z))   
y <- 10 * (1:ncol(z))   
trans <- persp(x, y, z, theta = 135, phi = 30, 
               scale = FALSE, ltheta = -120, 
               # shade=0.5, border=NA, 
               box = FALSE)
box(col="grey", lwd=1)

trans3d <- function(x,y,z,pmat) {
  tmat <- cbind(x,y,z,1)%*% pmat
  tmat[,1:2] / tmat[,4]
}

summit <- trans3d(x[20], y[31], max(z), trans)
points(summit[1], summit[2], pch=16)
summitlabel <- trans3d(x[20], y[31], max(z) + 50, trans)
text(summitlabel[1], summitlabel[2], "Summit")

drawRoad <- function(x, y, z, trans) {
  road <- trans3d(x, y, z, trans)
  lines(road[,1], road[,2], lwd=5)
  lines(road[,1], road[,2], lwd=3, col="grey")
}
with(volcano.summitRoad,
     drawRoad(srx, sry, srz, trans))
with(volcano.upDownRoad,
     {
       clipudx <- udx
       clipudx[udx < 230 & udy < 300 | 
               udx < 150 & udy > 300] <- NA
       drawRoad(clipudx, udy, udz, trans)
     })
with(volcano.accessRoad,
     drawRoad(arx, ary, arz, trans))




