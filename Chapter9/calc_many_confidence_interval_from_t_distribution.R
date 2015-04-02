group1.sample.mean <- c(10, 12, 30)
group2.sample.mean <- c(10.5, 13, 28.5)
group1.sample.standard.deviation <- c(3, 4, 4.5)
group2.sample.standard.deviation <- c(2.5, 5.3, 3)
group1.sample.size <- c(300, 210, 420)
group2.sample.size <- c(230, 340, 400)

kConfidenceCoefficient <- 0.95
kAlpha <- 1 - kConfidenceCoefficient

standard.error <- sqrt(group1.sample.standard.deviation * group1.sample.standard.deviation / group1.sample.size + 
                         group2.sample.standard.deviation * group2.sample.standard.deviation / group2.sample.size)
error <- qt(kConfidenceCoefficient + kAlpha / 2, df = pmin(group1.sample.size, group2.sample.size) - 1) * standard.error

group1.sample.mean
group2.sample.mean
group1.sample.standard.deviation
group2.sample.standard.deviation
group1.sample.size
group2.sample.size

standard.error  # print standard error
error  # print error

left <- (group1.sample.mean - group2.sample.mean) - error
right <- (group1.sample.mean - group2.sample.mean) + error

left  # print left x coordinate
right  # print right x coordinate