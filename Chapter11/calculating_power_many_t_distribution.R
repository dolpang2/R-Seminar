# First, compute a standard error and a t-score
group1.sample.mean <- c(10, 12, 30)
group2.sample.mean <- c(10.5, 13, 28.5)
group1.sample.standard.deviation <- c(3, 4, 4.5)
group2.sample.standard.deviation <- c(2.5, 5.3, 3)
group1.sample.size <- c(300, 210, 420)
group2.sample.size <- c(230, 340, 400)

standard.error <- sqrt(group1.sample.standard.deviation ^ 2 / group1.sample.size + 
                         group2.sample.standard.deviation ^ 2 / group2.sample.size)

group1.sample.mean
group2.sample.mean
group1.sample.standard.deviation
group2.sample.standard.deviation
group1.sample.size
group2.sample.size

standard.error

# Define the confidence interval around the assumed differences
# 0.025 -> 2.5%, double sided
# In this case the H0 are for a difference of zero
left <- qt(0.025, df = pmin(group1.sample.size, group2.sample.size) - 1) * 
  standard.error
right <- (-left)

left
right

# Calculate the power of t he one sided test
t.left <- (left - 1) / standard.error
t.right <- (right - 1) / standard.error

t.left
t.right

# Beta
beta <- pt(t.right, df = pmin(group1.sample.size, group2.sample.size) - 1) - 
  pt(t.left, df = pmin(group1.sample.size, group2.sample.size) - 1)
beta

power <- 1 - beta
power