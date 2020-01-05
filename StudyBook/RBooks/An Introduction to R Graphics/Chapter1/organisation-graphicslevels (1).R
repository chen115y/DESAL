library(graph)
library(Rgraphviz)

grpkgs <- new("graphNEL", 
              nodes=c(
                # engine
                "grDevices", 
                # systems
                "graphics", "grid",
                # graphics-based packages
                "maps", "diagram", "plotrix", "gplots", "pixmap", 
                # grid-based packages
                "lattice", "ggplot2", "grImport", "gridBase", "vcd",
                # interface packages
                "rgl", "rggobi", "iplots",
                # devices
                "JavaGD", "Cairo", "tikzDevice"),
                # ggplot-based packages
                # "DescribeDisplay",
                # lattice-based packages
                # "latticist", "latticeExtra"),
              edgeL=list(
                grDevices=list(edges=c("graphics", "grid",
                                 "JavaGD", "Cairo", "tikzDevice")),
                graphics=list(edges=c("maps", "diagram", "plotrix",
                                "gplots", "pixmap", 
                                "gridBase")),
                grid=list(edges=c("lattice", "ggplot2", "grImport", "vcd",
                            "gridBase")),
                maps=list(),
                diagram=list(),
                plotrix=list(),
                gplots=list(),
                pixmap=list(),
                lattice=list(), # edges=c("latticist", "latticeExtra")), 
#                latticist=list(),
#                latticeExtra=list(),
                ggplot2=list(), # edges="DescribeDisplay"),
                # DescribeDisplay=list(),
                grImport=list(),
                gridBase=list(),
                vcd=list(),
                # Invisible links to tie interface packages together
                rgl=list(edges="rggobi"),
                rggobi=list(edges="iplots"),
                iplots=list(edges="rgl"),
#                GDD=list(edges=c("grDevices")),
#                JavaGD=list(edges=c("grDevices")),
#                Cairo=list(edges=c("grDevices")),
#                cairoDevice=list(edges=c("grDevices")),
#                tikzDevice=list(edges="grDevices")),
                JavaGD=list(),
                Cairo=list(),
                tikzDevice=list()),
              edgemode="directed")

# systemPkgs <- subGraph(c("graphics", "grid"), grpkgs)
# graphicsPkgs <- subGraph(c("maps", "diagram", "plotrix",
#                            "gplots", "pixmap"), grpkgs)
# gridPkgs <- subGraph(c("grid", "lattice", "ggplot2", "grImport"), grpkgs)
# 
# devicePkgs <- subGraph(c("GDD", "JavaGD", "Cairo", 
#                          "cairoDevice", "tikzDevice"),
#                        grpkgs)
interfacePkgs <- subGraph(c("iplots", "rggobi", "rgl"), grpkgs)

ragraph <- agopen(grpkgs, name="whatever",
                  # layoutType="dot", 
                  layoutType="dot", 
                  # layoutType="twopi", 
                  attrs=list(
                    node=list(fontname="Helvetica", fontsize=10),
                    edge=list(arrowhead="none"),
                    # NOTE: size and margins controlled below in call to 'dot'
                    graph=list(
                      root="grDevices",
                      # ratio=3/4,
                      rankdir="LR")),
#                      compound=TRUE)),
                  subGList=list(
#                    list(graph=devicePkgs), 
#                    list(graph=systemPkgs),
#                    list(graph=graphicsPkgs),
#                    list(graph=gridPkgs),
                    list(graph=interfacePkgs)))

nodeDataDefaults(ragraph, "style") <- "filled"
nodeDataDefaults(ragraph, "fillcolor") <- "gray90"
nodeData(ragraph, c("grDevices", "graphics", "grid", "lattice", "ggplot2"), 
         "style") <- "filled"
nodeData(ragraph, c("grDevices", "graphics", "grid", "lattice", "ggplot2"), 
         "fillcolor") <- "gray70"

# clusterData(ragraph, 0, "label") <- "Devices"
# clusterData(ragraph, 1, "label") <- "Systems"
# clusterData(ragraph, 2, "label") <- "Graphics-based Packages"
# clusterData(ragraph, 3, "label") <- "Grid-based Packages"
clusterData(ragraph, 0, "style") <- "dashed"

# Edge from "grDevices" to "Interface Packages" cluster
# (Needs existing link from grDevices to rgl)
# edgeDataDefaults(ragraph, "lhead") <- NA
# edgeData(ragraph, "grDevices", "rgl", "lhead") <- "cluster_1" 

# Edges within "Interface Packages" cluster
edgeData(ragraph, "rgl", "rggobi", "style") <- "invis"
edgeData(ragraph, "rggobi", "iplots", "style") <- "invis"
edgeData(ragraph, "iplots", "rgl", "style") <- "invis"
# edgeData(ragraph, "pixmap", "rgl", "style") <- "invis"
# edgeData(ragraph, "gridBase", "rggobi", "style") <- "invis"
# edgeData(ragraph, "lattice", "iplots", "style") <- "invis"

toFile(ragraph, filename="grpkgs.dot", fileType="dot")
system("dot -Kneato grpkgs.dot -Tps -Gsize='8,8' -Gmargin=0 > organisation-graphicslevels.ps") 





