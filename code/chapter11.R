# Chi-squared Distribution with different degrees of freedom
x <- seq(0, 50, length.out = 200)
plot(x = x, y = dchisq(x, df = 5), type = "l", col = "black", ylab = "Density")
lines(x = x, y = dchisq(x, df = 10), type = "l", col = "blue")
lines(x = x, y = dchisq(x, df = 20), type = "l", col = "red")


# Chi-squared calculations
pchisq(34.17, df = 20, lower.tail = FALSE)
pchisq(24, df = 13, lower.tail = FALSE)


# Example 11.2
dat <- matrix(c(238, 247, 374, 810), nrow = 2, byrow = TRUE)
dat
chisq.test(dat, correct = FALSE)
