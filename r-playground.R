install.packages("pacman")
require(pacman)
library(datasets)
head(iris)

# PLOTS
plot(iris$Species)
plot(iris$Petal.Length, iris$Petal.Width)

## Plot formulas
plot(cos, 0, 2*pi)
plot(tan, 0, 2*pi)

# BAR GRAPHS
?mtcars
head(mtcars)

## Create a summary table
cylinders <- table(mtcars$cyl) # Create table
barplot(cylinders) # Bar chart
plot(cylinders) # DEfault X-Y plot (lines)

# CLEANUP ####

# Clear environment
rm(list = ls())

# HISTOGRAMS

# Load Packages ####
library(datasets)

# Load Data ####
?iris
head(iris)

## Basic Histogram
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

## Histogram by Group

# Put graphs in 3 rows and 1 col
par (mfrow = c(3,1))

# Histogram for each species using options
hist(iris$Petal.Width [iris$Species == "setosa"],
     xlim = c(0,3),
     breaks =9,
     main = "Petal Width for Setosa",
     xlab = "",
     col = "red")

hist(iris$Petal.Width [iris$Species == "versicolor"],
     xlim = c(0,3),
     breaks =9,
     main = "Petal Width for Versicolor",
     xlab = "",
     col = "purple")

hist(iris$Petal.Width [iris$Species == "virginica"],
     xlim = c(0,3),
     breaks =9,
     main = "Petal Width for Virginica",
     xlab = "",
     col = "green")

# Restore graphic parameter
par(mfrow=c(1, 1))

# CLEAN UP ####

# Clear Packages
detach ("package:datasets", unload = TRUE) # For base
