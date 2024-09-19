#### Preamble ####
# Purpose: Tests
# Author: Krishna Kumar
# Date: 19th September, 2024
# Contact: Krishna Kumar
# License: MIT
# Pre-requisites: Simulated data
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)


#### Test data ####

data <- read_csv("data/raw_data/simulated.csv")

#test for negative numbers
data$numbers_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$numbers_of_marriage))