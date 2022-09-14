##### =========== Numerical Summaries ================#####

#### Frequency Table
survey <- read.csv("data/Getting_to_Know_You_Survey_Fall_2022.csv")
colnames(survey)
freq <- table(survey$Which.season.do.you.enjoy.the.most..)
freq
proportion <- freq / length(survey$Which.season.do.you.enjoy.the.most..)
proportion

#### Measure of Center
x1 <- c(6, 5, 9, 5, 1001)
sort(x1)
mean(x1)
median(x1)

x2 <- c(6, 5, 9, 5)
sort(x2)
mean(x2)
median(x2)

#### Measure of Spread
gpa <- c(1.1, 2.3, 2.9, 3.2, 3.3, 3.5, 3.5, 3.6, 3.6, 3.6, 3.6, 3.8, 3.8, 
         3.9, 4) 
max(gpa) - min(gpa)
quantile(gpa, c(0.25, 0.5, 0.75))
q1 <- quantile(gpa, 0.25)
q3 <- quantile(gpa, 0.75)
q3 - q1
var(gpa)
sd(gpa)

## interpreting the magnitude of s
# example 2.4
dat <- read.table("http://www.stat.umn.edu/~wuxxx725/data/class.txt", 
                  header = TRUE)
mean_haircut_female <- mean(dat$Haircut[dat$Gender == "F"])
sd_haircut_female <- sd(dat$Haircut[dat$Gender == "F"])
c(mean_haircut_female - 3 * sd_haircut_female, 
  mean_haircut_female + 3 * sd_haircut_female)

# example 2.5
cost <- c(0,0,900,1254,234,979,707,670,769,4194)
mean(cost)
sd(cost)
mean(cost[-10])
sd(cost[-10])
(4194 - mean(cost)) / sd(cost)
(4194 - mean(cost[-10])) / sd(cost[-10])

#### 5-number summary
salary <- read.table("http://users.stat.umn.edu/~wuxxx725/data/NBAsalary.txt", 
                     sep = "\t",header = TRUE)
summary(salary$Salary[salary$Conference == "E"])
summary(salary$Salary[salary$Conference == "W"])




##### =========== Graphical Summaries ================#####

#### Pie Chart and Bar Graph
socialmedia <- c("Facebook", "Instagram", "Twitter", "YouTube", "others")
counts <- c(18, 172, 45, 82, 41)
pie(counts, socialmedia, main="Favorite Social Media")
barplot(counts, names=socialmedia, main="Social Media Bar graph")

#### Stem-and-Leaf Plot
stem(x = c(10, 20, 23, 27, 27, 27, 40, 49, 55, 56))
stem(x = c(40133, 40598, 41532, 41808, 41875, 42200))

salary <- read.table("http://users.stat.umn.edu/~wuxxx725/data/NBAsalary.txt", 
                     sep = "\t",header = TRUE)
stem(salary$Salary, scale = 0.5)

#### Histogram
salary <- read.table("http://users.stat.umn.edu/~wuxxx725/data/NBAsalary.txt", 
                     sep = "\t",header = TRUE)
par(mfrow=c(1,3))
hist(salary$Salary, xlab="Team Salaries", main="NBA Salary", breaks=2)
hist(salary$Salary, xlab="Team Salaries", main="NBA Salary", breaks=10)
hist(salary$Salary, xlab="Team Salaries", main="NBA Salary", breaks=20)
par(mfrow=c(1,1))

gpa <- c(1.1, 2.3, 2.9, 3.2, 3.3, 3.5, 3.5, 3.6, 3.6, 3.6, 3.6, 3.8, 3.8, 
         3.9, 4) 
salary <- c(31, 26, 44, 37, 55, 67, 52, 54, 143, 201, 90, 51, 43, 66, 64)
hist(gpa, xlab="GPA", main="Histogram for GPA")
hist(salary, xlab="Salary (in $1000’s)", main="Histogram for Salary", 
     breaks=7)
mean(gpa)
median(gpa)
mean(salary)
median(salary)

hist(gpa, xlab="GPA", main="Histogram for GPA")
abline(v = mean(gpa), col = "blue")
text(x = mean(gpa), y = 6, "mean", col = "blue")
abline(v = median(gpa), col = "blue", lty = "dashed")
text(x = median(gpa), y = 7, "median", col = "blue")

hist(salary, xlab="Salary (in $1000’s)", main="Histogram for Salary", 
     breaks=7)
abline(v = mean(salary), col = "blue")
text(x = mean(salary), y = 4, "mean", col = "blue")
abline(v = median(salary), col = "blue", lty = "dashed")
text(x = median(salary), y = 5, "median", col = "blue")


#### Boxplot
dat <- read.table("http://www.stat.umn.edu/~wuxxx725/data/class.txt", 
                  header = TRUE)
boxplot(dat$Haircut, ylab="Cost", main="Boxplot of Haircut Cost")
boxplot(Haircut ~ Gender, xlab="Gender", ylab="Cost", data = dat, 
        main="Side-by-Side Boxplots")
boxplot(dat$Haircut ~ dat$Gender, xlab="Gender", ylab="Cost",
        main="Side-by-Side Boxplots")
boxplot(Haircut ~ Gender, xlab="Gender", ylab="Cost", data = dat, 
        main="Side-by-Side Boxplots", range = 10)
summary(dat$Haircut[dat$Gender == "M"])
