prop.test(x = 12, n = 40, conf.level = 0.95, p = 0.40, 
          alternative = "less", correct = FALSE)

cal <- c(240, 253, 243, 267, 258, 239, 235, 252, 246, 233)
t.test(x = cal, conf.level = 0.95, alternative = "two.sided", mu = 240)

2 * pt(1.93, df = 9, lower.tail = FALSE)
