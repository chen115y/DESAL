library(vcd)



spine(Priority ~ Duration, xmm)



durn <- xmm$Duration/1000
cd_plot(Priority ~ durn, xmm, xlab="Duration (1000s)")



