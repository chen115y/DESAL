h <- 0.01
drawexpr <- function(expr, y, exprFamily="CM") {
  grid.text(paste("expression(", expr, ")", sep=""), .5, y-h, 
            just="top", gp=gpar(fontfamily="mono", cex=0.75))
  grid.text(parse(text=expr), .5, y+h, 
            just="bottom", gp=gpar(fontfamily=exprFamily))
}
drawexpr("z[i] == sqrt(x[i]^2 + y[i]^2)", 1/5)
drawexpr("hat(beta) == (X^t * X)^{-1} * X^t * y", 2/5)
drawexpr("bar(x) == sum(frac(x[i], n), i==1, n)", 3/5)
drawexpr("paste(\"Temperature (\", degree, \"C) in 2003\")", 4/5,
         exprFamily="CM2")
grid.rect(gp=gpar(col="gray", fill=NA))



