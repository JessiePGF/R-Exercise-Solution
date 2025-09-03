# (a)
# f(x)
plot(NA, xlab = "x", xlim = c(0, 10), ylab = "f(x)", ylim = c(0, 1), 
     main = "pdf")
axis(1, at = 0:10)
points(5, 1/3, pch = 1)
points(8, 1/3, pch = 1)
lines(c(5, 5), c(0, 1/3), lty = 2)
lines(c(8, 8), c(0, 1/3), lty = 2)
lines(c(5, 8), c(1/3, 1/3), lty = 1, lwd = 2)

# F(x)
plot(NA, xlab = "x", xlim = c(0, 10), ylab = "f(x)", ylim = c(0, 1), 
     main = "CDF")
axis(1, at = 0:10)
points(5, 0, pch = 1)
points(8, 1, pch = 1)
lines(c(0, 5), c(0, 0), lty = 1, lwd = 2)
lines(c(8, 10), c(1, 1), lty = 1, lwd = 2)
x = seq(5, 8, length.out = 100)
CDF = (x - 5)/3
lines(x, CDF, lwd = 2)