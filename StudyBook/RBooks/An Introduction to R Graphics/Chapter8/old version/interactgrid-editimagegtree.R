editDetails.imageGrob <- function(x, specs) { 
  if (any(c("ncol", "nrow", "byrow") %in% names(specs))) { 
    x <- addGrob(x, makeImageRect(x$nrow, x$ncol,
                                  x$cols, x$byrow))
  } 
  if (any(c("cols") %in% names(specs))) { 
    x <- editGrob(x, "image", gp=gpar(fill=x$cols))
  } 
  x 
} 

editDetails.ozGrob <- function(x, specs) {
  if ("ozRegion" %in% names(specs)) {
    x$childrenvp <- makeOzViewports(x$ozRegion)
    x <- setChildren(x, makeOzLines(x$ozRegion))
  }
  x
}


