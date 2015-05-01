kConfidenceCoefficient <- 0.95
kAlpha <- 1 - kConfidenceCoefficient

sample.mean <- 5
sample.standard.deviation <- 2
sample.size <- 20

error <- qt(kConfidenceCoefficient + kAlpha / 2, df = sample.size - 1) * 
  sample.standard.deviation / sqrt(sample.size)

left <- sample.mean - error
right <- sample.mean + error
left
right

assumed <- sample.mean + 1.5
t.left <- (left - assumed) / (sample.standard.deviation / sqrt(sample.size))
t.right <- (right - assumed) / (sample.standard.deviation / sqrt(sample.size))

beta <- pt(t.right, df = sample.size - 1) - pt(t.left, df = sample.size - 1)
beta

statistical.power <- 1 - beta
statistical.power