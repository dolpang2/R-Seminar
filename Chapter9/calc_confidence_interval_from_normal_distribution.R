kConfidenceCoefficient <- 0.95
kAlpha <- 1 - kConfidenceCoefficient

sample.mean <- 5  # sample's mean
sample.standard.deviation <- 2  # s(Sample's standard deviation)
sample.size <- 20  # size of sample

error <- qnorm(kConfidenceCoefficient + kAlpah / 2) * 
  sample.standard.deviation / sqrt(sample.size)
left <- sample.mean - error
right <- sample.mean + error
left
right