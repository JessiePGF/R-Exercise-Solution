library(openxlsx)
setwd("C:/RCode/1/CH1HW")
df = read.xlsx("CPI.xlsx")
X = df$總指數

# (a)
lnX = log(X)
lnX

# (b)
lnX.ts = ts(lnX, freq = 12, start = c(1981, 1))
plot(lnX.ts, main = "CPI", ylab = '')

# (c)
delLnX = c()
for(t in 2:length(lnX)){  # t = 2, 3, ....
  delLnX[t] = lnX[t] - lnX[t - 1]
}
delLnX
delLnX.ts = ts(delLnX, freq = 12, start = c(1981, 2))
plot(delLnX.ts, main = "CPI growth rate", ylab = '')

# (d)
hist(delLnX, freq = FALSE)
