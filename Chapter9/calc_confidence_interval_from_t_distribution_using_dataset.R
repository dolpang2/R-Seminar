w1 <- read.csv(file = "w1.dat", sep = ",", header = TRUE)
summary(w1)
length(w1$vals)
mean(w1$vals)
sd(w1$vals)

kConfidenceCoefficient <- 0.95
kAlpha <- 1 - kConfidenceCoefficient

sample.mean <- mean(w1$vals)  # sample's mean
sample.standard.deviation <- sd(w1$vals)
sample.size <- length(w1$vals)
degree.of.freedom <- sample.size - 1

error <- qt(kConfidenceCoefficient + kAlpha / 2, df = degree.of.freedom) * 
  sample.standard.deviation / sqrt(sample.size)
error

left <- sample.mean - error
right <- sample.mean + error

left
right