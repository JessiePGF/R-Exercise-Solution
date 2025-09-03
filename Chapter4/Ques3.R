# (a)
x <- seq(-15, 15, length.out = 500)
pdf <- exp(-x)/(1 + exp(-x))**2
plot(x, pdf, type = "l", xlab = "x", ylab = "f(x)", 
     main = "pdf of logistic distribution", lwd = 2)
