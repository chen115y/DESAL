library(playwith)
playwith(xyplot(mpg ~ disp, mtcars))
playwith(xyplot(qsec ~ wt, mtcars), 
         new=TRUE, link.to=playDevCur())


