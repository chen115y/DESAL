mtcars2 <- mtcars
mtcars2$trans <- factor(mtcars$am, 
                        levels=0:1, 
                        labels=c("automatic", "manual"))
mtcars2$gear <- as.factor(mtcars$gear)
mtcars2$am <- NULL
mtcars2$vs <- NULL
mtcars2$drat <- NULL
mtcars2$carb <- NULL
mtcars2$wt <- NULL
mtcars2$hp <- NULL
mtcars2$qsec <- NULL



p <- ggplot(mtcars2)



print(
p + geom_point(aes(x=disp, y=mpg, shape=trans)) +
    scale_shape_manual(values=c(1, 3))

)


print(
ggplot(mtcars2, aes(x=disp, y=mpg)) + 
    geom_point() +
    stat_smooth(aes(group=trans),
                method="lm")

)


