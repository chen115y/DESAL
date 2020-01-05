kelvin <- pressure$temperature + 273.15



library(plotrix)




library(TeachingDemos)



with(pressure,
     revaxis(temperature, pressure))



plot(kelvin, pressure$pressure)
updateusr(c(0, 1), 0:1, c(-273.15, -272.15), 0:1)
abline(v=100)
text(x=100, y=700, " water boils", adj=0)



pdf("Figures/extra-zoomplot-%d.pdf", onefile=FALSE,
    width=4, height=4)
dev.control("enable")
plot(pressure)
zoomplot(c(0, 150), c(0, 3))

dev.off()
png("Web/extra-zoomplot%d.png", width=320, height=320)
dev.control("enable")
plot(pressure)
zoomplot(c(0, 150), c(0, 3))

dev.off()
system("cp Web/extra-zoomplot2.png Web/extra-axisscale3.png")



