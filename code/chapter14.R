dat <- read.table("http://www.stat.umn.edu/~wuxxx725/data/anorexia.txt", 
                  header = TRUE)
# boxplot
boxplot(change ~ therapy, data = dat)

# ANOVA format: aov(numerical var ~ group var)
mod <- aov(change ~ therapy, data = dat)
summary(mod)


mod <- aov(change ~ therapy, data = dat)
TukeyHSD(mod, "therapy", conf.level = 0.95)
