#### Preamble ####
# Purpose: Simulates data 
# Author: Krishna Kumar
# Date: 19 September 2024
# Contact: krishna.kumar@mail.utoronto.ca
# License: MIT
# Pre-requisites: None
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
start_date <- as.Date("2023-01-01")
end_date <- as.Date("2023-12-31")

number_of_dates <- 100


data <- 
  tibble (
    date = as.Date(runif(n = number_of_dates), min = as.numeric(start_date), max = as.numeric(end_date) ), 
    number_of_marriages = rpois(n = 100, lambda = 15)
  )

write.csv("data/raw_data/simulated.csv")

