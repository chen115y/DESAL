library(rggobi)
mtcars$gear <- factor(mtcars$gear)
mtcars$cyl <- factor(mtcars$cyl)
gg <- ggobi(mtcars)


