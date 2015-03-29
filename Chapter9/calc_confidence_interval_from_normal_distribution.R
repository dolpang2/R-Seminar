sample.mean <- 5
sample.standard.deviation <- 2
sample.size <- 20
error <- qnorm(0.975) * sample.standard.deviation / sqrt(sample.size)
left <- sample.mean - error
right <- sample.mean + error
left
right