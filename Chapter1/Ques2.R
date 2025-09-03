# (a)
x = c(2, 3, 7, 8, 9, 31, 24, 18, 22, 10, 15)
y = x^0.5
xBar = mean(x)
yBar = mean(y)
xBar
yBar
sorX = sort(x)
mx = sorX[ceiling(length(x)/2)]
sorY = sort(y)
my = sorY[ceiling(length(y)/2)]
mx
my

# (b) rootMeanX > yBar
rootMeanX = xBar^0.5
rootMeanX

# (c) my = rootmx
rootmx = mx^0.5
rootmx