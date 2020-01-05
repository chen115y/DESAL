splitString <- function(text) {
  strings <- strsplit(text, " ")[[1]]
  newstring <- strings[1]
  linewidth <- stringWidth(newstring)
  gapwidth <- stringWidth(" ")
  availwidth <- 
    convertWidth(unit(1, "npc"), 
                 "inches", valueOnly=TRUE) 
  for (i in 2:length(strings)) {
    width <- stringWidth(strings[i])
    if (convertWidth(linewidth + gapwidth + width, 
                     "inches", valueOnly=TRUE) <
        availwidth) {
      sep <- " "
      linewidth <- linewidth + gapwidth + width
    } else {
      sep <- "\n"
      linewidth <- width
    }
    newstring <- paste(newstring, strings[i], sep=sep)
  }
  newstring
}   


text <- "The quick brown fox jumps over the lazy dog."
grid.text(splitString(text), 
          x=0, y=1, just=c("left", "top")) 



splitTextGrob <- function(text, ...) {
  grob(text=text, cl="splitText", ...)
}

drawDetails.splitText <- function(x, recording) {
  grid.text(splitString(x$text),
            x=0, y=1, just=c("left", "top")) 
}


pushViewport(viewport(layout=grid.layout(2, 2)))
pushViewport(viewport(layout.pos.col=1))
pushViewport(viewport(width=0.5, height=0.9))
grid.rect(gp=gpar(col="grey"))
text <- "The quick brown fox jumps over the lazy dog."
grid.text(splitString(text), 
          x=0, y=1, just=c("left", "top")) 

popViewport(2)
pushViewport(viewport(layout.pos.col=2, layout.pos.row=1))
pushViewport(viewport(height=0.8))
grid.rect(gp=gpar(col="grey"))
splitText <- splitTextGrob(text, name="splitText")
grid.draw(splitText)

popViewport(2)
pushViewport(viewport(layout.pos.col=2, layout.pos.row=2))
pushViewport(viewport(height=0.8))
grid.rect(gp=gpar(col="grey"))
grid.draw(editGrob(splitText, gp=gpar(cex=1.5)))
popViewport(2)
popViewport()



