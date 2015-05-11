x <- as.integer(2)
x

z = switch(x, 1, 2, 3, 4, 5)
z

x <- 3.5
z = switch(x, 1, 2, 3, 4, 5)
z

y <- rnorm(5)
y

x <- "sd"
z <- switch(x, "mean" = mean(y), "median" = median(y), "variance" = var(y), "sd" = sd(y))
z

x <- "median"
z <- switch(x, "mean" = mean(y), "median" = median(y), "variance" = var(y), "sd" = sd(y))
z