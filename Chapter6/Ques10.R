# (a)
u <- runif(10, 0, 1)
u

# (b)
y <- -2*log(1-u)
y

# (c)
w <- ifelse(u > 0.3, 0, 1)
w

# (d)
x <- log(u/(1 - u))
x