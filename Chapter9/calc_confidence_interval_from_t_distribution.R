kConfidenceCoefficient <- 0.95
kAlpha <- 1 - kConfidenceCoefficient

sample.mean <- 5  # sample's mean
sample.standard.deviation <- 2
sample.size <- 20 

# In t-Distribution, we muse set degree of freedom
error <- qt(kConfidenceCoefficient + kAlpha / 2, df = sample.size - 1) *
  sample.standard.deviation / sqrt(sample.size)

left <- sample.mean - error
right <- sample.mean + error

left
right