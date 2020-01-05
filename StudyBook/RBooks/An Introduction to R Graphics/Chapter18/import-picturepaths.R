library(grImport)



library(grImport)
PostScriptTrace(system.file("extra", "comic_moon.ps",
                            package="RGraphics"))


vectorMoon <- readPicture("comic_moon.ps.xml")


picturePaths(vectorMoon[1:6], fill="white", 
             freeScales=TRUE, nr=2, nc=3)



