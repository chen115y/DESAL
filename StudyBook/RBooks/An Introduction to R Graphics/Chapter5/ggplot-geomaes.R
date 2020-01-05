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
p + geom_point(aes(x=disp, y=mpg))

)


print(
p + geom_point(aes(x=disp, y=mpg, shape=gear),
               size=4) +
  opts(legend.position="none")
)


print(
p + geom_text(aes(x=disp, y=mpg, label=gear))

)


lmcoef <- coef(lm(mpg ~ disp, mtcars2))



print(
p + geom_point(aes(x=disp, y=mpg)) +
    geom_abline(intercept=lmcoef[1], slope=lmcoef[2])

)


