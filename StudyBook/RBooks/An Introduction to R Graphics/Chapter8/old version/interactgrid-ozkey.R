ozKey <- function(x, y, width, height, just, 
                  mapLong, mapLat) {
  gTree(childrenvp=viewport(name="ozkeyframe",
                            x=x, y=y, just=just,
                            width=width, height=height),
        children=gList(ozGrob(ozRegion(), vp="ozkeyframe",
                              gp=gpar(lwd=0.1)),
                       rectGrob(x=mean(mapLong),
                                y=mean(mapLat),
                                width=abs(diff(mapLong)),
                                height=abs(diff(mapLat)),
                                default.units="native",
                                gp=gpar(lwd=1),
                                vp=vpPath("ozkeyframe",
                                          "ozlay", "ozvp"))))
}


