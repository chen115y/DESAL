library(vcdExtra)



# Need the .1 cos the handling of zero cells seems off
# Also need the custom shading to produce gray-scale
mosaic3d(structable(~ Priority + Schedule + nObs, xmm) + .1, 
         shading=function(x) { "gray" })



