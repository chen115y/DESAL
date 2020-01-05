print(
qplot(temperature, pressure, data=pressure,
      main="Vapor Pressure of Mercury",
      geom=c("point", "line"), lty=I("dashed"))

)


