repeat {
  x <- rnorm(1)
  cat("current x:", x, "\n")
  if (x < -2.0) {
    cat("x is less than -2.0\n")
    break;
  }
}