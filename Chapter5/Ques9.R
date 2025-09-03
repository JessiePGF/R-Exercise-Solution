# (c)
x <- seq(-15, 15, length.out = 500)
CDF <-  1/(1 + exp(-x))
plot(x, CDF, type = "l", xlab = "x", ylab = "F(x)", 
     main = "CDF of logistic distribution", lwd = 2)