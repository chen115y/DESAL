tplot <- xyplot(pressure ~ temperature, pressure)




trellis.par.set(list(dot.symbol=list(pch=1)))
print(
xyplot(pressure ~ temperature, pressure,
       type="o", pch=16, lty="dashed", 
       main="Vapor Pressure of Mercury")


)



