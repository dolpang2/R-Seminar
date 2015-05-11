x <- rnorm(5)
x

for (element in x) {
  if (element > 2.0) {
    next
  }
  
  if ((element < 0.6) && (element > 0.5)) {
    break
  }
  
  cat("The value of element is ", element, "\n")
}