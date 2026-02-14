#load libraries
library(ggplot2)
library(dplyr)

#1 Create a simple dataset (use built-in airquality, remove rows with NA in Ozone or Temp)
data = airquality %>%
  select(Ozone, Temp) %>%
  na.omit() %>%
  select(Ozone, Temp)

#2 apply K-means (3 clusters)
set.seed(1)
kmeans_result <- kmeans(data[, c("Ozone", "Temp")], centers = 3, nstart= 20)

# Add cluster info to dataset 
data$cluster <- as.factor(kmeans_result$cluster)

#3 Extract final cluster centroid 
centers <- as.data.frame(kmeans_result$centers)
centers$cluster <- as.factor(1:3)

#4 Compute convex hulls (boundaries for each cluster)
hulls <- data %>%
  group_by(cluster) %>%
  slice(chull(Ozone, Temp)) %>%
  ungroup()

#5 Visualization
ggplot(data, aes(x = Ozone, y = Temp, color = cluster)) +
  # cluster points
  geom_point(size = 7) +
  
  #Polygon boundaries around clusters
  geom_polygon(data = hulls, aes(x = Ozone, y = Temp, fill = cluster, group = cluster), 
               color = "green", alpha = 0.25) +
  
  #Centroids
  geom_point(data = centers, aes(x = Ozone, y = Temp), 
             color = "black", size = 7 , shape = 8) +
  
  #Centroid lables
  geom_text(data = centers, aes(x= Ozone, y = Temp, 
                                label = paste("Cluster", "\n(", round(Ozone,1), ",", round(Temp,1), ")")),
            vjust = -1, color= "red", size = 3.8, fontface= "bold")+
  
  # change color palette (different from previous)
  scale_color_brewer(palette = "Dark2") +
  scale_fill_brewer(palette = "Pastel2") +
  
  # titles and theme 
  labs(title ="K-means Clustering(3 clusters) with boundaries and centroids",
       x= "Ozone",
       y = "Temp") +
  theme_minimal()