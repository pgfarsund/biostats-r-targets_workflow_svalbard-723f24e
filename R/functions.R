library(tidyverse)
library(here)
library(performance)

# My custom functions

# clean and prepare data for analysis
# make "clean-the-data" function
clean_these_traits <- function(to_be_cleaned) {
  traits <- raw_traits |>
    # remove NAs
    filter(!is.na(Value)) |>
    # order factor and rename variable gradient
    mutate(Gradient = case_match(Gradient,
                                 "C" ~ "Control",
                                 "B" ~ "Nutrients"),
           Gradient = factor(Gradient, levels = c("Control", "Nutrients"))) |>
    # select one species and one trait
    filter(Taxon == "alopecurus magellanicus",
           Trait == "Leaf_Area_cm2")
  traits
}


# fit linear regression
fit_model <- function(data, response, predictor){
  mod <- lm(as.formula(paste(response, "~", predictor)), data = data)
  mod
}

# make a figure
make_fig <- function(df) {
  ggplot(df, aes(x = Gradient, y = Value)) +
    geom_boxplot(fill = c("grey80", "darkgreen")) +
    labs(x = "", y = expression(Leaf~area~cm^2)) +
    theme_bw()
}

make_fig(df = traits)
