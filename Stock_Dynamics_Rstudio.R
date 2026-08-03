IBM <- read.csv("IBMStock.csv")
GE <- read.csv("GEStock.csv")
ProcterGamble <- read.csv("ProcterGambleStock.csv")
CocaCola <- read.csv("CocaColaStock.csv")
Boeing <- read.csv("BoeingStock.csv")

IBM <- IBMStock_cvs
GE <- GEStock_cvs
ProcterGamble <- ProcterGambleStock_cvs
CocaCola <- CocaColaStock_cvs
Boeing <- BoeingStock_cvs

IBM$Date = as.Date(IBM$Date, "%m/%d/%y")

GE$Date = as.Date(GE$Date, "%m/%d/%y")

CocaCola$Date = as.Date(CocaCola$Date, "%m/%d/%y")

ProcterGamble$Date = as.Date(ProcterGamble$Date, "%m/%d/%y")

Boeing$Date = as.Date(Boeing$Date, "%m/%d/%y")

str(IBM)

summary(IBM)
summary(GE)
summary(CocaCola)
summary(ProcterGamble)
summary(Boeing)

sd(ProcterGamble$StockPrice)

plot(CocaCola$Date, CocaCola$StockPrice, type = "l", col = "blue")
lines(ProcterGamble$Date, ProcterGamble$StockPrice, col = "red")
abline(v = as.Date("2000-03-01"), lwd = 2)
abline(v = as.Date("1983-03-01"), lwd = 2, col = "green")

plot(CocaCola$Date[301:432], CocaCola$StockPrice[301:432],
     type = "l", col = "red", ylim = c(0,210))
lines(ProcterGamble$Date[301:432], ProcterGamble$StockPrice[301:432], col = "blue")
lines(IBM$Date[301:432], IBM$StockPrice[301:432], col = "green")
lines(GE$Date[301:432], GE$StockPrice[301:432], col = "purple")
lines(Boeing$Date[301:432], Boeing$StockPrice[301:432], col = "orange")

abline(v = as.Date("1997-09-01"), lwd = 1, col = "blue")
abline(v = as.Date("1197-11-01"), lwd = 1, col = "red")
abline(v = as.Date("2004-01-01"), lwd = 1, col = "green")

tapply(IBM$StockPrice, months(IBM$Date), mean)
tapply(GE$StockPrice, months(GE$Date), mean)
tapply(CocaCola$StockPrice, months(CocaCola$Date), mean)
tapply(Boeing$StockPrice, months(Boeing$Date), mean)
tapply(ProcterGamble$StockPrice, months(ProcterGamble$Date), mean)