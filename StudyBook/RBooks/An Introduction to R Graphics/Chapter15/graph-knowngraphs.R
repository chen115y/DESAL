library(igraph)



treeIgraph <- graph.tree(10)
fullIgraph <- graph.full(10)



# See ?igraph.plotting for useful graph attributes
treeIgraph <- set.vertex.attribute(treeIgraph, "color", value="black")
treeIgraph <- set.edge.attribute(treeIgraph, "color", value="black")
plot(treeIgraph, 
     layout=layout.reingold.tilford(treeIgraph, root=1, flip.y=FALSE))



fullIgraph <- set.vertex.attribute(fullIgraph, "color", value="black")
fullIgraph <- set.edge.attribute(fullIgraph, "color", value="black")
plot(fullIgraph, layout=layout.circle)



