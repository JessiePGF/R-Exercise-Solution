library(openxlsx)
setwd("C:/RCode/1/CH1HW")
df = read.xlsx("BigMac.xlsx")

# (a)
X = df$BigMac
Y = df$`IMF-PPP`
plot(X, Y, xlab = "Big Mac", ylab = "IMF-PPP")

# (b) We can observe there is a positive correlation between Big Mac Index and IMF-PPP

# (c)
Z = df$TWD
rangeMinc = min(min(X), min(Z))
rangeMaxc = max(max(X), max(Z))
plot(X, Z, xlab = "Big Mac", ylab = "TWD", xlim = c(rangeMinc, rangeMaxc), ylim = c(rangeMinc, rangeMaxc))
abline(a = 0, b = 1, lty = 2)

# (d)
rangeMind = min(min(Y), min(Z))
rangeMaxd = max(max(Y), max(Z))
plot(Y, Z, xlab = "IMF-PPP", ylab = "TWD", xlim = c(rangeMind, rangeMaxd), ylim = c(rangeMind, rangeMaxd))
abline(a = 0, b = 1, lty = 2)

# (e) underestimated

# (f)
X.ts = ts(X, freq = 1, start = 2000)
plot(X.ts, main = "Big Mac Index", ylab = '')