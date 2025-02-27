library(ggplot2)
data(iris)
X <- iris[, 1:4]
pca_result <- prcomp(X, center = TRUE, scale. = TRUE)
summary(pca_result)
biplot(pca_result, main = "PCA biplot of Iris dataset")
pca_data <- data.frame(pca_result$x, Species = iris$Species)
ggplot(pca_data, aes(x = PC1, y = PC2, color = Species)) +
    geom_point() +
    labs(title = "Pca for iris dataset", x = "Principle components 1", y = "Principle components 2")
screeplot(pca_result, main = "scree plot", col = "blue")
