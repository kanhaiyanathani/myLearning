
The basic components of a Machine Learning (ML) system design include:

1. Data Collection: The first step in designing an ML system is to collect the data that the system will be trained on. The data should be relevant to the problem that the system is intended to solve, and it should be diverse enough to represent the variability of the real-world scenarios.
2. Data Preprocessing: The data collected is often raw and unstructured. Therefore, it needs to be processed and transformed into a format that can be easily fed into the ML model. This involves tasks such as data cleaning, feature extraction, feature normalization, and feature selection.
3. Model Selection: The next step is to select an appropriate ML model that can effectively solve the problem at hand. This involves choosing a model architecture, defining hyperparameters, and evaluating the model's performance on the training data.
4. Model Training: The ML model is trained on the preprocessed data using an algorithm that iteratively adjusts the model parameters to minimize the error between the predicted outputs and the actual outputs.
5. Model Evaluation: The trained model is evaluated on a separate set of data that was not used during the training process. This is done to ensure that the model can generalize well to new, unseen data.
6. Model Deployment: Once the model is trained and evaluated, it is deployed in a production environment where it can be used to make predictions on new data. This involves integrating the model into a larger software system, setting up an interface for user interaction, and monitoring the model's performance over time.
7. Model Maintenance: Finally, the ML system needs to be maintained over time to ensure that it continues to perform well. This involves monitoring the performance of the model, collecting feedback from users, and updating the model as new data becomes available or as the problem domain changes.

Some common tools used in the industry for each of the components of an ML system design:

1. Data Collection:
  - Web Scraping Tools: BeautifulSoup, Scrapy, Selenium
  - Data Collection Frameworks: Apache Nutch, Apache Storm, Apache Kafka
  - Cloud Storage Services: Amazon S3, Google Cloud Storage, Microsoft Azure Blob Storage

2. Data Preprocessing:

- Data Cleaning: Pandas, OpenRefine
- Feature Extraction: NLTK, Spacy, Gensim
- Feature Normalization: Scikit-learn
- Feature Selection: Scikit-learn, XGBoost

3. Model Selection:

- Deep Learning Frameworks: TensorFlow, Keras, PyTorch
- Machine Learning Libraries: Scikit-learn, XGBoost, LightGBM
- AutoML Tools: H2O.ai, DataRobot, Google AutoML

4. Model Training:
- Cloud-based ML Platforms: Amazon SageMaker, Google Cloud AI Platform, Microsoft Azure Machine Learning
- Distributed Computing Frameworks: Apache Spark, Dask, Horovod
- GPU Acceleration: NVIDIA CUDA, cuDNN, TensorFlow-GPU

5. Model Evaluation:
- Evaluation Metrics: Scikit-learn, Keras, PyTorch
- Visualization Tools: Matplotlib, Seaborn, Plotly
- A/B Testing Frameworks: Google Optimize, VWO, Optimizely

6. Model Deployment:
- Containerization: Docker, Kubernetes
- Serverless Computing: AWS Lambda, Google Cloud Functions, Microsoft Azure Functions
- API Frameworks: Flask, Django, FastAPI

7. Model Maintenance:
- Monitoring and Logging: ELK Stack, Prometheus, Grafana
- Model Versioning: Git, DVC, MLflow
- Continuous Integration/Continuous Deployment (CI/CD) Tools: Jenkins, GitLab CI/CD, CircleCI



### Serverless Computing:
Serverless computing is a cloud computing execution model in which the cloud provider allocates machine resources on demand, taking care of the servers on behalf of their customers. "Serverless" is a misnomer in the sense that servers are still used by cloud service providers to execute code for developers.

### Continual learning:
Why?
- The major challenge for any ML system is Data distribution shift
- We need to continuosly update our model, but what should be the frequency of that? Its more of an infrastructure problem
- Test in production(proactivity checking the performance and updating the model) vs Model monitoring(passively checking performance of model)
- It should be maintainable and adaptable to the changing environment

How?
- We shouldn't update our model with every new data in production, otherwise catastrophic forgetting might occur
- We should update in batches of data, learning is stable that way
- we shouldn't update our existing model(champion) with the new updated model(challenger) unless we have tested it well in production

<img width="540" alt="Screenshot 2023-03-29 at 4 34 40 PM" src="https://user-images.githubusercontent.com/17162465/228514545-4b3d4aa9-8725-4fe0-82b8-56ac3895c743.png">

- Stateless re-training(training again with entire data) vs Stateful training(fine-tuning with new data)
<img width="540" alt="image" src="https://user-images.githubusercontent.com/17162465/228529396-81e13c1a-868f-4654-9e29-fcf0720206b5.png">

- Most company do stateless re-training, but you require to store all your data for this which eventually have privacy concerns, whereas for stateful training you only train on the new data so you don't require to store all the data.
- However, the companies who does stateful training also do training from scratch sometimes, to calibrate the model time to time.  They also run boths training in parallel and then combine both updated models using parameter server
- Its about setting up infrastructure for continual learning, so we can trigger it whenever any data distribution shift detected 

Model updates, two types:
1. Model iteration: here Model's architechture gets changed, either new feature addition or new layer in the model
2. Data iteration: Only new data

We do stateful training only for Data iterations currently, doing it for model iteration is still in research(Model Surgery)

##### Fast continual learning use case
- Data distribution shift can happens quickly sometime, like sudden surge in demand of a ride sharing requests, the continual learning architecture should be fast enough to tackle the request
- It helps with cold start problem, like recommending for new users

##### Challenges
- Fresh data access, pulling from data warehouses will be slow, need to direct pull and process real-time streaming data using Kafka or Apache flink

### MLOps

link: https://cloud.google.com/architecture/mlops-continuous-delivery-and-automation-pipelines-in-machine-learning
##### The article mentions four different levels of MLOps maturity that organizations may go through as they adopt and improve their ML development practices. These levels are:

- Ad Hoc: At this level, ML development is done on an ad hoc basis with little to no standardization or automation. There is no formal process for data management, model training, or deployment, and each team member may use their own tools and practices.

- Managed: At this level, some standardization and automation is introduced. There may be some shared tools and processes for data management, model training, and deployment, but there is still room for improvement and inconsistency across teams.

- Defined: At this level, there is a standardized, defined process for ML development, with shared tools and practices across teams. There is also greater automation of tasks such as data cleaning, feature engineering, and model training, which leads to faster iteration times and greater reproducibility.

- Optimized: At this level, the ML development process is highly optimized and automated. There are advanced tools and practices in place for data management, model training, and deployment, and teams are able to quickly iterate and deploy high-quality models. Monitoring, logging, and testing are also built into the pipeline to ensure that models remain accurate and reliable over time.

The article emphasizes that it is important for organizations to continually improve and evolve their MLOps practices to move up through these levels of maturity. This can be done through a combination of tooling, processes, and organizational culture changes.

