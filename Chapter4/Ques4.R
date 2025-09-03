# (b)
x <- seq(-15, 15, length.out = 500)
pdf <- 0.25*exp(-0.5*abs(x))
plot(x, pdf, xlab = "x", ylab = "pdf", type = "l", 
     main = "pdf of Laplace distribution")
lines(x, pdf, lwd = 2)