validDetails.imageGrob <- function(x) { 
  if (!is.numeric(x$nrow) || length(x$nrow) > 1 || 
      !is.numeric(x$ncol) || length(x$ncol) > 1)
    stop("nrow and ncol must be numeric and length 1")
  if (!is.logical(x$byrow))
    stop("byrow must be logical")
  x 
} 

validDetails.ozGrob <- function(x) {
  if (!inherits(x$ozRegion, "ozRegion"))
    stop("Invalid ozRegion")
  x
}


