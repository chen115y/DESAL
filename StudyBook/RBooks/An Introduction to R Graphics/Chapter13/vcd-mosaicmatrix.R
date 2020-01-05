xmm <- read.table(file.path("XMM-Newton", "XMM-Newton.txt"),
                  header=TRUE)



library(vcd)



pairs(structable(nObs ~ Priority + Schedule, xmm),
      space=.15)



