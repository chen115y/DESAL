splitTextGrob <- function(text, ...) {
  grob(text=text, cl="splitText", ...)
}

drawDetails.splitText <- function(x, recording) {
  grid.text(splitString(x$text),
            x=0, y=1, just=c("left", "top")) 
}


