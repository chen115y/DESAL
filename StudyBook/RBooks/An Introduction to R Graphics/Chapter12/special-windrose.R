library(openair)




print(
with(wind9am,
     windRose(data.frame(ws=Speed, wd=Dir, 
                         date=Date, station=factor(Station)),

              paddle=FALSE, type="station", width=2))
)


