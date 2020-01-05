library(diagram)



par(mar=rep(1, 4))
plot.new()

nodePos <- coordinates(c(2, 2, 2, 2))

straightarrow(nodePos[1, ], nodePos[3,])

straightarrow(nodePos[3, ], nodePos[4,])
straightarrow(nodePos[3, ], nodePos[5,])
straightarrow(nodePos[5, ], nodePos[6,])
straightarrow(nodePos[6, ], nodePos[4,])
straightarrow(nodePos[5, ], nodePos[7,])
straightarrow(nodePos[6, ], nodePos[8,])
straightarrow(nodePos[7, ], nodePos[8,])

textplain(nodePos[3, ] + c(.2, .02), lab="yes")
textplain(nodePos[5, ] + c(.2, .02), lab="yes")
textplain(nodePos[6, ] + c(.03, .15), lab="yes")
textplain(nodePos[3, ] + c(.2, .02), lab="yes")
textplain(nodePos[5, ] + c(-.03, .125), lab="no")
textplain(nodePos[7, ] + c(-.03, .125), lab="no")
textplain(nodePos[7, ] + c(.2, -.02), lab="no")
textplain(nodePos[8, ] + c(-.03, .125), lab="no")

textrect(nodePos[1, ], .05, .025, lab="start")

textdiamond(nodePos[3, ], .15, .1)
textplain(nodePos[3, ], .08,
          lab=c("do you", "understand flow", "charts?"))
textellipse(nodePos[4, ], .08, .08,
            lab=c("let's go", "drink."))
textdiamond(nodePos[5, ], .15, .1)
textplain(nodePos[5, ], .08,
          lab=c("you see", "the lines labeled", "'yes'?"))
textdiamond(nodePos[6, ], .15, .1)
textplain(nodePos[6, ], .08,
          lab=c("you see", "the lines labeled", "'no'?"))
textdiamond(nodePos[7, ], .15, .1)
textplain(nodePos[7, ], .08,
          lab=c("you see", "the lines labeled", "'no'?"))
textellipse(nodePos[8, ], .07, .07,
            lab=c("I hate", "you."))



