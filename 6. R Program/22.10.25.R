#Load required libraries
library(ggplot2)
library(dplyr)

#step 1 : Create the simple dataset
data <- data.frame(
  customer = paste("C", 1:12, sep=""),
  Income = c(20, 25, 30, 35, 40, 45, 50, 55, 60, 65, 70, 75),
  spending = c(15, 18, 22, 25, 30, 35, 40, 45, 50, 55, 60, 65)
)


#step 2 : Apply K-Means (3 Clustering)
set.seed(1)
kmeans_result <- kmeans(data[, c("Income", "spending")], centers = 3, nstart = 20)

#Add cluster info to dataset
dataCluster <- as.factor(kmeans_result$cluster)

#step 3 : Extract the final cluster centroids
ccenters <- as.data.frame(kmeans_result$centers)
centers$cluster <- as.factor(1:nrow(1:3))


#Step 4 : compute convex hull for each cluster
hulls <- data %>%
  mutate(cluster = dataCluster) %>%
  group_by(cluster) %>%
  slice(chull(Income, spending))

#step 5 : Visualisation
ggplot(data, aes(x = Income, y = spending, color = cluster)) +
  
  
  #Cluster points
  geom_points(size = 7) +
  
  #polygon boundaries around clusters
  
  geom_polygon(data = hulls, aes(fill = cluster, group = cluster), alpha = 0.2, color= "blue" ) +
  
 #centroids
  geom_point(data = centers, aes(x = Income, y = spending), color = "blue", size = 7, shape = 8)+
  
  
  #centroids labels
  geom_text(data = centers, aes(x = Income, y = spending,
                                label = paste ("cluster", cluster, "\n(",
                                               round (income,1),",", round(spending,1),")")),
            vjust = -1, color = "blue", size = 5, frontface = "bold") +
  
  #Labels and theme
labs(title = "K-Means Clustering of Customers",
       x = "Income",
       y = "Spending Score") +
  theme_minimal()
  





