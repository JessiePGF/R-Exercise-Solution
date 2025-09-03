x <- runif(100, 0, 1)
y <- c()
a <- rnorm(100, 0, 1)
for(i in 1:length(x)){
  y[i] = 0.8*x[i] + a[i]
} 
plot(x, y, xlab = "x", ylab = "y", main = "Scatter plot of x-y")