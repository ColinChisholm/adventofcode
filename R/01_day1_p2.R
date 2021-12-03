## Advent of Code 
## Solutions by Colin Chisholm
## Day 1 Part 2

# install.packages("zoo")
library(zoo) ## for rollapply()

##import 
dat <- as.data.frame(read.table("./data/D01_input"))


## moving window over the data 3 wide -- right aligned 
dat.w <- rollapply(dat$V1, 
                   width = 3,
                   align = "right",
                   FUN = sum, 
                   fill = NA,
                   by = 1)

##solution
sum(dat.w > lag(dat.w), na.rm = TRUE) 
