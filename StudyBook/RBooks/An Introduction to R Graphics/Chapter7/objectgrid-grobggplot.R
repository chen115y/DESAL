mtcars2 <- mtcars
mtcars2$trans <- factor(mtcars$am, 
                        levels=0:1, 
                        labels=c("automatic", "manual"))
mtcars2$am <- NULL
mtcars2$vs <- NULL
mtcars2$drat <- NULL
mtcars2$carb <- NULL



update_geom_defaults("smooth", aes(color="black"))
print(
ggplot(mtcars2, aes(x=disp, y=mpg)) +
    geom_point() +
    geom_smooth(method=lm)

)
downViewport("panel.3-4-3-4")
sline <- grid.get(gPath("smooth", "polyline"),
                  grep=TRUE)
grid.segments(.7, .8, 
              grobX(sline, 45), grobY(sline, 45),
              arrow=arrow(angle=10, type="closed"),
              gp=gpar(fill="black"))
grid.text("line of best fit", .71, .81,
          just=c("left", "bottom"))




