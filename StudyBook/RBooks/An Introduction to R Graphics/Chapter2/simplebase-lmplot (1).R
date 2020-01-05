  par(mfrow=c(2, 2), cex=0.6, mar=c(4, 4, 4, 2), mex=0.8)
  plot(lm.SR <- lm(sr ~ pop15 + pop75 + dpi + ddpi, data = LifeCycleSavings),
       id.n=1, cex.caption=0.8, which=1:4,
       panel=function(...) { panel.smooth(..., col.smooth="gray") })



