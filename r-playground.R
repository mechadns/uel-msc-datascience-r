install.packages("pacman")
require(pacman)
library(datasets)
head(iris)

# plots
plot(iris$Species)
plot(iris$Petal.Length, iris$Petal.Width)

## plot formulas
plot(cos, 0, 2*pi)
plot(tan, 0, 2*pi)

# Bar graphs
?mtcars
head(mtcars)

## Create a summary table
cylinders <- table(mtcars$cyl) # Create table
barplot(cylinders) # Bar chart
plot(cylinders) # DEfault X-Y plot (lines)

# CLEANUP ####

# Clear environment
rm(list = ls())
