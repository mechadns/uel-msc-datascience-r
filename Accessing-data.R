# FACTORS ####

# Create data

(x1 <-1:3)
(y <-1:9)

# Combine variables
(df1 <- cbind.data.frame(x1, y))
typeof(df1$x1)
str(df1)

# AS.FACTOR ####

(x2 <- as.factor(c(1:3)))
(df2 <- cbind.data.frame(x2, y))
typeof(df2$x2)
str(df2)

# Define Existing Variable As Factor ####

x3 <- c(1:3)
df3 <- cbind.data.frame(x3, y)
(df3$x3 <- factor(df3$x3, levels = c(1,2, 3)))
typeof(df3$x3)
str(df3)

# Labels for factor ####

x4 <- c(1:3)
df4 <- cbind.data.frame(x4, y)
df4$x4 <- factor(df4$x4, levels = c(1, 2, 3))