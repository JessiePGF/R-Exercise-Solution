library(openxlsx)
setwd("C:/RCode/1/CH1HW")
df = read.xlsx("EXUSUK.xlsx", sheet = "Monthly")
X = df$EXUSUK
X

# (a)
lnX = log(X)
lnX

# (b)
lnX.ts = ts(lnX, freq = 12, start = c(1971, 1))
plot(lnX.ts, main = "EXUSUK", ylab = '')

# (c)
delX = c()
for(t in 2:length(lnX)){  # t = 2, 3, ......
  delX[t] = lnX[t] - lnX[t-1]
}
delX
delX.ts = ts(delX, freq = 12, start = c(1971, 2))
plot(delX.ts, main = "EXUSUK growth rate", ylab = '')

# (d)
hist(delX)

# (e)
delXClean = na.omit(delX)
delXClean
plot(density(delXClean), main = "pdf of delta Xt", xlab = "delta Xt")