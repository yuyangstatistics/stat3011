# Example 5.1
coin_flip <- rbinom(5000, 1, 0.5)
cum_prop <- cumsum(coin_flip) / (1:5000)
plot(x = 1:5000, y = cum_prop, type = "l", lwd = 3)
abline(h = 0.5, col = "blue")
