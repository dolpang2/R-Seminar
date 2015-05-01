kConfidenceCoefficient <- 0.95
kAlpha <- 1 - kConfidenceCoefficient

sample.mean <- 5
sample.standard.deviation <- 2
sample.size <- 20

error <- qnorm(kConfidenceCoefficient + kAlpha / 2) * 
  sample.standard.deviation / sqrt(sample.size)

left <- sample.mean - error
right <- sample.mean + error
left
right

assumed <- sample.mean + 1.5
gaussian.left <- (left - assumed) / 
  (sample.standard.deviation / sqrt(sample.size))
gaussian.right <- (right - assumed) / 
  (sample.standard.deviation / sqrt(sample.size))

beta <- pnorm(gaussian.right) - pnorm(gaussian.left)
beta

statistical.power <- 1 - beta
statistical.power
