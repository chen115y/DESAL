library(party)

# CLASSIFICATION
# fitting
library(ipred)
data("GlaucomaM", envir=environment())
glau <- GlaucomaM
levels(glau$Class) <- c("glau", "norm")
fm.class <- ctree(Class ~ ., data = glau)

# visualization
pushViewport(viewport(gp=gpar(cex=0.6)))
plot(fm.class, new=FALSE, terminal.panel=myNode)
popViewport()



