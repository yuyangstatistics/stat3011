##### Binomial Distribution #####
### 1. Generate random samples
rbinom(n = 20, size = 1, p = 0.5)

### 2. Calculate probabilities
## 2.1 probability for a single value
dbinom(x = 40, size = 45, prob = 0.9)
dbinom(x = 4, size = 10, prob = 0.58)

## 2.2 probability for a range of values
# 2.2.1 less than or equal to (<= 10)
pbinom(10, size = 20, prob = 0.4)

# 2.2.2 less than (< 10)
pbinom(10 - 1, size = 20, prob = 0.4)

# 2.2.3 greater than or equal to (>= 10)
1 - pbinom(10 - 1, size = 20, prob = 0.4)

# 2.2.4 greater than (> 10)
1 - pbinom(10, size = 20, prob = 0.4)

##### Normal Distribution #####
### 1. Generate random samples
samp <- rnorm(1000)
hist(samp)
qqnorm(samp)
qqline(samp)

### 2. Standard Normal Distribution
## 2.1 calculate probability
# 2.1.1 less than or equal to (<=); less than (<)
pnorm(1.645)

# 2.1.2 greater than or equal to (>=); greater than (>)
1 - pnorm(1.645)
pnorm(1.645, lower.tail = F)

# 2.1.3 inside an interval (a <= X <= b)
pnorm(0.9) - pnorm(0.3)

## 2.2 calculate quantile
qnorm(0.975)


### 3. General Normal Distributions
## 3.1 calculate probability
# 3.1.1 less than or equal to (<=); less than (<)
pnorm(19, mean=21, sd=2)

# 2.1.2 greater than or equal to (>=); greater than (>)
1 - pnorm(19, mean=21, sd=2)
pnorm(19, mean=21, sd=2, lower.tail = F)

# 2.1.3 inside an interval (a <= X <= b)
pnorm(25, mean=21, sd=2) - pnorm(17, mean=21, sd=2)

## 2.2 calculate quantile
qnorm(.60, mean=21, sd=2)
