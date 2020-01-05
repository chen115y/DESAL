library(hyperdraw)



dh <- DirectedHyperedge(c("A", "B"), c("C", "D"))
hg <- Hypergraph(LETTERS[1:4], list(dh))
getMethod("plot", "graphBPH")(graphBPH(hg))



