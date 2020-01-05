library(grImport)



library(grImport)
PostScriptTrace(system.file("extra", "comic_moon.ps",
                            package="RGraphics"))


vectorMoon <- readPicture("comic_moon.ps.xml")


grid.picture(vectorMoon[1:4])



grid.picture(vectorMoon, use.gc=FALSE)



