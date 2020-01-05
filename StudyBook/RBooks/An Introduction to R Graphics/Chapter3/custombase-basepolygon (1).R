angle <- seq(0, 2*pi, length=13)[-13]
x <- 0.15*cos(angle)
y <- 0.5 + 0.3*sin(angle)
par(mar=rep(0, 4))
plot.new()
box("outer", col="gray")
polygon(0.25 + x, y, col="gray")
text(0.75 + x[c(1, 5, 9)], y[c(1, 5, 9)], "NA", col="gray")
x[c(1, 5, 9)] <- NA
y[c(1, 5, 9)] <- NA
polygon(0.75 + x, y, col="gray")




