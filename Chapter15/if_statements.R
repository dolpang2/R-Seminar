x <- 1.0

if (x < 0.2) {
  x <- x + 1
  cat("increment that number!\n")
} else if (x < 2.0) {
  x <- 2.0 * x
  cat("not big enough!\n")
} else {
  x <- x - 1
  cat("nah, make it smaller.\n")
}