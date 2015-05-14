newDef <- function(a, b) {
  x <- runif(10, a, b)  # generate unif distrubition
  mean(x)
}

c <- c(1, 2, 3, 4, 5)
sample <- function(a, b) {
  value <- switch(a, "median" = median(b), "mean" = mean(b), "variance" = var(b))
  largeVals <- length(c[c > 1])
  list(stat = value, number = largeVals)
}