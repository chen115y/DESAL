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
    scale_y_continuous(name="miles per gallon") +
    scale_x_continuous(name="displacement (cu.in.)")

)


print(
p + geom_point(aes(x=disp, y=mpg)) +
    scale_y_continuous(limits=c(0, 40)) 

)


print(
p + geom_point(aes(x=disp, y=mpg, 
                   color=trans), size=4) +
    scale_color_manual(values=c(automatic=gray(2/3),
                         manual=gray(1/3)))

)


