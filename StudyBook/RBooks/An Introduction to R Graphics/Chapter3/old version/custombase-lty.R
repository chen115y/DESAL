names <- c("blank", "solid", "dashed", "dotted", "dotdash",
  "longdash", "twodash", "", "", "13", "F8", "431313", "22848222")
hgap <- unit(5, "mm")
pushViewport(viewport(layout=grid.layout(17, 5,
  widths=unit.c(unit(1, "strwidth", "Integer") + unit(3, "mm"), 
    hgap, unit(1.5, "inches"),
    hgap, max(unit(rep(1, length(names)), "strwidth", data=as.list(names))) + unit(3, "mm")),
  heights=unit(c(1.2, 1, 1, rep(1.2, 7), 1, 1, rep(1.2, 4), 1), "lines"))))
pushViewport(viewport(layout.pos.col=1:5, layout.pos.row=1:17))
grid.rect(width=1.3, height=1.3, gp=gpar(col="grey"))
popViewport()
for (i in 1:17) {
	if (i == 1) {
	  pushViewport(viewport(layout.pos.col=1, layout.pos.row=i))  
	  grid.text("Integer", gp=gpar(fontface="bold"), just="right", x=1)
	  popViewport()
	  pushViewport(viewport(layout.pos.col=3, layout.pos.row=i))  
	  grid.text("Sample line", gp=gpar(fontface="bold"))
	  popViewport()
	  pushViewport(viewport(layout.pos.col=5, layout.pos.row=i))  
	  grid.text("String", gp=gpar(fontface="bold"), just="left", x=0)
	  popViewport()
	  pushViewport(viewport(layout.pos.row=i))  
	  grid.lines(c(0, 1), 0)
	  popViewport()
        } else if (i == 3) {
	    pushViewport(viewport(layout.pos.col=1, layout.pos.row=i))  
	    grid.text("Predefined", just="left", x=0, 
              gp=gpar(fontface="italic"))
	    popViewport()          
        } else if (i == 12) {
	    pushViewport(viewport(layout.pos.col=1, layout.pos.row=i))  
	    grid.text("Custom", just="left", x=0, 
              gp=gpar(fontface="italic"))
	    popViewport()          
	} else if ((i > 3 && i < 11) || 
                   (i > 12 && i < 17)) {
	  if (i < 11) {
	    pushViewport(viewport(layout.pos.col=1, layout.pos.row=i))  
	    grid.text(i-4, just="right", x=1)
	    popViewport()
	  }
	  if (nchar(names[i-3])) {
		  pushViewport(viewport(layout.pos.col=5, layout.pos.row=i))  
		  grid.text(paste("\"", names[i-3], "\"", sep=""), x=0, just="left")
		  popViewport()
		  pushViewport(viewport(layout.pos.col=3, layout.pos.row=i))  
		  grid.lines(c(0, 1), 0.5, gp=gpar(lty=names[i-3], lwd=2))
		  popViewport()
	  }
        }
	if (i == 17) {
	    	  pushViewport(viewport(layout.pos.row=i))  
		  grid.lines(c(0, 1), 0)
		  popViewport()
	}
}
popViewport()



