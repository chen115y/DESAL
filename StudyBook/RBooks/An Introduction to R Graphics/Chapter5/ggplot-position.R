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
p + geom_bar(aes(x=trans, fill=factor(cyl)),
             color="black") +
    scale_fill_manual(values=gray(1:3/3))

)


print(
p + geom_bar(aes(x=trans, fill=factor(cyl)),
             color="black",
             position="dodge") +
    scale_fill_manual(values=gray(1:3/3))

)


print(
p + geom_bar(aes(x=trans, fill=factor(cyl)),
             color="black",
             position="fill") +
    scale_fill_manual(values=gray(1:3/3))

)


