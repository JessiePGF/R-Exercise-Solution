library(openxlsx)
setwd("C:/RCode/1/CH1HW")
df1 = read.xlsx("TAIEX.xlsx")
df2 = read.xlsx("FXoption.xlsx")
x = df1$TAIEX
y = df2$`銀行對顧客市場-選擇權`

# (a) when the market is unstable, investors may purchase option to avoid potential losses

#(b)
plot(x, y, xlab = "TAIEX", ylab = "FX Option", main = "Scatter plot of TAIEX and FX Option")