install.packages("VGAM")
set.seed(123)
library(VGAM)
x <- rlaplace(1000, 0, 1)
Y <- abs(x)
hist(Y, xlab = "y", main = expression(paste("Histogram of Y = ", abs(X))), 
     freq = FALSE)

# we know that y ~ exp(1) from the ques 8
y <- seq(0, 8, length.out = 1000)
pdf <- dexp(y, 1)
lines(y, pdf, col = "firebrick", lwd = 2)