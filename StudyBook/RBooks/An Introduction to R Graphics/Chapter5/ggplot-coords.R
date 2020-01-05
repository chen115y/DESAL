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
p + geom_point(aes(x=disp, y=mpg)) + 
    scale_x_continuous(trans="log") +
    scale_y_continuous(trans="log") +
    geom_line(aes(x=disp, y=mpg), stat="smooth", 
              method="lm")

)


print(
p + geom_point(aes(x=disp, y=mpg)) + 
    scale_x_continuous(trans="log") +
    scale_y_continuous(trans="log") +
    geom_line(aes(x=disp, y=mpg), stat="smooth", 
              method="lm") +
    coord_trans(xtrans="exp", ytrans="exp")

)


print(
p + geom_bar(aes(x="", fill=trans)) +
    scale_fill_manual(values=gray(1:2/3))

)


print(
p + geom_bar(aes(x="", fill=trans)) +
    scale_fill_manual(values=gray(1:2/3)) +
    coord_polar(theta="y") 

)


