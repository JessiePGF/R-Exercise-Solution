set.seed(123)
n = 5000
x = c("H", "T")
y = sample(x, size = n, replace = TRUE, prob = c(0.5, 0.5))
z = cumsum(y == "H")/seq(1, n)

# (a)
plot(z, type = "l")
abline(a = 0.5, b = 0, lty = 1, col = "blue")

# (b) coverage to 0.5, WLLN

# (c)
set.seed(123)
par(mfrow = c(2, 2))
x = c("H", "T")
nList = c(50, 100, 500, 1000)
for (ni in nList) {
  yi = sample(x, size = ni, replace = TRUE, prob = c(0.3, 0.7))
  zi = cumsum(yi == "H")/seq(1, ni)
  plot(zi, type = "l", main = paste("n = ", ni), xlab = "Number of trials")
  abline(a = 0.3, b = 0, lty = 1, col = 'blue')
}
