# Load dataset
data("iris")

# Check column names (corrected function)
names(iris)

# Remove Species column
new_data <- subset(iris, select = -Species)
new_data

# Perform K-Means clustering with 3 clusters
cl <- kmeans(new_data, 3)

# Print clustering result
cl

# Finding optimal number of clusters using Elbow Method
data <- new_data
wss <- sapply(1:15, function(k) kmeans(data, k, nstart = 10)$tot.withinss)
wss

# Plot WSS vs. Number of Clusters
plot(1:15, wss, type = "b", xlab = "Number of clusters", ylab = "Within groups sum of squares")

# Install and load required package
install.packages("cluster")
library(cluster)

# Cluster plot
clusplot(new_data, cl$cluster, color = TRUE, shade = TRUE, labels = 2, lines = 0)

# Accessing cluster assignments and centers (corrected)
cl$cluster
cl$centers
