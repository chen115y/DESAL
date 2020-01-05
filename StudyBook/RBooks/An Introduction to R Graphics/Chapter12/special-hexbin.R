library(hexbin)



data("NHANES", envir=environment())
plot(Serum.Iron ~ Transferin, NHANES)



trellis.par.set(theme = canonical.theme("postscript", color=FALSE))
print(
hexbinplot(Serum.Iron ~ Transferin, NHANES)

)



trellis.par.set(theme = canonical.theme("postscript", color=FALSE))
print(
hexbinplot(Serum.Iron ~ Transferin | Sex, NHANES)

)



