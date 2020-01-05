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
    geom_hline(yintercept=29)

)


gcLimits <- 
    data.frame(category=c("2WD car",
                 "4WD car",
                 "2WD small pick-up truck",
                 "4WD small pick-up truck",
                 "2WD std pick-up truck",
                 "4WD std pick-up truck"),
               limit=c(29, 24, 20, 18, 17, 16))


print(
p + geom_point(aes(x=disp, y=mpg)) +
    geom_hline(data=gcLimits, 
               aes(yintercept=limit),
               linetype="dotted") +
    geom_text(data=gcLimits,
              aes(y=limit + .1, label=category),
              x=70, hjust=0, vjust=0, size=3)

)


