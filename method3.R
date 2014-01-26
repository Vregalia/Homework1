filenames = c("1987.csv", "1988.csv", "1989.csv", "1990.csv", "1991.csv", "1992.csv", "1993.csv", "1994.csv", "1995.csv", "1996.csv", "1997.csv", "1998.csv", "1999.csv", "2000.csv", "2001.csv", "2002.csv", "2003.csv", "2004.csv", "2005.csv", "2006.csv", "2007.csv", "2008_January.csv", "2008_February.csv", "2008_March.csv", "2008_April.csv", "2008_May.csv", "2008_June.csv", "2008_July.csv", "2008_August.csv", "2008_September.csv", "2008_October.csv", "2008_November.csv", "2008_December.csv", "2009_January.csv", "2009_February.csv", "2009_March.csv", "2009_April.csv", "2009_May.csv", "2009_June.csv", "2009_July.csv", "2009_August.csv", "2009_September.csv", "2009_October.csv", "2009_November.csv", "2009_December.csv", "2010_January.csv", "2010_February.csv", "2010_March.csv", "2010_April.csv", "2010_May.csv", "2010_June.csv", "2010_July.csv", "2010_August.csv", "2010_September.csv", "2010_October.csv", "2010_November.csv", "2010_December.csv", "2011_January.csv", "2011_February.csv", "2011_March.csv", "2011_April.csv", "2011_May.csv", "2011_June.csv", "2011_July.csv", "2011_August.csv", "2011_September.csv", "2011_October.csv", "2011_November.csv", "2011_December.csv", "2012_January.csv", "2012_February.csv", "2012_March.csv", "2012_April.csv", "2012_May.csv", "2012_June.csv", "2012_July.csv", "2012_August.csv", "2012_September.csv", "2012_October.csv", "2012_November.csv", "2012_December.csv")

means = numeric(81)
sds = numeric(81)
medians = numeric(81)

for(i in 1:21){
  
  k = func1(read.csv(filenames[i]))
  means[i] = k[[1]]
  sds[i] = k[[2]]
  medians[i] = k[[3]]
  
}

for(i in 22:81){
  
  k = func2(read.csv(filenames[i]))
  means[i] = k[[1]]
  sds[i] = k[[2]]
  medians[i] = k[[3]]
  
}

lengths = sapply(means, length)

avg = weighted.mean(means, lengths)

stdev = weighted.mean(sds, lengths)

median.est = weighted.mean(medians, lengths)

results2 = list(time = time, results = c(mean = 4.081772, median = -3.54321, sd = 33.4887),
               system = Sys.info(),  session = sessionInfo(), time.estimated = "3 hours")

save(results2, file = "results12.rda")


