library(ggplot2)
library(dplyr)


n <- 179
set.seed(6237345)
dat <- tibble(
  x = runif(n),
  y = runif(n),
  size = 1:n,
  color = sample(LETTERS[1:5], n, r = T)
)

(g <- dat %>%
  ggplot(aes(x, y, color = color, size = size)) + 
  geom_point() + 
  theme_void() + 
  coord_equal() + 
  guides(color = "none", size = "none"))


ggsave(filename = "docs/logo.png", plot = g, width = 4, height = 4)
