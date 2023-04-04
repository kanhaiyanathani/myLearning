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

relying only on mean of silhouette values may not be wise as per: https://scikit-learn.org/stable/auto_examples/cluster/plot_kmeans_silhouette_analysis.html  

#### Feature Importance

#### Correlation (Pearson vs Spearman)
article: https://towardsdatascience.com/clearly-explained-pearson-v-s-spearman-correlation-coefficient-ada2f473b8  
pearson gives the linear correlation whereas spearman gives the monotonic correlation(need not be linear)  
<img width="400" alt="image" src="https://user-images.githubusercontent.com/17162465/229291126-49c06c14-adc2-4f05-a31f-bf346e3773bb.png">  

#### Gradient Boosting: XgBoost vs LightGBM
article: https://neptune.ai/blog/xgboost-vs-lightgbm  
XgBoost: Levle-wise tree growth  
<img width="300" alt="image" src="https://user-images.githubusercontent.com/17162465/229379956-2aee7153-ea77-4ddc-9600-1e5bc1cd199e.png">  

LightGBM: Leaf-wise tree growth  
<img width="400" alt="image" src="https://user-images.githubusercontent.com/17162465/229380002-499ac404-8613-4537-99a6-134a031e3857.png">  


#### BatchNormalization
article: https://towardsdatascience.com/batch-norm-explained-visually-how-it-works-and-why-neural-networks-need-it-b18919692739  
Four parameters for each feature:
1. $\gamma$ : scaling and trainable parameter
2. $\beta$ : shift and trainable
3. $\mu$ : moving average, not trainable, its used during inference
4. $\sigma^2$ : moving variance, not trainable, its used during inference

another good article: https://towardsdatascience.com/batch-normalization-in-practice-an-example-with-keras-and-tensorflow-2-0-b1ec28bde96f  
<img width="300" alt="image" src="https://user-images.githubusercontent.com/17162465/229380464-e33aa006-3cf3-44f4-bca9-c0708810e3f8.png">

### RMSE vs RMSLE
Quote: ```RMSLE metric only considers the relative error between and the Predicted and the actual value and the scale of the error is not significant. On the other hand, RMSE value Increases in magnitude if the scale of error increases.```
article: https://medium.com/analytics-vidhya/root-mean-square-log-error-rmse-vs-rmlse-935c6cc1802a  

### QuantileTransformer
It can convert any distribution into normal or uniform distribution
```from sklearn.preprocessing import QuantileTransformer```
