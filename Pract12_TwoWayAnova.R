# Load the dataset correctly
data2 <- read.csv("C:\\Users\\prachi\\Downloads\\Two way anova.csv", sep=",", header=TRUE)

# Display dataset information
names(data2)     # Show column names
summary(data2)   # Show summary statistics
head(data2)      # Show first few rows

# Perform Two-Way ANOVA
anv1 <- aov(satindex ~ dept * exp, data = data2)

# Output ANOVA summary
summary(anv1)
