kelvin <- pressure$temperature + 273.15



library(plotrix)




with(pressure,
     {
         plot(temperature, pressure, axes=FALSE)
         axis(2)
         box()
         staxlab(1, at=temperature, cex=.7)
     })



with(pressure,
     {
         plot(kelvin, pressure, xlim=c(250, 650))
         axis.break(1)
     })


