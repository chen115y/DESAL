library(vcd)



mosaic(Priority ~ Schedule, xmm)



mosaic(nObs ~ Schedule + Priority, xmm,
       labeling_args=list(rot_labels=c(right=0), 
         offset_labels=c(right=-.5),
         just_labels=c(right="left")),
       margin=c(right=4))




