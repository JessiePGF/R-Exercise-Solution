# (a)
f1 <- function(x){1/4 + 0*x}
f2 <- function(x){3/4 + 0*x}
F1 <- integrate(f1, lower = 0, upper = 1)$value
F2 <- integrate(f2, lower = 2, upper = 3)$value
F1 + F2

plot(NA, xlab = "x", ylab = "f(x)", xlim = c(-1, 4), ylim = c(0, 1), 
     main = "pdf")
for (a in 0:1){
  points(a, 1/4, pch = 1)
  points(a + 2, 3/4, pch = 1)
}
lines(c(0, 1), c(1/4, 1/4), lty = 1, lwd = 2)
lines(c(2, 3), c(3/4, 3/4), lty = 1, lwd = 2)
for (b in 0:1){
  lines(c(b, b), c(0, 1/4), lty = 2)
}
for (c in 2:3){
  lines(c(c, c), c(0, 3/4), lty = 2)
}

# (c)
plot(NA, xlab = "x", ylab = "F(x)", xlim = c(0, 4), ylim = c(0, 1), 
     main = "CDF")
for (i in 0:1){
  points(i, 0.25*i, pch = 1)
}
x1 = seq(0, 1, length.out = 100)
CDF1 = 0.25*x1
lines(x1, CDF1, lwd = 2)
lines(c(1, 2), c(1/4, 1/4), lwd = 2)
for (i in 2:3){
  points(i, 0.75*i - 1.25, pch = 1)
}
x2 = seq(2, 3, length = 100)
CDF2 = 0.75*x2 - 1.25
lines(x2, CDF2, lwd = 2)
lines(c(3, 4), c(1, 1), lwd = 2)