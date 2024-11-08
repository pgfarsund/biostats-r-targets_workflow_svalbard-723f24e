### Script to test how marine nutrients affect leaf area in Alopecurus magellanicus

# load libraries
library(tidyverse)
library(here)
library(performance)

# import data
raw_traits <- read_delim(file = here("data/PFTC4_Svalbard_2018_Gradient_Traits.csv"))

# clean data and prepare for analysis
traits <- clean_these_traits(to_be_cleaned = raw_traits)

# run a linear model
mod_area <- lm(Value ~ Gradient, data = traits)
summary(mod_area)
# check model assumptions
check_model(mod_area)

# make figure
make_fig(traits)

# load targets and tarchetypes
library(targets)
use_targets()

library(tarchetypes)

