##### Finding z_{alpha/2} #####
# 1. confidence level = 0.9, alpha = 0.1
qnorm(1 - 0.1 / 2)
qnorm(0.1 / 2, lower.tail = FALSE)

# 2. confidence level = 0.95, alpha = 0.05
qnorm(1 - 0.05 / 2)
qnorm(0.05 / 2, lower.tail = FALSE)

# 3. confidence level = 0.99, alpha = 0.01
qnorm(1 - 0.01 / 2)
qnorm(0.01 / 2, lower.tail = FALSE)


##### Directly Get Confidence Intervals #####
### 1. For proportion
prop.test(x = 51, n = 300, conf.level = 0.98, alternative = "two.sided")
prop.test(x = 170, n = 1000, conf.level = 0.98, alternative = "two.sided")

### 2. For mean
cigs <- c(1,3,3,8,9,9,9,10,11,11,12,13,14,14,15,15,15,16,
          16,16,16,17,17,17,17,18,19,19,20,20,20,20,20,22,22,
          23,23,24,25,25,25,28,30,30,30,30,32,32,35,38,40)
t.test(x = cigs, conf.level = 0.99, 
       alternative = "two.sided")


##### t-distribution #####
### 1. t-distribution vs. normal distribution
x <- seq(-3, 3, length.out = 100)
plot(x = x, y = dnorm(x), type = "l", col = "black") # normal distribution
lines(x = x, y = dt(x, df = 2), type = "l", col = "blue") # t_2
lines(x = x, y = dt(x, df = 10), type = "l", col = "green") # t_10
lines(x = x, y = dt(x, df = 40), type = "l", col = "red") # t_40

### 2. calculate probabilities and percentiles
qt(1 - 0.005, df = 11)
qt(0.005, df = 11, lower = FALSE)

qt(0.99, df = 21)

1 - pt(2, df = 14)
pt(2, df = 14, lower = FALSE)


##### Example 8.8 #####
cigs <- c(1,3,3,8,9,9,9,10,11,11,12,13,14,14,15,15,15,16,
          16,16,16,17,17,17,17,18,19,19,20,20,20,20,20,22,22,
          23,23,24,25,25,25,28,30,30,30,30,32,32,35,38,40)
stem(cigs)

mean(cigs)
sd(cigs)
length(cigs)
qt(1 - 0.005, df = 50)
(moe <- qt(1 - 0.005, df = 50) * sd(cigs) / sqrt(length(cigs)))
mean(cigs) + c(-1, 1) * moe

t.test(x = cigs, conf.level = 0.99, 
       alternative = "two.sided")
