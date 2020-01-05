library(TeachingDemos)



plot(window(Nile, 1920, 1940))
subplot({ plot(Nile, axes=FALSE, ann=FALSE)
          rect(1920, 0, 1940, 2000, border=NA, col="gray")
          box()
          lines(Nile) }, 
        x=1920, y=1000, size=c(1.5, .75), hadj=0)



