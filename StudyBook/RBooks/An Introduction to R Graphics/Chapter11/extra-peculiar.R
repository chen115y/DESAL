library(plotrix)




library(TeachingDemos)



par(mar=rep(0, 4))
plot.new()
plot.window(0:1, c(.1, 1))
draw.circle(.1, .9, radius=1:5/100)
draw.arc(.3, .9, radius=1:5/100, 
         deg1=45, deg2=seq(360, 160, -50))
arctext("arctext", center=c(.5, .85), radius=.05,
        stretch=1.2)

text(.1, .8, "draw.circle")
text(.3, .8, "draw.arc")
boxed.labels(.7, .85, "boxed.labels", bg="gray90")
textbox(c(.85, 1), .9, "this is a textbox .")

gradient.rect(.05, .5, .15, .7, col=gray(0:20/21))
cylindrect(.25, .5, .35, .7, "black")
rectFill(.45, .5, .55, .7, pch=16)

text(.1, .45, "gradient.rect")
text(.3, .45, "cylindrect")
text(.5, .45, "rectFill")
x <- c(.65, .65, .75, .75)
y <- c(.5, .7, .7, .5)
polygon.shadow(x, y, offset=c(2/100, -2/100))
polygon(x, y, col="white")

text(.7, .45, "polygon.shadow")
shadowtext(.9, .6, "shadowtext")

my.symbols(seq(.3, .7, .2), .3,
           ms.male, inches=.2)
my.symbols(c(.4, .6), .3,
           ms.female, inches=.2)

text(.5, .2, "my.symbols")
box(col="gray")



