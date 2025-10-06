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


# SCATTERPLOTS #

# Load Packages ####
library(datasets)

# Load Data ####
?mtcars
head(mtcars)

# Good to first check for univariate distributions
hist(mtcars$wt)
hist(mtcars$mpg)

# Basic X-Y plot for two quantitative variables
plot(mtcars$wt, mtcars$mpg)

# Add some options
plot(mtcars$wt, mtcars$mpg,
     pch = 19, #solid circle
     cex = 1.5, # make 150% size
     col = "#cc0000", # Red
     main = "MPG as a function of Weight of Cars",
     xlab = "Weight (in 1000 pounds)",
     ylab = "MPG")

# CLEAN UP ####

# Clear Packages
detach ("package:datasets", unload = TRUE) # For base

## Overlaying Plots #

# Load Packages ####
library(datasets)

# Load Data ####
?lynx
head(lynx)

# Histogram
hist(lynx)

# Add some options
hist(lynx,
     breaks = 14, # "suggests" 14 bins
     freg = FALSE, # Axis shows density, not freq.
     col = "thistle1",
     main = paste("Histogram of Annual Canadian Lynx",
                  "Trappings, 1821-1934"),
     xlab = "Number of Lynx Trapped")

# Add normal distribution
curve(dnorm(x, mean = mean(lynx), sd = sd(lynx)),
      col = "thistle4",
      lwd = 2, # Line width of 2 pixels
      add = TRUE) # Superimpose on previous graph

# CLEAN UP ####

# Clear Packages
detach ("package:datasets", unload = TRUE) # For base

# BASIC STATISTICS #

# Load Packages ####
library(datasets)

# Load Data ####
head(iris)

## SUMMARY #

summary(iris$Species) # Catergorical variable
summary(iris$Sepal.Length) #Quantitative variable
summary(iris) #Entire data frame

## DESCRIBE #

# Install and Load Packages ####
pacman::p_load(pacman, dplyr, GGally, ggplot2, ggthemes,
               ggvis, httr, lubridate, plotly, rio, rmarkdown, shiny,
               stringr, tidyr)
pacman::p_load(dplyr)

# Psych Package ####

# Load psych package
p_load(psych)

# Get info on package
p_help(psych) # Opens package PDF in browser
p_help(psych, web = F) # Opens help in R viewer

# Describe ####

# For quantitative variables only.

describe(iris$Sepal.Length) # One quantitative variable
describe(iris) # Entire data frame


# SELECTING CASES ####

hist(iris$Petal.Length)
summary(iris$Petal.Length)

summary(iris$Species)

## Select cases by category ####

# Versicolor
hist(iris$Petal.Length[iris$Species == "versicolor"],
     main = "Petal Length: Versicolor")

# Virginica
hist(iris$Petal.Length[iris$Species == "virginica"],
     main = "Petal Length: Virginica")

## Select by value ####

# Short petals only (all Setosa)
hist(iris$Petal.Length[iris$Petal.Length < 2],
     main = "Petal Length < 2")

## Multiple selectors ####

# Short Virginica petals only
hist(iris$Petal.Length[iris$Species == "virginica" & iris$Petal.Length < 5.5],
     main = "Petal Length: Short Virginica")

# Create Subsample ####

# Format: data[rows, columns]
# Leave rows or columns blanks to select all
i.setosa <- iris[iris$Species == "setosa", ]

# Explore SubSample ####

head(i.setosa)
summary(i.setosa)
hist(i.setosa$Petal.Length)
