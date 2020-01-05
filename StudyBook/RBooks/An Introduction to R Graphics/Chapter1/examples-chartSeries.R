library(quantmod)
getSymbols("YHOO")
chartSeries(YHOO, subset='last 4 months'
 )




