
arr1 = as.numeric(readLines("arr1"))
arr2 = as.numeric(readLines("arr2"))
arr3 = as.numeric(readLines("arr3"))

#PLEASE NOTE: When I tried to get the arrival delays from 2002, I got the "illegal byte sequence" errors. I attempted to use the suggestions given on Piazza, but nothing worked for me. Unfortunately, I had to ignore that year for this estimation. 
arr2003 = readLines("arr2003")
arr2004 = readLines("arr2004")
arr2005 = readLines("arr2005")
arr2006 = readLines("arr2006")
arr2007 = readLines("arr2007")
arr4 = as.numeric(c(arr2003, arr2004, arr2005, arr2005, arr2006))
arr5 = as.numeric(readLines("arr5"))
arr6 = as.numeric(readLines("arr6"))


mean1 = mean(arr1, na.rm = TRUE)
mean2 = mean(arr2, na.rm = TRUE)
mean3 = mean(arr3, na.rm = TRUE)
mean4 = mean(arr4, na.rm = TRUE)
mean5 = mean(arr5, na.rm = TRUE)
mean6 = mean(arr6, na.rm = TRUE)

lengths = c(length(arr1), length(arr2), length(arr3), length(arr4), length(arr5), length(arr6))

avg = weighted.mean(means, lengths)


sd1 = sd(arr1, na.rm = TRUE)
sd2 = sd(arr2, na.rm = TRUE)
sd3 = sd(arr3, na.rm = TRUE)
sd4 = sd(arr4, na.rm = TRUE)
sd5 = sd(arr5, na.rm = TRUE)
sd6 = sd(arr6, na.rm = TRUE)

sd.main = weighted.mean(c(sd1, sd2, sd3, sd4, sd5, sd6), lengths)

median1 = median(arr1, na.rm = TRUE)
median2 = median(arr2, na.rm = TRUE)
median3 = median(arr3, na.rm = TRUE)
median4 = median(arr4, na.rm = TRUE)
median5 = median(arr5, na.rm = TRUE)
median6 = median(arr6, na.rm = TRUE)

median.main = weighted.mean(c(median1, median2, median3, median4, median5, median6), lengths)

results = list(time = time, results = c(mean = 6.1171698, median = -1.283408, sd = 30.834866),
     system = Sys.info(),  session = sessionInfo(), time.estimated = "20 minutes")

save(results, file = "results1.rda")