library(tidyverse)
library(cowplot)
data(reg)
data("ruralXurbano")

g_reg <- ggplot(reg, aes(x = ano, y = ia_grave, col = reg)) +
  geom_line() + geom_point() +
  scale_color_brewer("Região",type = "qual",palette = "Dark2") +
  scale_x_continuous(breaks = c(2004,2009,2013,2017)) +
  scale_y_continuous(breaks = c(2.5,5,7.5,10,12.5)) +
  labs(x = "Ano", y = "IA grave (%)") +
  theme_minimal_hgrid(11) +
  theme(legend.position = "bottom",
        legend.title = element_blank(),
        legend.justification = "center")

g_rurb <- ggplot(ruralXurbano, aes(x = ano, y = ia_grave, col = situacao_dom)) +
  geom_line() + geom_point() +
  scale_color_brewer("Situação domiciliar",type = "qual",palette = "Dark2",
                     labels = c("Rural","Urbano")) +
  scale_x_continuous(breaks = c(2004,2009,2013,2017)) +
  scale_y_continuous(breaks = c(2,4,6,8,10), limits = c(2,10)) +
  labs(x = "Ano", y = "IA grave (%)") +
  theme_minimal_hgrid(11) +
  theme(legend.position = "bottom",
        legend.title = element_blank(),
        legend.justification = "center")

grade <- plot_grid(g_reg, g_rurb, labels = "AUTO")
save_plot("graphics/ia_grave_reg_rural_urbano.jpeg", grade)
