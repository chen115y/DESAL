mtcars2 <- mtcars
mtcars2$trans <- factor(mtcars$am, 
                        levels=0:1, 
                        labels=c("automatic", "manual"))
mtcars2$gear <- as.factor(mtcars$gear)
mtcars2$am <- NULL
mtcars2$vs <- NULL
mtcars2$drat <- NULL
mtcars2$carb <- NULL



print(
ggplot(mtcars2, aes(x=disp, y=mpg)) +
    geom_point()

)
downViewport("panel.3-4-3-4")
grid.text(paste("n =", nrow(mtcars2)),
          x=unit(1, "npc") - unit(1, "mm"), 
          y=unit(1, "npc") - unit(1, "mm"),
          just=c("right", "top"))




