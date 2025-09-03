lambda = 2.4
x = c(0:5)

# (a)
n = 5
dbinom(x, n, p = lambda/n)

# (b)
n = 10
dbinom(x, n, p = lambda/n)

# (c)
n = 100
dbinom(x, n, p = lambda/n)

# (d)
n = 1000
dbinom(x, n, p = lambda/n)

# (e)
n = 10000
dbinom(x, n, p = lambda/n)

# (f)
y = c(0:5)
dpois(y, 2.4)

# (g)
par(mfrow = c(2,2))

x10 = c(0:10)
pmf10 = dbinom(x10, 10, p = 2.4/10)
plot(x10, pmf10, xlab = "x", ylab = "probability", 
     main = "pmf of Binomial distribution (n = 10, p = 0.24)")
lines(x10, pmf10, lwd = 1)
points(x10, pmf10, pch = 16)

x30 = c(0:10)
pmf30 = dbinom(x30, 30, p = 2.4/30)
plot(x30, pmf30, xlab = "x", ylab = "probability", 
     main = "pmf of Binomial distribution (n = 30, p = 0.08)")
lines(x30, pmf30, lwd = 1)
points(x30, pmf30, pch = 16)

x100 = c(0:10)
pmf100 = dbinom(x100, 100, p = 2.4/100)
plot(x100, pmf100, xlab = "x", ylab = "probability", 
     main = "pmf of Binomial distribution (n = 100, p = 0.024)")
lines(x100, pmf100, lwd = 1)
points(x100, pmf100, pch = 16)

y = c(0:10)
pmfy = dpois(y, 2.4)
plot(y, pmfy, xlab = "y", ylab = "probability", 
     main = "pmf of Poisson distribution (lambda = 2.4)")
lines(y, pmfy, lwd = 1)
points(y, pmfy, pch = 16)

#(h) when n is big, p is relatively small. Binomial approximately approach Poisson distribution.
# n*p also approximately approach to lambda