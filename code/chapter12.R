##### Example 12.1 #####
dat <- read.table("http://www.stat.umn.edu/~wuxxx725/data/movies.txt", 
                  header = TRUE)
dat

### graphical summaries (scatterplot)
plot(x = dat$Prod, y = dat$Box, xlab = "Production Cost", 
     ylab = "Box Office Sales", pch = 16)

### numerical summaries
## correlation
cor(dat$Box, dat$Prod)

## least squares regression 
mod <- lm(Box ~ Prod, data = dat) # lm(response ~ explanatory)
summary(mod)

names(mod)  #shows what mod holds
mod$fitted.values  #predicted values of Time based on the regression line
mod$residuals  #residuals

## plot the least squares line
plot(x = dat$Prod, y = dat$Box, xlab = "Production Cost", 
     ylab = "Box Office Sales", pch = 16)
abline(mod)

### Check assumptions
par(mfrow = c(2, 2))
plot(mod)
par(mfrow = c(1, 1))


##### Example 12.2 #####
dash <- read.table("http://www.stat.umn.edu/~wuxxx725/data/dash.txt", 
                  header = TRUE)
head(dash)

### graphical summaries (scatterplot)
plot(x = dash$Year, y = dash$Time, xlab = "# of years past 1900", 
     ylab = "Dash time (s)", pch = 16)

### numerical summaries
## correlation
cor(dash$Year, dash$Time)
cor(dash$Time, dash$Year)

## least squares regression
mod2 <- lm(Time ~ Year, data = dash)
summary(mod2)

## plot the least squares line
plot(x = dash$Year, y = dash$Time, xlab = "# of years past 1900", 
     ylab = "Dash time (s)", pch = 16)
abline(mod2)

### Check assumptions
par(mfrow = c(2, 2))
plot(mod2)
par(mfrow = c(1, 1))
