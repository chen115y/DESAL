library(agricolae)
data("soil", envir=environment())
place2region <- as.data.frame(rbind(c("Cnt1", "Lima"),
                                    c("Cnt2", "Lima"),
                                    c("Cnt3", "Lima"),
                                    c("Chz", "Ancash"),
                                    c("Chmar", "Huanuco"),
                                    c("Hco1", "Huanuco"),
                                    c("Hco2", "Huanuco"),
                                    c("Hco3", "Huanuco"),
                                    c("Hyo1", "Junin"),
                                    c("Hyo2", "Junin"),
                                    c("Namora", "Cajamarca"),
                                    c("SR1", "Junin"),
                                    c("SR2", "Junin")))
soils <- merge(soil, place2region,
               by.x="place", by.y="V1")[c("sand", "slime", "clay")]
names(soils) <- c("sand", "silt", "clay")



library(vcd)



library(plotrix)



library(compositions)



library(soiltexture)



ternaryplot(soils, col="black", 
            grid_color="black", labels_color="black")
 



triax.plot(soils,  cex.ticks=.5)



par(mar=rep(1, 4))
plot(rcomp(soils))
lines(rcomp(rbind(c(.4, 0, .6),
                  c(0, .4, .6))))
lines(rcomp(rbind(c(.65, 0, .35),
                  c(0, .65, .35))))




TTsoils <- soils
names(TTsoils) <- c("SAND", "SILT", "CLAY")
TT.plot(tri.data=TTsoils)



