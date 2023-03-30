#### Calibration

#### Quantile-loss

#### K-means clustering
Wiki: ```k-means clustering is a method of vector quantization, originally from signal processing, 
that aims to partition n observations into k clusters in which each observation belongs to the cluster with the nearest mean (cluster centers or cluster centroid),
serving as a prototype of the cluster.```    

Training Objective: $$Cost(X,K,\mu_i,\ldots,\mu_K) = \sum_{i=0}^K \sum_{x_i \in C_i} d(X_i,\mu_i)$$

#### Silhouette coefficient
Wiki: ```The silhouette value is a measure of how similar an object is to its own cluster (cohesion) compared to other clusters (separation). 
The silhouette ranges from −1 to +1, where a high value indicates that the object is well matched to its own cluster and poorly matched to neighboring clusters.```  
It is generally used to select optimal value of K(number of clusters), its defined as:
$$SC = \max_k \frac{1}{N} \sum_i \frac{b(i)-a(i)}{\max(a(i),b(i))}$$
where, $a(i)= d(i, \mu_{C_i})$ is the distance of $i^{th}$ point from its cluster mean and $b(i)=\min_{C_j \neq C_i} d(i,\mu_{C_j})$ is minimum of distances from other cluster's mean

#### Feature Importance
