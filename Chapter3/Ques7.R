# (a)
n = 100
p = 0.095
x = rgeom(n, p)
x

# (b)
hist(x, xlab = "x", main = "Histogram of 100 samples from Geom distribution")

# (c)
y = c(0:10)
pmf = dgeom(y, prob = p)
plot(y, pmf, xlab = "x",xaxt = "n", ylab = "probability", main = "pmf of Geom(p = 0.095)")
axis(1, at = 0:10)
lines(y, pmf, lwd = 1)
points(y, pmf, pch = 16)