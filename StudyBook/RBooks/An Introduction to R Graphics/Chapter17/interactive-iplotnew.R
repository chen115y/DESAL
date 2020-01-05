library(iplots)



iplot(mtcars$disp, mtcars$mpg)
ibar(mtcars$gear)


iplot.set(1)



labels <- mapply("itext", 
                 mtcars$disp, mtcars$mpg, rownames(mtcars), 
                 MoreArgs=list(visible=FALSE), SIMPLIFY=FALSE)
olds <- NULL
while (!is.null(ievent.wait())) {
    if (iset.sel.changed()) {
        s <- iset.selected()
        if (length(s) > 1) {
            lapply(labels[s], iobj.opt, visible = TRUE)
        }
        if (length(olds) > 1) {
            lapply(labels[olds], iobj.opt, visible = FALSE)
        }
        olds <- s
    }
}


