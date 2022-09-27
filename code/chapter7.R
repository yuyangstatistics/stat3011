###### Understand Sampling Distribution ######
population <- rnorm(10000, mean = 2, sd = 4)
sample1 <- sample(population, size = 100)
mean(sample1)
sample2 <- sample(population, size = 100)
mean(sample2)
sample3 <- sample(population, size = 100)
mean(sample3)
sample4 <- sample(population, size = 100)
mean(sample4)
sample5 <- sample(population, size = 100)
mean(sample5)

nsamples <- 10
sample_means <- replicate(nsamples, mean(sample(population, size = 100)))
hist(sample_means)

nsamples <- 100
sample_means <- replicate(nsamples, mean(sample(population, size = 100)))
hist(sample_means)

nsamples <- 1000
sample_means <- replicate(nsamples, mean(sample(population, size = 100)))
hist(sample_means)