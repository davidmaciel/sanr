## code to prepare `DATASET` dataset goes here


# graficos_projeto --------------------------------------------------------

library(tidyverse)
reg <- read_csv2("data-raw/reg.CSV",
                 locale = locale(encoding = "ASCII")) %>%
  pivot_longer(cols = -reg, names_to = "ano", values_to = "ia_grave") %>%
  mutate(ano = as.numeric(ano))
ruralXurbano <- read_csv2("data-raw/rural_x_urbano.CSV",
                          locale = locale(encoding = "ASCII")) %>%
  pivot_longer(cols = -ano, names_to = "situacao_dom", values_to = "ia_grave") %>%
  mutate(ano = as.numeric(ano))
use_data(reg, overwrite = T)
use_data(ruralXurbano, overwrite = T)
