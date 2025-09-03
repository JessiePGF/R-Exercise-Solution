# (a)
x = c(1, 3, 5, 7, 9, 2, 4, 6, 8, 10, 15)
x

# (b)
meanX = mean(x)
meanX

# (c)
lnMeanX = log(meanX)
lnMeanX

# (d)
lnX = log(x)
meanLnX = mean(lnX)
meanLnX

# (e) No

# (f)
sorX = sort(x)
sorX
m1 = sorX[ceiling(length(x)/2)]
m1

# (g)
sorLnX = sort(lnX)
sorLnX
m2 = sorLnX[ceiling(length(lnX)/2)]
m2

# (h) m1 > m2