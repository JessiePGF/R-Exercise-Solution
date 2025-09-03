f <- function(x){
  (x^4)*exp((-2/3)*x)
}
integrate(f, 0, Inf)