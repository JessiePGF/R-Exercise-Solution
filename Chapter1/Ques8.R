x = rnorm(20, 5, 16)
xMatrix = matrix(x, nrow = 1)
yi = apply(xMatrix, MARGIN = 2, function(xi){
  (xi - mean(x))/sd(x)
})
yi