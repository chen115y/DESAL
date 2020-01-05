mtcars2 <- mtcars
mtcars2$trans <- factor(mtcars$am, 
                        levels=0:1, 
                        labels=c("automatic", "manual"))
mtcars2$gear <- as.factor(mtcars$gear)
mtcars2$am <- NULL
mtcars2$vs <- NULL
mtcars2$drat <- NULL
mtcars2$carb <- NULL



grid.newpage()
pushViewport(viewport(x=0, width=1/3, just="left"))
print(ggplot(mtcars2, aes(x=trans)) + 
      geom_bar(),
      newpage=FALSE)
popViewport()
pushViewport(viewport(x=1/3, width=2/3, just="left"))
print(ggplot(mtcars2, aes(x=disp, y=mpg)) +
      geom_point(aes(color=trans)) +
      scale_color_manual(values=gray(2:1/3)),
      newpage=FALSE)
popViewport()



