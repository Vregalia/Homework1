#SQL method

install.packages("RMySQL")

library(RMySQL)
library(RSQLite)

drv = dbDriver("SQLite")
delays = dbConnect(drv, "airdelays")
dbListTables(delays)

sqlmean = dbGetQuery(delays, "SELECT AVG(f1) FROM delays;")


length = dbGetQuery(delays, "SELECT LENGTH(f1) FROM delays;")

sqlmedian = dbGetQuery(delays, "SELECT f1 FROM delays ORDER BY f1 ASC LIMIT 1 OFFSET 65023428;" ) #DIDN'T WORK - RAN FOR HOURS

results3 = list(time = time, results = c(mean = 6.0758871710055, median = "n/a", sd = "n/a"),
               system = Sys.info(),  session = sessionInfo(), time.estimated = "2 hours")

save(results3, file = "results3.rda")

