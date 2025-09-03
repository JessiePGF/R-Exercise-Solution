set.seed(123)
n = 10000
x = rpois(n, 2)
y = rpois(n, 3)
w = rpois(n, 5)
z = x + y
hist(z, main = "Histogram of Zi and Wi", ylab = "frequency", xlab = "w, z",
     xlim = c(0, 15), col = rgb(1, 0, 0, alpha = 0.5), xaxt = 'n')
hist(w, col = rgb(0, 0, 1, alpha = 0.5), add = TRUE)
legend("topright", legend = c("z", "w"), 
       fill = c(rgb(1, 0, 0, alpha = 0.5), rgb(0, 0, 1, alpha = 0.5)))
axis(1, at = 0:15)

# Poisson distribution's additivity