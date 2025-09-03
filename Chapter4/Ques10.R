n = 100
x = rexp(n, rate = 1/4)
hist(x, breaks = 20, right = FALSE, freq = FALSE, 
     main = expression(paste("Histogram of exp (", beta, " = 4)")), 
     xlim = c(0, 15))

y = seq(0, 15, length.out = 100)
pdf = dexp(y, rate = 1/4)
lines(y, pdf, lwd = 2, col = "firebrick")