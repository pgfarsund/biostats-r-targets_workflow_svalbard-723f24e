library(here)
library(tidyverse)

# edit comment

# does this show?

# branching time

# i'm making changes

df <- data.frame(a = sample(x = c(1:100), replace = T, size = 50),
                 b = sample(x = c(150:250), replace = T, size = 50))
 df |>
   pivot_longer(cols = c(a, b),
                names_to = "type",
                values_to = "gene_copy_number") |>
   ggplot(aes(x = type, y = gene_copy_number, fill = type)) +
   geom_jitter(width = 0.25, shape = 21, size = 3) +
   scale_fill_manual(values = c("steelblue1", "hotpink2"))

