grid.rect(gp=gpar(col="gray"))
pushViewport(viewport(gp=gpar(fill=NA)))
grid.circle(.25, .5, r=unit(1, "mm"), 
            gp=gpar(fill="black"))
grid.text("A label", .75, .5)
grid.rect(.75, .5, 
          width=stringWidth("A label") + unit(2, "mm"),
          height=unit(1, "line"),
          name="labelbox")

grid.segments(.25, .5, 
              grobX("labelbox", 180), .5,
              arrow=arrow(angle=15, type="closed"),
              gp=gpar(fill="black"))





