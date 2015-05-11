lupe <- 1;
x <- 1;
while (x < 4) {
  x <- rnorm(1, mean = 2, sd = 3)
  cat("trying this value: ", x, " (", lupe, " times in loop)\n")
  lupe <- lupe + 1
}