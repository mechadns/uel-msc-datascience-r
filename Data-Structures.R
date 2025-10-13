# DATA STRUCTURES ####

##Vectors ####

v1 <- c(1, 2, 3, 4, 5)
v1
is.vector(v1)

v2 <- c("a","b", "c")
v2
is.vector(v2)

## Matrix ####

m1 <- matrix(c(T, T, F, F, T, F), nrow=2)
m1

m2 <- matrix(c("a", "b", "c", "d"), nrow=2, byrow = T)
m2

## Array ####

# Give data, then dimensions (rows, columns, tables)
a1 <- array(c(1:24), c(4, 3, 2))
a1

## Data frame ####

# Can combine vectors of sames length

vNumeric <- c(1, 2, 3)
vCharacter <- c("a", "b", "c")
vLogical <- c(T, F, T)

dfa <- cbind(vNumeric, vCharacter, vLogical)
dfa # Matrix of one data type

df <- as.data.frame(cbind(vNumeric, vCharacter, vLogical))
df # Make a data frame with three different data types

## List ####

o1 <- c(1, 2, 3)
o2 <- c("a", "b", "c", "d")
o3 <- c(T, F, T, T, F)

list1 <- list(o1, o2, o3)
list1

list2 <- list(o1, o2, o3, list1) # List within list
list2

# COERCING TYPES ####

## Automatic coercion ####

# Goes to the "least restrictive" data type

(coerce1 <- c(1, "b", TRUE))
typeof(coerce1)

## Coerce numeric to integer ####
(coerce2 <- 5)
typeof(coerce2)

(coerce3 <- as.integer(5))
typeof(coerce3)

## Coerce character to numeric ####
(coerce4 <- c("1", "2", "3"))
typeof(coerce4)

(coerce5 <- as.numeric(c("1", "2", "3")))
typeof(coerce5)

## Coerce matrix to data frame ####

(coerce6 <- matrix(1:9, nrow= 3))
is.matrix(coerce6)

(coerce7 <- as.data.frame(matrix(1:9, nrow= 3)))
is.data.frame(coerce7)

# CLEANUP ####

# Clear environment

rm(list =ls())
