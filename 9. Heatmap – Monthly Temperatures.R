library(ggplot2)
library(tidyr)

d <- data.frame(
  Month = c("Jan","Feb","Mar","Apr","May"),
  City_A = c(5,6,7,8,9),
  City_B = c(10,11,12,13,14),
  City_C = c(15,16,17,18,19)
)

m <- pivot_longer(d, cols = -Month)
ggplot(m, aes(Month, name, fill = value)) +
  geom_tile() +
  scale_fill_gradient(low = "white", high = "red")
