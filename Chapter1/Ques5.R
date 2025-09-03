fx = function(x, a, b){
  x^(a-1)*(1-x)^(b-1)
}
x = seq(from = 0,to = 1, length.out = 1000)

# (a)
a = fx(x, a = 2, b = 2)
plot(x, a,  xlab = "x", ylab = "f(x)", main = "(a)")

# (b)
b = fx(x, a = 2, b = 1)
plot(x, b, xlab = "x", ylab = "f(x)", main = "(b)")

# (c)
c = fx(x, a = 1, b = 2)
plot(x, c, xlab = "x", ylab = "f(x)", main = "(c)")

# (d)
d = fx(x, a = 1, b = 1)
plot(x, d, xlab = "x", ylab = "f(x)", main = "(d)")

# (e)
e = fx(x, a= 0.5, b = 0.5)
plot(x, e, xlab = "x", ylab = "f(x)", main = "(e)")