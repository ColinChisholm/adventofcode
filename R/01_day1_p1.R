## Advent of Code 
## Solutions by Colin Chisholm
## Day 1 Part 1

dat <- as.data.frame(read.table("./data/D01_input"))  ## import 
dat$step <- c(dat$V1[2:length(dat$V1)], NA)           ## new var stepping ahead
dat$test <- ifelse(dat$V1 <= dat$step, TRUE, FALSE)   ## compare 
length(dat$test[dat$test == TRUE]) -1                 ## -1 


## went looking for a more elegant solution and found:
## Thanks to https://twitter.com/drob ... I had forgetten about lead and lag()
library(dplyr)
x <- dat$V1
sum(x > lag(x), na.rm = TRUE)
