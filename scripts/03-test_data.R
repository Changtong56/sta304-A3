#### Preamble ####
# Purpose: Sanity check of the data
# Author: Chang Tong
# Date: 19 September 2024
# Contact: c.tong@mail.utoronto.ca
# License: MIT
# Pre-requisites:none
# Any other information needed? none


#### Workspace setup ####
library(tidyverse)


#### Test data ####
data <- read_csv("data/raw_data/simulated.csv")

# Test for negative numbers
data$number_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$number_of_marriage))