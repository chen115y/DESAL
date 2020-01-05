drawClock <- function(hour, minute) {
    t <- seq(0, 2*pi, length=13)[-13]
    x <- cos(t)
    y <- sin(t)

    grid.newpage()
    pushViewport(dataViewport(x, y, gp=gpar(lwd=4)))
    # Circle with ticks
    grid.circle(x=0, y=0, default.units="native", 
                r=unit(1, "native"))
    grid.segments(x, y, x*.9, y*.9, default.units="native")
    # Hour hand
    hourAngle <- pi/2 - (hour + minute/60)/12*2*pi
    grid.segments(0, 0, 
                  .6*cos(hourAngle), .6*sin(hourAngle), 
                  default.units="native", gp=gpar(lex=4))
    # Minute hand
    minuteAngle <- pi/2 - (minute)/60*2*pi
    grid.segments(0, 0, 
                  .8*cos(minuteAngle), .8*sin(minuteAngle), 
                  default.units="native", gp=gpar(lex=2))    
    grid.circle(0, 0, default.units="native", r=unit(1, "mm"),
                gp=gpar(fill="white"))
}


library(gWidgetsRGtk2)



window <- gwindow("Clock")



allContent <- ggroup(container=window, horizontal=FALSE)



graphicTime <- ggraphics(container=allContent)



timeContent <- ggroup(container=allContent)



textLabel <- glabel("")



randomizeTime <- function(h, ...) {
    hour <- sample(1:12, 1)
    minute <- sample(seq(0, 55, 5), 1)
    drawClock(hour, minute)
    visible(textLabel) <- FALSE
    svalue(textLabel) <- paste(hour, 
                               sprintf("%02d", minute), 
                               sep=":")
}



reset <- gbutton("Randomize Time", 
                 handler=randomizeTime)



textButton <- gbutton("Show Time", 
                      handler=function(h, ...) {
                          visible(textLabel) <- TRUE
                      })


add(timeContent, reset)
add(timeContent, textButton)
add(timeContent, textLabel)



