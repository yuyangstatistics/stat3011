#####  Example 10.6  #####
dat <- read.table(file = "http://www.stat.umn.edu/~wuxxx725/data/class.txt", 
                      header = TRUE)
head(dat)

# Sample of Male Haircuts
MaleHair <- dat$Haircut[dat$Gender == "M"]
# Sample of Female Haircuts
FemaleHair <- dat$Haircut[dat$Gender == "F"]
# Confidence Interval for the Mean Difference
t.test(x = MaleHair, y = FemaleHair, alternative = "two.sided", 
       conf.level = 0.95)

# Two-Sample t-test
t.test(x = MaleHair, y = FemaleHair, alternative = "less", 
       conf.level = 0.95)


##### Example 10.3 #####
BAC.sl <- c(0.007, 0.010, 0.009, 0.011, 0.008, 0.006)
BAC.ha <- c(0.013, 0.017, 0.015, 0.014, 0.010, 0.009)
t.test(x = BAC.sl, y = BAC.ha, paired = TRUE, alternative = "less", 
         conf.level = 0.95)

# or equivalently: perform one sample t-test on the difference
t.test(x = BAC.sl - BAC.ha, alternative = "less", conf.level = 0.95)
