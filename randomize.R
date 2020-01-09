library(tidyverse)

control <- c()

sample(
  rep(
    c("A", "B", "C"),
    4
  )
)

rep(c("A", "B", "C"), 4) %>%
  sample()

vector <- c("A", "B", "z")

  rep(vector, 4)  %>%
  sample()

  treatment <- c("vehicle", "oldDrug", "newDrug")

  randomize <- sample(rep(treatment, 4), replace = FALSE)

