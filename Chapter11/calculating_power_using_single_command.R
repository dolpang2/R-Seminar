# n is number of observations (per group)
# delta is true difference in means, assumed mean is 6.5 H0 is 5
# sd is standard deviation
# sig.level (Type I error probability, usually alpha)
# power is power of test (1 - Type II error probability)
# type of t test ("two.sample", "one.sample", "paired")
# alternative is One- or two-sided test
# strict use strict interpretation in two-sided case

# Exactly one of the parameters n, delta, power, sd, and sig.level 
# must be passed as NULL and that parameter is determined from the others

# For example it can also be used to calculate the number of observations 
# necessary to achieve a given power

power.t.test(n = sample.size,
             delta = 1.5,
             sd = sample.standard.deviation, 
             sig.level = 0.05,
             power = NULL,
             type = "one.sample", 
             alternative = "two.sided", 
             strict = TRUE)