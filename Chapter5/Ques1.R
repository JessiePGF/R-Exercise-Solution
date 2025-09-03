# (b)
plot(NA, xlab = "x", ylab = "F(x)", main = "CDF of Bin(2, 2/3)", 
     xlim = c(-1, 3), ylim = c(0, 1))
for (i in 0:2){
  points(i, pbinom(i - 1, 2, 2/3), pch = 1)
  points(i, pbinom(i, 2, 2/3), pch = 16)
}

for (i in -1:2){
  lines(c(i, i + 1), c(pbinom(i, 2, 2/3), pbinom(i, 2, 2/3)), lty = 1)
  lines(c(i, i), c(pbinom(i - 1, 2, 2/3), pbinom(i, 2, 2/3)), lty = 2)
}