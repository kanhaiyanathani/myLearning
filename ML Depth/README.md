#### Calibration

#### Quantile-loss
For regression task, we want to predict the confidence interval, we do so by predicting for different quantiles, more on it here:
https://medium.com/analytics-vidhya/prediction-intervals-in-forecasting-quantile-loss-function-18f72501586f#:~:text=As%20the%20name%20suggests%2C%20the,predict%2090%25%20of%20the%20times.&text=For%20a%20set%20of%20predictions%2C%20the%20loss%20will%20be%20its%20average.  
For a quantile q, the regression loss function is defined as: $$L(y_i^p,y_i) = max(q(y_i^p-y_i),(q-1)(y_i^p-y_i))$$

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

#### Correlation
article: https://towardsdatascience.com/clearly-explained-pearson-v-s-spearman-correlation-coefficient-ada2f473b8  
pearson gives the linear correlation whereas spearman gives the monotonic correlation(need not be linear)
<img width="676" alt="image" src="https://user-images.githubusercontent.com/17162465/229291126-49c06c14-adc2-4f05-a31f-bf346e3773bb.png">
