x <- rnorm(5)
x

for (element in x) {
  if (element > 2.0) {
    cat(element, "> 2.0\n")
    next
  }
  
  if ((element < 0.6) && (element > 0.5)) {
    cat("0.5 < element < 0.6\n")
    break
  }
  
  cat("The value of element is", element, "\n")
}