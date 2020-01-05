hourSpeed <- aggregate(hourlySpeed["Speed"], 
                       list(hour=hourlySpeed$hour),
                       mean)
head(hourSpeed)



library(plotrix)



library(openair)



trellis.par.set(theme = canonical.theme("postscript", color=FALSE))
print(
with(wind9am,
     polarFreq(data.frame(ws=Speed, wd=Dir, date=Date),
               cols=gray(10:1/11), border.col="black"))

      )



polar.plot(hourSpeed$Speed, hourSpeed$hour * 15,
           start=90, clockwise=TRUE, lwd=5,
           label.pos=seq(15, 360, 15), labels=1:24,
           radial.lim=c(0, 4.5))


