trellis.par.set(theme = canonical.theme("postscript", color=FALSE))
catTab <- table(xmm$Schedule, xmm$Priority)
print(barchart(prop.table(catTab, margin=1), col=gray(1:3/4)),
      pos=c(0, 0, .5, 1), more=TRUE)
print(barchart(prop.table(catTab, margin=1), col=gray(1:3/4), stack=FALSE),
      pos=c(.5, 0, 1, 1))



grid.newpage()
pushViewport(viewport(x=0, width=.5, just="left"))
print(
ggplot(as.data.frame(prop.table(catTab, margin=1))) +
    geom_bar(aes(x=Var1, fill=Var2, y=Freq), 
             stat="identity", col="black") +
    scale_fill_manual(values=gray(1:3/3)),
      newpage=FALSE)
popViewport()
pushViewport(viewport(x=1, width=.5, just="right"))
print(
ggplot(as.data.frame(prop.table(catTab, margin=1))) +
    geom_bar(aes(x=Var1, fill=Var2, y=Freq), 
             stat="identity", col="black", position="dodge") +
    scale_fill_manual(values=gray(1:3/3)),
      newpage=FALSE)
popViewport()




