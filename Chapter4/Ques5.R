a <- 3
x <- seq(3, 15, length.out = 100)
pdf <- exp(-(x-a))
plot(x, pdf, xlab = "x", ylab = "pdf", type = "l", xlim = c(0, 15), 
     xaxt = "n", 
     main = expression(paste("exponential pdf with threshold(", lambda, " = 1)")))
axis(1, at = 0:15)
lines(x, pdf, lwd = 2)