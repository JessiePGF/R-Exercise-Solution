z = c()
standard = function(x){
  sqrt(100)*(mean(x) - 0.7)/sd(x)
}
n = 100
m = 10000
x = matrix(rbinom(n*m, 1, 0.7), nrow = n, ncol = m)
z = apply(x, MARGIN = 2, FUN = standard)
hist(z, main = "Histogram of Z", ylab = '')