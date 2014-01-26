func1 = function(df){
  delay = as.numeric(df$ArrDelay)
  
  avg = mean(delay, na.rm = TRUE)
  stdev = sd(delay, na.rm = TRUE)
  median.est = median(delay, na.rm = TRUE)
  
  return(list(avg, stdev, median.est))
  
}

func2 = function(df){
  delay = as.numeric(df$ARR_DELAY)
  
  avg = mean(delay, na.rm = TRUE)
  stdev = sd(delay, na.rm = TRUE)
  median.est = median(delay, na.rm = TRUE)
  
  return(list(avg, stdev, median.est))
  
}