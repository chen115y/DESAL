trellis.par.set(theme = canonical.theme("postscript", color=FALSE))
grid.newpage()
pushViewport(viewport(x=0, width=.4, just="left"))
print(barchart(table(mtcars$gear)),
      newpage=FALSE)
popViewport()
pushViewport(viewport(x=.4, width=.6, just="left"))
print(xyplot(mpg ~ disp, data=mtcars,
             group=gear, 
             auto.key=list(space="right"),
             par.settings=list(superpose.symbol=list(pch=c(1, 3, 16),
                                 fill="white"))),
      newpage=FALSE)
popViewport()



