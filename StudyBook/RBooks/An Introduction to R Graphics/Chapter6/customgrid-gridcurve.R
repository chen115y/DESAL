grid.rect(gp=gpar(col="gray"))
grid.circle(c(.1, .3, .4, .6, .7, .9), 
            c(.25, .75), r=unit(1, "mm"),
            gp=gpar(col=NA, fill="gray"))
grid.curve(x1=.1, y1=.25, x2=.3, y2=.75)
grid.curve(x1=.4, y1=.25, x2=.6, y2=.75,
           square=FALSE, ncp=8, curvature=.5)
grid.curve(x1=.7, y1=.25, x2=.9, y2=.75,
           square=FALSE, angle=45, shape=-1)




