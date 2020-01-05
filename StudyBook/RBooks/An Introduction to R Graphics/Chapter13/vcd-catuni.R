xmm <- read.table(file.path("XMM-Newton", "XMM-Newton.txt"),
                  header=TRUE)



counts <- sort(table(xmm$Category))

par(mfrow=c(1, 2), mar=c(3, 3, 2, 2))

barplot(counts)
dotchart(counts)




print(barchart(counts), pos=c(0, 0, .5, 1),
      more=TRUE)
print(dotplot(counts), pos=c(.5, 0, 1, 1))



grid.newpage()
catSort <- data.frame(Category=factor(xmm$Category, levels=names(counts)))
pushViewport(viewport(x=0, width=.5, just="left"))
print(ggplot(catSort) +
      geom_bar(aes(x=Category)), newpage=FALSE)
popViewport()
pushViewport(viewport(x=1, width=.5, just="right"))
catCounts <- data.frame(Category=factor(names(counts), levels=names(counts)),
                        Count=counts)
print(ggplot(catCounts) +
      geom_point(aes(y=Category, x=Count)),
      newpage=FALSE)
popViewport()




