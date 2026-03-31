# 02_SageMaker_ML_Lifecycle.md

## Scope
- Topic: SageMaker data prep, training, tuning, deployment, and managed ML workflow design
- Files processed: 16
- Extracted non-empty transcript lines: 861
- Processing mode: line-by-line (sentence-level), zero-loss
- Primary source ownership: AWS AI Knowledge Base
- Cross-domain referrals: 0

## Real Material - Architect Learning Build (AI: SageMaker ML Lifecycle)

This section is the study-first architecture guide for sagemaker data prep, training, tuning, deployment, and managed ml workflow design.

### Phase 1 - Foundations

#### Module: SageMaker ML Lifecycle Mental Model
- Use sagemaker ml lifecycle decisions to shape blast radius, access paths, and operational ownership.
- Study service behavior first, then map it into production architecture and exam-ready design language.

##### Source Transcript Details
- Module focus: SageMaker ML Lifecycle Mental Model
- Primary transcript files:
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/162_SageMaker Checkpointing, Cluster Health Checks, Automatic Restarts.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/161_SageMaker Training at Large Scale_ Training Compiler, Warm Pools.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/154_Automatic Model Tuning (AMT) in SageMaker.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/163_SageMaker Distributed Training Libraries and Distributed Data Parallelism.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/03_Data Transformation, Integrity, and Feature Engineering/068_Data Processing, Training, and Deployment with SageMaker AI.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/158_SageMaker Debugger.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/164_SageMaker Model Parallelism Library.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/03_Data Transformation, Integrity, and Feature Engineering/076_SageMaker Feature Store.txt
- outputs/AWS AI/3. aws-generative-ai-developer-professional/06_Managing Models with SageMaker AI/129_Data Processing, Training, and Deployment with SageMaker.txt
- outputs/AWS AI/3. aws-generative-ai-developer-professional/06_Managing Models with SageMaker AI/139_SageMaker Pipelines.txt
- Top concept clusters from transcript metadata:
- Model Development Lifecycle
- Inference and Serving
- AI Governance and Safety
- MLOps and Operationalization
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 861
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- If you want to change opt ML checkpoint to something else within your SageMaker estimator, or if you're using the UI in the AWS console for SageMaker, there is a checkpoint configuration area within the Create Training Job dialog where you can just enter in that S3 location and the local path that you want to sync those checkpoints up in between.
- Before you get started with your training, and also any SageMaker internal service errors that get thrown during your training will result in an automatic restart of your training job using this, uh, this system that will automatically replace any bad instances that crop up, restart the healthy ones, and then restart the entire job.
- So warm pools definitely a good thing to be using if you're going to be repeatedly training, but you do need to request permission for it with a service limit increase if you're training within the SageMaker UI, if you just go to SageMaker in the console and go to training jobs and say, create training job.
- SageMaker can then spin up what we call a hyperparameter tuning job that will train as many of those combinations as you allow, so you can set an upper bound on how many training steps you want to run to control your costs.
- So whereas MapReduce in spark distributes data processing, the distributed training libraries in SageMaker are going to be distributing the computation of the gradients when we're doing gradient descent to train your model.
- You don't have to use the SageMaker one, so if you don't want to be locked into AWS, you can use other training libraries as well for distributed training, for example, the PyTorch Distributed Data Parallel library, or DDP.
- When you are training, all you need to do is create a training job under SageMaker as an input that will take the URL of that S3 bucket that we just produced that contains the processed training data.
- That is, the client library that allows you to register hooks for accessing your training data and feeding that back into SageMaker debugger for all of its analysis and processing.
- And it works with the XGBoost algorithm as well as well as the SageMaker generic estimator, which will work with pretty much anything, including custom training containers.
- So going into a little bit more depth on Sagemaker's parallel training capabilities, there's basically the model parallelism side and the data parallelism side, right.
- In that case, you could use SageMaker batch transform to just get predictions all at once for an entire data set without having a runtime endpoint at all.
- The bottom line here is that SageMaker feature store works with streaming situations, and also with batch situations that are based on S3 security.

##### Polished Architect Notes
- Transcript signals that if you want to change opt ML checkpoint to something else within your SageMaker estimator, or if you're using the UI in the AWS console for SageMaker, there is a checkpoint configuration area within the Create Training Job dialog where you can just enter in that S3 location and the local path that you want to sync those checkpoints up in between.
- Transcript signals that before you get started with your training, and also any SageMaker internal service errors that get thrown during your training will result in an automatic restart of your training job using this, uh, this system that will automatically replace any bad instances that crop up, restart the healthy ones, and then restart the entire job.
- Transcript signals that so warm pools definitely a good thing to be using if you're going to be repeatedly training, but you do need to request permission for it with a service limit increase if you're training within the SageMaker UI, if you just go to SageMaker in the console and go to training jobs and say, create training job.
- Transcript signals that sageMaker can then spin up what we call a hyperparameter tuning job that will train as many of those combinations as you allow, so you can set an upper bound on how many training steps you want to run to control your costs.
- Transcript signals that so whereas MapReduce in spark distributes data processing, the distributed training libraries in SageMaker are going to be distributing the computation of the gradients when we're doing gradient descent to train your model.
- Transcript signals that you don't have to use the SageMaker one, so if you don't want to be locked into AWS, you can use other training libraries as well for distributed training, for example, the PyTorch Distributed Data Parallel library, or DDP.
- Transcript signals that when you are training, all you need to do is create a training job under SageMaker as an input that will take the URL of that S3 bucket that we just produced that contains the processed training data.
- Transcript signals that that is, the client library that allows you to register hooks for accessing your training data and feeding that back into SageMaker debugger for all of its analysis and processing.
- Transcript signals that and it works with the XGBoost algorithm as well as well as the SageMaker generic estimator, which will work with pretty much anything, including custom training containers.
- Transcript signals that so going into a little bit more depth on Sagemaker's parallel training capabilities, there's basically the model parallelism side and the data parallelism side, right.
- Transcript signals that in that case, you could use SageMaker batch transform to just get predictions all at once for an entire data set without having a runtime endpoint at all.
- Transcript signals that the bottom line here is that SageMaker feature store works with streaming situations, and also with batch situations that are based on S3 security.

##### Architect Synthesis (Transcript-Derived)
- Treat Model Development Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Inference and Serving as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat AI Governance and Safety as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat MLOps and Operationalization as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: if you want to change opt ML checkpoint to something else within your SageMaker estimator, or if you're using the UI in the AWS console for SageMaker, there is a checkpoint configuration area within the Create Training Job dialog where you can just enter in that S3 location and the local path that you want to sync those checkpoints up in between.
- Design implication: before you get started with your training, and also any SageMaker internal service errors that get thrown during your training will result in an automatic restart of your training job using this, uh, this system that will automatically replace any bad instances that crop up, restart the healthy ones, and then restart the entire job.
- Design implication: so warm pools definitely a good thing to be using if you're going to be repeatedly training, but you do need to request permission for it with a service limit increase if you're training within the SageMaker UI, if you just go to SageMaker in the console and go to training jobs and say, create training job.
- Design implication: sageMaker can then spin up what we call a hyperparameter tuning job that will train as many of those combinations as you allow, so you can set an upper bound on how many training steps you want to run to control your costs.
- Design implication: so whereas MapReduce in spark distributes data processing, the distributed training libraries in SageMaker are going to be distributing the computation of the gradients when we're doing gradient descent to train your model.

#### Module: Core Services and Building Blocks
- Core services should be understood through control planes, data paths, and failure boundaries.
- Primary implementation choices should be explicit enough to compare with Azure and GCP equivalents.

##### Source Transcript Details
- Module focus: Core Services and Building Blocks
- Primary transcript files:
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/07_Generative AI Model Fundamentals/176_Lab_ Using GPT within a SageMaker Notebook.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/159_SageMaker Model Registry.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/03_Data Transformation, Integrity, and Feature Engineering/076_SageMaker Feature Store.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/09_Machine Learning Operations (MLOps) with AWS/203_SageMaker Inference Pipelines.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/03_Data Transformation, Integrity, and Feature Engineering/068_Data Processing, Training, and Deployment with SageMaker AI.txt
- outputs/AWS AI/3. aws-generative-ai-developer-professional/06_Managing Models with SageMaker AI/139_SageMaker Pipelines.txt
- outputs/AWS AI/3. aws-generative-ai-developer-professional/06_Managing Models with SageMaker AI/129_Data Processing, Training, and Deployment with SageMaker.txt
- Top concept clusters from transcript metadata:
- MLOps and Operationalization
- Inference and Serving
- Model Development Lifecycle
- AI Governance and Safety
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 7
- Key insight candidates scanned (topic): 861
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- So we're going to say from Transformers remember that's the Transformers package from hugging Face I'm importing pipeline, which is again a way that hugging face has made it even easier to use these pre-trained models.
- So that can actually say, hey, let's go get those inference details and deploy it through SageMaker inference pipelines and notify somebody that it's ready to go for both the dev test and production stages as well.
- So under the hood, feature store will both have an online repository of those features and also a batch repository that's the offline store in S3 to query features from the online store and stream them back out.
- Maybe it's coming from SageMaker studio, maybe it's coming from a pipeline where it like step functions or SageMaker pipelines or Apache Airflow, where it's just dumping stuff in there along the way.
- So you can imagine combining your pre-processing, your predictions and post-processing of those predictions, all in different containers that are chained together in an inference pipeline.
- To make it a little bit more real, let's take a look at this example from the AWS blog, where they have an example of a larger machine learning pipeline that involves model monitor.
- Whatever you can dream up, you can still use SageMaker to make that part of your larger pipeline, and there are algorithms available for purchase from the AWS marketplace as well.
- I can just say I'm going to build a pipeline that is for the purpose of generating text using the GPT two model under the hood, which you know, is actually publicly available.
- This is integrated with SageMaker Unified Studio and SageMaker AI, but it makes more sense to just walk through this example to understand what a pipeline is.
- Fine grained access control to feature store is possible through IAM, and you can also secure it with AWS Privatelink to make sure that nobody can access it.
- There's runtime, so I can actually make a persistent endpoint for making real time predictions on demand out there, and scale that out as much as I need to.
- In that case, you could use SageMaker batch transform to just get predictions all at once for an entire data set without having a runtime endpoint at all.

##### Polished Architect Notes
- Transcript signals that so we're going to say from Transformers remember that's the Transformers package from hugging Face I'm importing pipeline, which is again a way that hugging face has made it even easier to use these pre-trained models.
- Transcript signals that so that can actually say, hey, let's go get those inference details and deploy it through SageMaker inference pipelines and notify somebody that it's ready to go for both the dev test and production stages as well.
- Transcript signals that so under the hood, feature store will both have an online repository of those features and also a batch repository that's the offline store in S3 to query features from the online store and stream them back out.
- Transcript signals that maybe it's coming from SageMaker studio, maybe it's coming from a pipeline where it like step functions or SageMaker pipelines or Apache Airflow, where it's just dumping stuff in there along the way.
- Transcript signals that so you can imagine combining your pre-processing, your predictions and post-processing of those predictions, all in different containers that are chained together in an inference pipeline.
- Transcript signals that to make it a little bit more real, let's take a look at this example from the AWS blog, where they have an example of a larger machine learning pipeline that involves model monitor.
- Transcript signals that whatever you can dream up, you can still use SageMaker to make that part of your larger pipeline, and there are algorithms available for purchase from the AWS marketplace as well.
- Transcript signals that i can just say I'm going to build a pipeline that is for the purpose of generating text using the GPT two model under the hood, which you know, is actually publicly available.
- Transcript signals that this is integrated with SageMaker Unified Studio and SageMaker AI, but it makes more sense to just walk through this example to understand what a pipeline is.
- Transcript signals that fine grained access control to feature store is possible through IAM, and you can also secure it with AWS Privatelink to make sure that nobody can access it.
- Transcript signals that there's runtime, so I can actually make a persistent endpoint for making real time predictions on demand out there, and scale that out as much as I need to.
- Transcript signals that in that case, you could use SageMaker batch transform to just get predictions all at once for an entire data set without having a runtime endpoint at all.

##### Architect Synthesis (Transcript-Derived)
- Treat MLOps and Operationalization as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Inference and Serving as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Model Development Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat AI Governance and Safety as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: so we're going to say from Transformers remember that's the Transformers package from hugging Face I'm importing pipeline, which is again a way that hugging face has made it even easier to use these pre-trained models.
- Design implication: so that can actually say, hey, let's go get those inference details and deploy it through SageMaker inference pipelines and notify somebody that it's ready to go for both the dev test and production stages as well.
- Design implication: so under the hood, feature store will both have an online repository of those features and also a batch repository that's the offline store in S3 to query features from the online store and stream them back out.
- Design implication: maybe it's coming from SageMaker studio, maybe it's coming from a pipeline where it like step functions or SageMaker pipelines or Apache Airflow, where it's just dumping stuff in there along the way.
- Design implication: so you can imagine combining your pre-processing, your predictions and post-processing of those predictions, all in different containers that are chained together in an inference pipeline.

#### Module: Operational and Architecture Patterns
- Patterns matter when scale, governance, or reliability turns basic service use into system design.
- Prefer design implications and trade-offs over memorizing isolated features.

##### Source Transcript Details
- Module focus: Operational and Architecture Patterns
- Primary transcript files:
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/154_Automatic Model Tuning (AMT) in SageMaker.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/159_SageMaker Model Registry.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/03_Data Transformation, Integrity, and Feature Engineering/076_SageMaker Feature Store.txt
- outputs/AWS AI/3. aws-generative-ai-developer-professional/06_Managing Models with SageMaker AI/139_SageMaker Pipelines.txt
- outputs/AWS AI/3. aws-generative-ai-developer-professional/06_Managing Models with SageMaker AI/129_Data Processing, Training, and Deployment with SageMaker.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/162_SageMaker Checkpointing, Cluster Health Checks, Automatic Restarts.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/161_SageMaker Training at Large Scale_ Training Compiler, Warm Pools.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/03_Data Transformation, Integrity, and Feature Engineering/068_Data Processing, Training, and Deployment with SageMaker AI.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/163_SageMaker Distributed Training Libraries and Distributed Data Parallelism.txt
- outputs/AWS AI/2. aws-machine-learning-engineer-associate/09_Machine Learning Operations (MLOps) with AWS/203_SageMaker Inference Pipelines.txt
- Top concept clusters from transcript metadata:
- Model Development Lifecycle
- Inference and Serving
- MLOps and Operationalization
- AI Governance and Safety
- Coverage signal: module relevance computed from topic keywords, transcript concepts, and source filenames.

##### Source Coverage Stats
- Total transcript files in topic: 16
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 861
- Key insights inside selected files: 24
- Unique concept tags in selected files: 4

##### Transcript-Enriched Learning Notes
- SageMaker can then spin up what we call a hyperparameter tuning job that will train as many of those combinations as you allow, so you can set an upper bound on how many training steps you want to run to control your costs.
- So that can actually say, hey, let's go get those inference details and deploy it through SageMaker inference pipelines and notify somebody that it's ready to go for both the dev test and production stages as well.
- The bottom line here is that SageMaker feature store works with streaming situations, and also with batch situations that are based on S3 security.
- From training a model to evaluating the model to registering the model and creating and deploying the model all in one SageMaker pipeline.
- Uh, SageMaker can help you do that training and orchestrate it from a notebook or whatever you want.
- If you want to change opt ML checkpoint to something else within your SageMaker estimator, or if you're using the UI in the AWS console for SageMaker, there is a checkpoint configuration area within the Create Training Job dialog where you can just enter in that S3 location and the local path that you want to sync those checkpoints up in between.
- Before you get started with your training, and also any SageMaker internal service errors that get thrown during your training will result in an automatic restart of your training job using this, uh, this system that will automatically replace any bad instances that crop up, restart the healthy ones, and then restart the entire job.
- So warm pools definitely a good thing to be using if you're going to be repeatedly training, but you do need to request permission for it with a service limit increase if you're training within the SageMaker UI, if you just go to SageMaker in the console and go to training jobs and say, create training job.
- So there's a lot of built in machine learning algorithms with SageMaker you can choose from, and each one of those will have their own recommendations for the ideal format of data to be fed into it for the best performance.
- So whereas MapReduce in spark distributes data processing, the distributed training libraries in SageMaker are going to be distributing the computation of the gradients when we're doing gradient descent to train your model.
- You don't have to use the SageMaker one, so if you don't want to be locked into AWS, you can use other training libraries as well for distributed training, for example, the PyTorch Distributed Data Parallel library, or DDP.
- When you are training, all you need to do is create a training job under SageMaker as an input that will take the URL of that S3 bucket that we just produced that contains the processed training data.

##### Polished Architect Notes
- Transcript signals that sageMaker can then spin up what we call a hyperparameter tuning job that will train as many of those combinations as you allow, so you can set an upper bound on how many training steps you want to run to control your costs.
- Transcript signals that so that can actually say, hey, let's go get those inference details and deploy it through SageMaker inference pipelines and notify somebody that it's ready to go for both the dev test and production stages as well.
- Transcript signals that the bottom line here is that SageMaker feature store works with streaming situations, and also with batch situations that are based on S3 security.
- Transcript signals that from training a model to evaluating the model to registering the model and creating and deploying the model all in one SageMaker pipeline.
- Transcript signals that uh, SageMaker can help you do that training and orchestrate it from a notebook or whatever you want.
- Transcript signals that if you want to change opt ML checkpoint to something else within your SageMaker estimator, or if you're using the UI in the AWS console for SageMaker, there is a checkpoint configuration area within the Create Training Job dialog where you can just enter in that S3 location and the local path that you want to sync those checkpoints up in between.
- Transcript signals that before you get started with your training, and also any SageMaker internal service errors that get thrown during your training will result in an automatic restart of your training job using this, uh, this system that will automatically replace any bad instances that crop up, restart the healthy ones, and then restart the entire job.
- Transcript signals that so warm pools definitely a good thing to be using if you're going to be repeatedly training, but you do need to request permission for it with a service limit increase if you're training within the SageMaker UI, if you just go to SageMaker in the console and go to training jobs and say, create training job.
- Transcript signals that so there's a lot of built in machine learning algorithms with SageMaker you can choose from, and each one of those will have their own recommendations for the ideal format of data to be fed into it for the best performance.
- Transcript signals that so whereas MapReduce in spark distributes data processing, the distributed training libraries in SageMaker are going to be distributing the computation of the gradients when we're doing gradient descent to train your model.
- Transcript signals that you don't have to use the SageMaker one, so if you don't want to be locked into AWS, you can use other training libraries as well for distributed training, for example, the PyTorch Distributed Data Parallel library, or DDP.
- Transcript signals that when you are training, all you need to do is create a training job under SageMaker as an input that will take the URL of that S3 bucket that we just produced that contains the processed training data.

##### Architect Synthesis (Transcript-Derived)
- Treat Model Development Lifecycle as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Inference and Serving as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat MLOps and Operationalization as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat AI Governance and Safety as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: sageMaker can then spin up what we call a hyperparameter tuning job that will train as many of those combinations as you allow, so you can set an upper bound on how many training steps you want to run to control your costs.
- Design implication: so that can actually say, hey, let's go get those inference details and deploy it through SageMaker inference pipelines and notify somebody that it's ready to go for both the dev test and production stages as well.
- Design implication: the bottom line here is that SageMaker feature store works with streaming situations, and also with batch situations that are based on S3 security.
- Design implication: from training a model to evaluating the model to registering the model and creating and deploying the model all in one SageMaker pipeline.
- Design implication: uh, SageMaker can help you do that training and orchestrate it from a notebook or whatever you want.

### Phase 2 - Core Services
- SageMaker should be understood in terms of request path, control plane, and operational boundary.
- Amazon S3 should be understood in terms of request path, control plane, and operational boundary.
- Amazon FSx should be understood in terms of request path, control plane, and operational boundary.
- Amazon Athena should be understood in terms of request path, control plane, and operational boundary.
- Amazon Redshift should be understood in terms of request path, control plane, and operational boundary.

### Phase 3 - Advanced Patterns
- Pattern emphasis: AI Governance and Safety becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: AI Operational Context becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Generative AI Architecture becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: Inference and Serving becomes valuable when requirements move from feature use to system design discipline.
- Pattern emphasis: MLOps and Operationalization becomes valuable when requirements move from feature use to system design discipline.

### Phase 4 - System Design (Production)
#### Reference Architecture
- Design sagemaker ml lifecycle with explicit service boundaries, operational controls, and recovery expectations.
#### Scaling Considerations
- Scaling risk appears when sagemaker ml lifecycle decisions are made service-by-service without a whole-system operating model.
#### Cost Considerations
- The main cost driver is usually misalignment between service choice, operations, and workload behavior.

## Cross-Domain Referrals

- No secondary referral sources were required for this topic.

## Step 1 - Line-by-Line Extraction

Every non-empty line from every primary source transcript is preserved below with extraction fields.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/03_Data Transformation, Integrity, and Feature Engineering/068_Data Processing, Training, and Deployment with SageMaker AI.txt

Line 1:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Let's go into a little bit more detail about how you will prepare your data, train your model, and deploy your model under SageMaker for data preparation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: Usually your data will come from S3.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: Amazon FSx
- Key Insights: FSX for lustre is also an option, depending on the scale that you're dealing with, and the ideal format of that data will vary based on the algorithm that you're using.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So there's a lot of built in machine learning algorithms with SageMaker you can choose from, and each one of those will have their own recommendations for the ideal format of data to be fed into it for the best performance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Often it's something like record IO or protobuf, maybe some sort of a columnar data store that might be more efficient for processing that data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: Model Development Lifecycle
- Services: Amazon Athena
- Key Insights: For training a model, you can also ingest data from Amazon Athena, which is one of their database products, elastic MapReduce, which is a distributed processing framework.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 7:
- Concepts: AI Operational Context
- Services: Amazon Redshift
- Key Insights: Redshift, which is our data warehouse solution, or Amazon Key Spaces database as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's another possibility.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Among others, you can also integrate SageMaker with Apache Spark, which is another distributed data processing system that is not specific to AWS, but it's widely used throughout the industry.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So if you want to use Apache Spark for your data processing, you can that does integrate with SageMaker as well and all of the popular data science and data analytics libraries for Python are available to you for data preparation on SageMaker as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Scikit learn, numpy, and pandas are all there at your disposal within SageMaker notebooks if you want to do it there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Conceptually, processing is pretty simple.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: Model Development Lifecycle
- Services: Amazon S3, SageMaker
- Key Insights: You just copy data in from S3 that's been prepared in some manner to be amenable to what you're trying to do, and then you spin up a processing container that can either be your own code or it could be something built into SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you don't want to roll your own code and make your own container for the processing code, you can just use the built in algorithm as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So there are built in processing containers out there that you can just choose from from SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: Model Development Lifecycle
- Services: Amazon S3
- Key Insights: Once it's done processing your data, that output will be processed and stored into another S3 bucket that you specify, which in turn will be passed on to training.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 17:
- Concepts: Model Development Lifecycle
- Services: Amazon S3, SageMaker
- Key Insights: When you are training, all you need to do is create a training job under SageMaker as an input that will take the URL of that S3 bucket that we just produced that contains the processed training data.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You will assign various compute resources for that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Machine learning training and training can be expensive and require pretty hefty hardware.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is where things can get a little bit pricey, but you get to choose what kind of hardware you want to use and how much of it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Different algorithms have different capabilities in terms of scalability, so some do best with a single computer, some will do best with multiple instance types, and they all have their own recommendations about what kind of instance type to use.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: Model Development Lifecycle
- Services: Amazon S3
- Key Insights: And then you will have an S3 bucket for the output, the actual model artifacts of that training that that's where the train model gets stored.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 23:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And you will also need to provide an ECR.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: MLOps and Operationalization, Model Development Lifecycle
- Services: (none explicit)
- Key Insights: That's that's Elastic Container Registry path to where your training code lives.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So again, everything is sort of container based here we had a container for the data processing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: Model Development Lifecycle
- Services: Amazon ECR
- Key Insights: Also a container for the training code all under ECR.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 27:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Once you have that all set up, like I said, you can use any one of a number of built in training algorithms or roll your own sparks machine learning library is also available for you to if you want to stick with spark.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or you can roll your own Python, TensorFlow, PyTorch, MXNet code, whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or if you're not doing deep learning, you can also use scikit learn or RL estimator if you want to do a reinforcement learning.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Also, algorithms like XGBoost.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Hugging face is an option here as well, so that's a big repository of models out there, including a lot of the latest and greatest open source generative AI models and large language models and small language models.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Chainer is also something you could use there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can always just provide your own Docker image that does anything you want as well.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 34:
- Concepts: MLOps and Operationalization, Model Development Lifecycle
- Services: SageMaker
- Key Insights: Whatever you can dream up, you can still use SageMaker to make that part of your larger pipeline, and there are algorithms available for purchase from the AWS marketplace as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Once you've trained your model, you need to deploy it and actually put it into production.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: That model will be saved to S3 in a bucket somewhere.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: And there's a couple of options for deployment.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: There's runtime, so I can actually make a persistent endpoint for making real time predictions on demand out there, and scale that out as much as I need to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: AWS Batch
- Key Insights: But if you don't need real time predictions, maybe you just need to make predictions in a batch manner where you have a big group of data coming in and you just need to get a big batch of predictions coming out all at once.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: Inference and Serving, Model Development Lifecycle
- Services: AWS Batch, SageMaker
- Key Insights: In that case, you could use SageMaker batch transform to just get predictions all at once for an entire data set without having a runtime endpoint at all.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: And there's lots of options there surrounding deployment, and we'll get into some of these in a little bit more depth.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: Inference and Serving, MLOps and Operationalization, Managed AI Service Selection
- Services: Amazon Lex
- Key Insights: Inference pipelines can be used for orchestrating more complex processing.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 43:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: You might need SageMaker neo can be used for deploying your trained models to edge devices.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you need to use your model someplace that might not have reliable internet connectivity or connectivity to the cloud, it's possible to deploy that to the edge device itself.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or if maybe you can't tolerate the latency involved in going to the cloud.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 46:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: There's also something called elastic inference that can be used to accelerate your deployed models.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You just kind of slap it on top there and it makes it faster.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: Inference and Serving, Model Development Lifecycle
- Services: SageMaker
- Key Insights: There are automatic scaling features in SageMaker that can automatically increase the number of endpoints as needed.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 49:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So if you get an increase in traffic, it can automatically add capacity to your inference model there.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 50:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: There's also something called shadow testing, and there are more features around this as well that we'll get into in a bit.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But there are ways to evaluate new models against your currently deployed models to try and catch errors.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: Inference and Serving, Model Development Lifecycle
- Services: SageMaker
- Key Insights: So again, an important part of operations is the ability to test your deployments and the ability to quickly roll them back if something unexpected happens So SageMaker does have a lot of features that allow you to deploy newly trained models in a controlled manner and roll things back if they're not performing as expected.
- Hidden/Implicit Meaning: Model lifecycle signal.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/03_Data Transformation, Integrity, and Feature Engineering/076_SageMaker Feature Store.txt

Line 1:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Let's talk about SageMaker feature store.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 2:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And that is a the word feature in a different sense.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 3:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So in this context, a feature is a property that's used to train a machine learning model.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 4:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So an example might be if you're trying to predict somebody's political party based on features, those features might be somebody's address, their income, their age, things like that.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 5:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Their features are really just, um, columns or fields in a row where you're using those pieces of information to try to predict a label for that row.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 6:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So the features in this case might be the properties of that person, like their address, income or age.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 7:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And the label that we're trying to predict is their political party in that example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: But that's what we mean by features in this context.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 9:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Machine learning models require fast, secure access to that feature data to train a machine learning model.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As you can imagine, it needs to suck up that data at very high quantities and very quickly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it also needs to do it securely because some of that information could be sensitive or personal.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: It's also a challenge to keep that data organized and to share those features across different models.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 13:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So you want to avoid a situation where you're storing these features more than once.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 14:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: You want to be able to share them when you're trying to do different things with machine learning, where those features come from is totally up to you.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 15:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: You can see SageMaker feature store kind of sits in the middle of this whole universe here of where data might come from.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 16:
- Concepts: MLOps and Operationalization, Model Development Lifecycle
- Services: SageMaker
- Key Insights: Maybe it's coming from SageMaker studio, maybe it's coming from a pipeline where it like step functions or SageMaker pipelines or Apache Airflow, where it's just dumping stuff in there along the way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: MLOps and Operationalization, Model Development Lifecycle
- Services: AWS Glue, Amazon EMR, SageMaker
- Key Insights: Your features might be coming from some sort of EMR pipeline or from glue or from SageMaker processing.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 18:
- Concepts: Model Development Lifecycle
- Services: AWS Glue, Amazon Kinesis, SageMaker
- Key Insights: Maybe these features are streaming in from Kinesis or Kafka, and maybe they're being created from SageMaker, Data Wrangler, or from glue.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Databrew.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: These are all examples of where data might come from.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So where it comes from can be pretty much anywhere.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: What feature store brings to the table is organizing that data.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 24:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So it has a feature store.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 25:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And within a feature store we have what we call feature groups where we organize these features together.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 26:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And each feature group will contain record identifiers, feature names, and event times associated with that feature.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: How does it all work?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: Model Development Lifecycle
- Services: AWS Batch, SageMaker
- Key Insights: So there's basically a streaming world and a batch world here with SageMaker feature store.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 29:
- Concepts: Model Development Lifecycle
- Services: Amazon Kinesis, Amazon MSK, SageMaker
- Key Insights: So let's imagine that we're streaming data in from Kinesis or MSK or Apache Spark or SageMaker, Data Wrangler or any other streaming source.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Basically, there's a put record API that can be used with feature store, where you can feed that streaming data into feature store and it will process it.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 31:
- Concepts: Model Development Lifecycle
- Services: AWS Batch, Amazon S3
- Key Insights: So under the hood, feature store will both have an online repository of those features and also a batch repository that's the offline store in S3 to query features from the online store and stream them back out.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 32:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: There's a Getrecord API you can use for that, so your model can stream those features out using the Getrecord API.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 33:
- Concepts: AI Operational Context
- Services: AWS Batch
- Key Insights: Or if you want to do batch access, that's what that offline store is for.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: Model Development Lifecycle
- Services: AWS Glue, Amazon S3, SageMaker
- Key Insights: So SageMaker Feature Store will automatically create a glue data catalog for that data stored in S3.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 35:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: And you can do anything you want with that S3 data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: Amazon Athena
- Key Insights: You can use tools like Athena or Data Wrangler.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: Model Development Lifecycle
- Services: Amazon S3
- Key Insights: Anything that can hit S3 can be done with the offline feature store.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 38:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: You can also dump data directly into it if you want to, so you don't have to stream data into SageMaker feature store.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 39:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: You can just put it right into its offline store in S3 and do it that way too.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Whatever works for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Governance and Safety, Model Development Lifecycle
- Services: AWS Batch, Amazon S3, SageMaker
- Key Insights: The bottom line here is that SageMaker feature store works with streaming situations, and also with batch situations that are based on S3 security.
- Hidden/Implicit Meaning: Model lifecycle signal; Governance and safety signal.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Everything is encrypted at rest and in transit automatically, and if you have a KMS customer master key, you can use it with it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Fine grained access control to feature store is possible through IAM, and you can also secure it with AWS Privatelink to make sure that nobody can access it.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That shouldn't.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/154_Automatic Model Tuning (AMT) in SageMaker.txt

Line 1:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Let's talk about automatic model tuning within SageMaker, which is a very exciting capability of the SageMaker system.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So hyperparameter tuning is kind of a really big problem in the world of machine learning.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So for all these algorithms we've talked about, we've talked about the different hyperparameters that they exposed.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And there's a lot of them.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: How do you find the most optimal values to set for these things?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, we have some guidance on some of these things.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: AWS Batch
- Key Insights: I mean, we've talked about the effects of different learning rates and batch sizes and depths.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You know, some of these cause you to find local minima that aren't the right answer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Some of them can cause you to overfit your model, things like that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But to find the absolute best value of these things, it's tough.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I mean, these are very complicated systems, and there's really no better way that we've come up with yet than just trying different values and seeing which one works the best.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So often you just have to experiment with different values of these parameters to end up with a model that's as optimal as it can be.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: It's kind of a machine learning, dirty little secret that we don't fully understand what's going on inside there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And a lot of it's just trial and error to see what works.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this problem blows up very quickly when you have many different parameters that you want to optimize at once.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if I have ten different values of learning rate that I want to try to drill in on, well that's fine.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I can just train my model and test it ten times and figure out which learning rate worked the best.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: AWS Batch
- Key Insights: But if I have ten different learning rates and ten different batch sizes that I want to try out, well, now I have ten times ten different possibilities to try.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If I want to throw in like different depths of the network as well, I just blew it up by another order of magnitude.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So as you add more and more hyper parameters that you want to try to tune at once, this problem just grows exponentially.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You have to try every combination of every possible value, and every time you have to train a model and evaluate that model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, this gets really, really, really, really expensive, both in terms of time and money very quickly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So that's what automatic model tuning and SageMaker tries to help with.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Basically, you just define the hyperparameters that you care about and the ranges of values that you want to try on those hyperparameters and what metric you're optimizing for.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: SageMaker can then spin up what we call a hyperparameter tuning job that will train as many of those combinations as you allow, so you can set an upper bound on how many training steps you want to run to control your costs.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it will try to work within that bound.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And as it goes, it will actually spin up training instances to run as much in parallel as it can, potentially quite a few of them, and just try to plow through all those different combinations of parameters as quickly as it can.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 29:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: It can involve quite a bit of computing power, but at least, you know, we can use the parallel capabilities of SageMaker and the ability to spin up entire separate instances to do this, for you to try to make that as quick as possible.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Once you're done, the set of hyperparameters that produce the best results can be turned around and deployed as a highly tuned model that uses the best parameters you could find.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But here's where it gets really cool.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So the thing that's special about automatic model tuning in SageMaker is that it learns as it goes, so it doesn't actually try every possible combination.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It can actually learn over time that, you know, going in this direction on this parameter is having a positive effect, and this one is having a negative effect.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it can use that to be more intelligent about the actual parameters that it tries out.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it doesn't necessarily try every possible combination of those parameters.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It learns as it goes to try to figure out intelligently which ones make the most sense to try out next.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And by doing that, it can save a lot in terms of the resources required to do your hyperparameter tuning.
- Hidden/Implicit Meaning: Constraint or limitation signal; Model lifecycle signal.

Line 38:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Now, there are some best practices you should follow when doing automatic model tuning in SageMaker, and this is important.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Model lifecycle signal.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Remember this stuff.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: First of all, don't try to optimize too many hyperparameters at once.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Like we talked about.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This explodes very quickly and as you add more hyperparameters, that's basically another dimension of parameter space that you need to explore, and it just blows up exponentially.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So try to focus on the hyperparameters that you think will have the most impact on the accuracy of your model, or whatever metric you're optimizing for.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Start with those first.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can always do more tuning on other parameters as a second pass later on.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Model lifecycle signal.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Also, make sure you limit your ranges to a smaller range as possible.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you have some guidance as to what parameters might work.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Don't explore crazy values on the outside of that, because that will just yield work that you don't need to be done.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Another key one is using logarithmic scales when appropriate.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So whenever you do an automatic model tuning job, you tell it not only the range, but also the scale in which you want to explore this range.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Model lifecycle signal.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Linear will just go through in a linear, linear manner, but if you have a hyper parameter where the values tend to range from something like 0.001 to 0.1, for example, you probably want to try a logarithmic scale for that instead.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you did a linear scale, you'd be there all day, but logarithmic would explore that more quickly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Also, do not run too many training jobs concurrently.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Like we talked about.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Sagemaker's parameter tuning learns as it goes, and it can't do that learning.
- Hidden/Implicit Meaning: Constraint or limitation signal; Model lifecycle signal.

Line 57:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: If it's doing everything in parallel, it works much better if you just run, you know, 1 or 2 training jobs at once.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 58:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Allow SageMaker to learn from those results and then run the next set of training jobs.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 59:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So don't run too many training jobs concurrently with parameter tuning.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 60:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: That can limit how well the process can learn, which is really the key to Sagemaker's efficiency in doing hyperparameter tuning.
- Hidden/Implicit Meaning: Constraint or limitation signal; Model lifecycle signal.

Line 61:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Also, finally, if you have a training job that's running across multiple instances, you have to take care to make sure that the correct objective metric in the end is being reported from the sum result of all those training instances.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 62:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So if you're doing your own training job code, that can be a little bit tricky.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 63:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You want to make sure that it plays nice with hyperparameter tuning.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: By reporting the objective that you're trying to optimize on in hyperparameter tuning at the end when all those instances come back together.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 65:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But the key ones to remember here are.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 66:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Use a small range if you can.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Don't do too many hyperparameters at once.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Don't run too many training jobs concurrently because the learning relies on sort of that sequential learning over time and also, whenever appropriate, use logarithmic scales for exploring your parameter space
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Model lifecycle signal.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/156_SageMaker Autopilot _ AutoML.txt

Line 1:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Let's also talk about SageMaker autopilot in a little bit more depth, because this two is showing up in the exam now.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: SageMaker autopilot is just a wrapper on what we call AutoML.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the idea of just automatically figuring out what the right model and algorithm is to make predictions based on your data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this kind of is a automated you if you will.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's doing all the heavy lifting of figuring out what the best model is to apply and how to tune that model to get the best results automatically.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So there is literally a wizard you can go through that says, my data is here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is the thing I want to predict.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Here is my data that I want to train it on, and it goes off and figures it out for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will create an optimized model, figure out what model to use, how to tune it, and show you what the results are.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's anyone can do it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's kind of crazy.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it can automate algorithm selection.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Also your data pre-processing, the tuning of that model and all the associated infrastructure and making it all work together.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So literally with a few clicks of a mouse, you too can be a machine learning engineer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Crazy, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It does all the trial and error for you under the hood automatically.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: All the hyperparameter tuning, all the experimenting with different model types, and you will automatically get an optimal result.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now more broadly, again this is called AutoML.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: That's nothing new, but SageMaker autopilot is their name for AutoML in SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The workflow looks like this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So they do allow you a little bit more control if you want it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: Model Development Lifecycle
- Services: Amazon S3
- Key Insights: The first step is to load your data from S3 somewhere for training purposes.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You then need to select your target column for the thing you want to predict, and then it kicks off automatic model creation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it goes off and tries different models and finds the one that works best for your data for creating the best predictions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will then at that point offer you a model notebook.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it is not entirely a black box.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will give you a notebook so you can see what it actually came up with, and you can have visibility into what it's doing and control that and tweak it if you want to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you can just use autopilot as a starting point, which is a really good idea that will save you a lot of work, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But you can still apply your own judgment and refinement to what it comes up with.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you want to, it also exposes a model leaderboard, so you will be presented with a ranked list of the recommended models, the ones that performed the best, and you can pick one if you want to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You don't have to use the number one choice.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can go back and change that if you need to, and then you can deploy and monitor that model once you've selected it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you can monitor it over time and if you need to, you can refine it in that notebook that it gave you earlier if need be.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or you can just let it run.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So yeah, this is like a actual screenshot from SageMaker autopilot here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Do you want to run a complete experiment?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Yes.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will just go off and do it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's it's um I'm not sure how to feel about it, quite honestly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It kind of oversimplifies things, but that's what it does.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It works.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: A few more details on autopilot.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can add in as much or as little human guidance into the process as well, so you can let it do the whole thing automatically, or you can inject human guidance along the way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can use it with or without code as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you don't want to write any code, you don't have to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if you want to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: In SageMaker studio, you can use any of the AWS SDKs to inject code into the process as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Three main types of problems.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can use autopilot on binary classification.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Whether or not something is true or false, or in one category or the other.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Multi-Class classification as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And also regression.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You know, doing a simple prediction based on a past data points.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There are three main algorithm types to choose from.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you're running autopilot in hyperparameter optimization mode, or HPO, that's linear learner XGBoost and any number of deep learning algorithms as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's also a mode called ensemble mode that automatically mixes together all of those algorithms, and then some, and lets them all sort of vote on the best outcome based on the ensemble of algorithms as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's also an option.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Your input data must either be tabular, CSV, or more recently parquet has been added as well as an input type.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 59:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: A little more depth on autopilots training modes.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I'm a little surprised this much depth is on the exam, but that's what we're hearing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So there's a few choices you can select when you're setting up autopilot.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: One is for hyperparameter optimization or HPO, and in this method, autopilot will automatically select the algorithms that are most relevant to your data set.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 63:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Talked about that a little bit in the previous slide.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The choices that it has to work from are linear learner XGBoost or a deep learning multi-level perceptron sort of thing, and it will automatically set the best range of hyperparameters to tune your model, and then go off and run up to 100 trials by default to find the optimal hyperparameters in that range.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 65:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: As you can imagine, that might get kind of expensive and resource intensive, but hey, it works now.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 66:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: How it actually does that depends on the size of your data set.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if your data set is less than 100MB in size, it will use something called Bayesian optimization.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if it's greater than that, if it's a large data set, then it will use Multi-fidelity optimization.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 69:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That means that it will automatically stop a trial that's running if it's performing poorly compared to other trials that it ran earlier.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 70:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The other choice is Ensembling.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 71:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And again, this is just more depth on what we talked about in the previous slide.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 72:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The way that works is that it trains several base models at once, using something called the Autogluon library, and it has a wider range of models to choose from in the Ensembling mode.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 73:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in addition to Linear Learner, XGBoost and deep learning, there are more tree based methods that are available to it and neural network algorithms as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 74:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You know, just things like random forests and a bunch of other tree related ones and, and some neural network algorithms that are based on PyTorch in Ensembling mode.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 75:
- Concepts: AI Operational Context
- Services: AWS CloudFormation
- Key Insights: It will run ten trials, all with different models and parameter settings, and then it will combine them together into a stacked ensemble method.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 76:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So instead of having a single model, it's going to run those ten models together and use those to find the best optimal result.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 77:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's also an auto mode, which is probably what most people are going to do.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 78:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The way this works under the hood is that if your data set is greater than 100MB, it will automatically use hyperparameter optimization mode.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 79:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If it's less than 100MB, it will use Ensembling mode.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 80:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's that simple.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 81:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: However, there is a caveat here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 82:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: In order to make that determination, SageMaker autopilot needs to be able to determine the size of your data set.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 83:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If it can't figure out if you're greater than 100MB or not, then it can't make a choice and will default to HPO in that case.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 84:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: Some situations that might lead to that would be if your S3 bucket for your data is hidden inside a virtual private cloud or VPC.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 85:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: In that case, SageMaker autopilot can't figure out how big your data set is, and it will just default to HPO.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 86:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: Also, if your S3 data type is set to manifest file, or if your S3 URI contains more than 1000 items, automatic mode will just punt and go to HPO because it can't figure it out on its own.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 87:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So those are the limitations of it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 88:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So those are some details about SageMaker autopilot training modes that might be important to know.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 89:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And also autopilot again does not need to be a complete black box.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 90:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There is a real danger here, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 91:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: From an ethics standpoint, if I just push a button and create the optimal model for my training data, I don't know what kind of bias might have existed in that training data, right?
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 92:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I could be creating something that's terribly biased and doing unethical things for all I know.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 93:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's very important that we understand what this automatically generated model is really doing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 94:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that might not just be not just be because, you know, you want to do the right thing, but because there might be auditing concerns or, you know, oversight on what you're trying to build here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 95:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So to that end, SageMaker autopilot integrates with something called SageMaker clarify.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 96:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: This is another relatively new feature of SageMaker.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 97:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So clarify tells you basically how different features contributed to each prediction, and it gives you more transparency on what features went into your predictions and what biases might exist based on those features.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 98:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So, you know, for example, if you're creating a model that approves loans for houses and you see that race is some sort of a really strong feature, something's wrong there, you better go back and take a look at the bias that might exist in your source data.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 99:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 100:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I really love this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 101:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's really awesome.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 102:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Uh, acknowledging the fact that there can be bias that you don't see without some further analysis.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 103:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the real danger of AutoML is that you just crank out these models without thinking about them, and these sorts of biases can creep in without you even realizing it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 104:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So this is a great feature.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 105:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it does give you transparency on how models arrive at their predictions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 106:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Under the hood.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 107:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: It's a figuring out feature attribution using something called Shap baselines, which is based on Shapley values based on this paper that you see here on the right.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 108:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The research for this actually comes from the field of cooperative game theory.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 109:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So kind of a neat crossover there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 110:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: The way it works is that it assigns each feature an importance value for each given prediction.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 111:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So it's just a way of going back and figuring out what features in your training data or your source data actually lended the most weight to the final predictions.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 112:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's important to know.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 113:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And if you see surprises in how important a feature is toward your predictions, well, it's time to apply your human knowledge and intuition and knowledge about the domain space to figure out if there's actually bias going on there in your training data that you need to go back and clean or address.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 114:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Somehow
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/157_SageMaker Studio, SageMaker Experiments.txt

Line 1:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Let's talk about SageMaker Studio and they're building this as a visual IDE or integrated development environment for machine learning.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So they're really trying to give the developer experience when using SageMaker a facelift and, you know, take it from the current implementation using the AWS console into something that feels more like an actual development environment that you'd be, you know, actually have fun working with.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And it integrates a lot of the different features that we're about to cover.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 4:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: This is what the new notebook interface looks like in SageMaker Studio.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: And what they're doing is trying to integrate Jupyter notebooks with SageMaker Studio.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And, you know, a lot of it's just a look and feel sort of a thing that just feels more like an IDE, but it's still just a Jupyter notebook.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But it does allow you to share these notebooks, which is kind of a cool thing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, you know, it allows you to actually collaborate with other people on your team and share these notebooks with a group of people.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: It also allows you to switch between hardware configurations because there's no infrastructure for you to manage.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So again, you're running this on AWS managed hardware, not on your own hardware.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So just a new look and feel for notebooks that allows you to share them with your colleagues.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Another component of SageMaker Studio is SageMaker Experiments.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is made to just let you organize and capture and compare and search all of your historical ML jobs in one place.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So when you're using SageMaker, you tend to accumulate a very long list of notebooks that you've been playing with and jobs that you've been creating.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is just a one-stop place to actually search them and make sense of them and try to figure out which models did the best and actually compare them to each other.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So a more useful way of visualizing and interpreting the results from the many different models that you might create using SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: That's SageMaker Experiments.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/158_SageMaker Debugger.txt

Line 1:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Amazon has invested a lot into SageMaker debugger recently, and this is starting to show up on the exam more so it is worth going into a little bit more depth on this one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So SageMaker debugger.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: The idea is that it will save the internal model state for you at periodic intervals, so you can go back and see what's going on during your training.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So as your model is trained, it will store the individual gradients and tensors over time.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So you can see their trends as the training progresses.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you don't have to figure it out by hand.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: You can actually define rules that will detect unwanted conditions while training is happening.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you want to watch out for something going out of bounds, you can set up a rule for that and have that automatically fire off some sort of an alert when it's hit.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: So for every rule you configure in the debugger, a debug job will be run individually for that rule.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: Amazon CloudWatch
- Key Insights: And when that rule is hit, it will automatically log a CloudWatch event and you can respond to that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: Amazon CloudWatch
- Key Insights: However, you would respond to any CloudWatch event.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Maybe you send off a notification through SNS and send a message to your cell phone.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: I don't know whatever you want to do This does integrate with SageMaker studio.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: It has something called SageMaker Studio Debugger dashboard.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you can do this all in a visual environment.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: It can also automatically generate training reports.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 17:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So by just checking a box, you can just say, I want a detailed report of what happened during training.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 18:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: And SageMaker debugger will give you more depth into what happened during the training process.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 19:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: SageMaker debugger has several built in rules.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They fall under these three categories.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: One set of rules is for monitoring system bottlenecks.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Another set of rules will profile your model framework operations like TensorFlow or whatever is going on under the hood there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: And you can also debug model parameters using SageMaker debugger as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now those framework operations, these are the frameworks that it can support and the algorithms it can support.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it can work with TensorFlow, PyTorch or MXNet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: And it works with the XGBoost algorithm as well as well as the SageMaker generic estimator, which will work with pretty much anything, including custom training containers.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There are also APIs for the debugger available in GitHub that Amazon makes available for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Using those APIs, you can construct your own hooks and rules under the Create Training job and describe training job APIs to do whatever you want and hook into the debugger.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The debugger library is called SME debug.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: That is, the client library that allows you to register hooks for accessing your training data and feeding that back into SageMaker debugger for all of its analysis and processing.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 31:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So SME debug is the name of that client library for integrating SageMaker debugger with your own training code.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 32:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: And even newer in SageMaker debugger.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They've added a few more things more recently in 2021.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So there is the SageMaker Debugger Insights dashboard that you see here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: This just lets you see everything in a graphical manner and see what's going on over time during the training process.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And there are also some specific profiler rules for the debugger that are relatively new.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We talked about this briefly in the previous slide.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But the a little bit more depth here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's a profiler report profiler rule that will just kick off that profiling report that you can view in the dashboard.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: There is also hardware system metrics rules you can set up for profiling, and this will monitor CPU usage, GPU usage, and other things that might be relevant to system usage within your cluster as training is happening over time, and it will also allow you to monitor and profile framework metrics, for example, max initialization time, overall framework metrics, and step outlier.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 41:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: These are the hyper parameters, if you will, for the actual framework being run for the training.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 42:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: There are also three built in actions to receive notifications or to stop training in response to a debugger event.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 43:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: You can call stop training to stop training in response to something happening.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can send an email or you can send an SMS message.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: An email and SMS works through SNS, the simple notification service, and these are all in response to the debugger rules that you set up.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So you can set up a debugger rule that will automatically stop training or notify you through email or SMS using SNS automatically.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 47:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: This allows you to profile both system resource usage and how training is going over time.
- Hidden/Implicit Meaning: Model lifecycle signal.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/159_SageMaker Model Registry.txt

Line 1:
- Concepts: MLOps and Operationalization, Model Development Lifecycle
- Services: SageMaker
- Key Insights: Let's go into a little bit more depth on SageMaker model registry here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's something you definitely need to know about.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's just a catalog for your models and a way to manage information about those models, like the version, whether they're approved for use or not.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Kind of like just a fancy database, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it allows you to associate metadata with your models, whatever you want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Again, it's kind of just like a database lookup.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: At the end of the day, it gives you a means of managing approval for a model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you want to make sure that you're kicking off some model for manual approval before it's deployed to production, well, it can keep track of that for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it can also be a component of actually deploying your models to production.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: So maybe your pipeline for machine learning depends on model registry to check.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Hey, is this thing actually approved and ready to go or not?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: It can also be a part of your larger continuous integration and continuous deployment system, and it can allow you to also share models among different applications.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's really the heart of it here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: So by centralizing your models into one place, into this model registry, you can kind of build up this library of models within your organization and share those models across your organization for different applications.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: Model Development Lifecycle
- Services: Amazon RDS, SageMaker
- Key Insights: It also has an has integration with SageMaker model cards.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: Amazon EBS, Amazon RDS
- Key Insights: I don't think we've touched on that in this course, but model cards are just a little, um, just a little website, basically a little web page that says, here's the properties of my model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Here are its limitations.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Here's what it's trained on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So just sort of higher level governance information about a model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: So you can point in the model registry where the model card is for this model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: Again it's just associating metadata with your models and sort of a very simple database that can be part of your machine learning pipeline.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: To make it a little bit more real, let's take a look at this example from the AWS blog, where they have an example of a larger machine learning pipeline that involves model monitor.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So step one is to create your model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: MLOps and Operationalization, Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So you have this little training pipeline there where we're pre-processing and training our model.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then we create our model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: At that point we register that model at the number one there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: That goes into the model registry at the top.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: Amazon EventBridge
- Key Insights: At that point, we can capture the event that a new model was registered through EventBridge.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: AWS Lambda
- Key Insights: And maybe that kicks off a Lambda function that says, hey, someone needs to approve this new model that goes off to the request to approve the model there at number four.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: MLOps and Operationalization
- Services: API Gateway, AWS Lambda
- Key Insights: That goes down to a human approver, which then will either approve or reject it, which then it can go back through the API gateway and through Lambda again, and go back to Model Registry to update that field in the model registry metadata for that model saying, yes, this is approved, it's ready to go.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: Inference and Serving, MLOps and Operationalization
- Services: AWS SAM
- Key Insights: At the same time, it might update a parameter store that kicks things off to actually kick off the inference pipelines to deploy this model in production.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 32:
- Concepts: Inference and Serving, MLOps and Operationalization, Model Development Lifecycle
- Services: SageMaker
- Key Insights: So that can actually say, hey, let's go get those inference details and deploy it through SageMaker inference pipelines and notify somebody that it's ready to go for both the dev test and production stages as well.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 33:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: So just an example of how model registry might be a component to manage things like model approval and to keep track of basically what's where with your models.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: So that's all model registry is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: Again, think of it as a fancy database table where you have information about your models that might include things like the model card for that model, whether it's been approved and more importantly, it's a central registry for all the models in your organization that might be shared by others.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/161_SageMaker Training at Large Scale_ Training Compiler, Warm Pools.txt

Line 1:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Let's talk about some of the more advanced SageMaker training techniques out there.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 2:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And these are geared toward really large scale training applications, like training large language models where you're talking about billions of parameters, maybe even trillions of parameters.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you need to scale things way, way, way, way up, if you're building the next generation AI, these are some ways you can do that on AWS.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: One tool that's being phased out is the SageMaker Training Compiler, but it does show up in AWS's training materials for this exam.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I'm going to cover it real quickly anyway.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is integrated into AWS deep learning containers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And if you're not, if you don't remember what a deep learning container is, it's just a pre-built Docker image that runs TensorFlow, PyTorch, or MXNet.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But as you'll see, a lot of these tools are really specific to PyTorch these days.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I would choose PyTorch if I were you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: You can't bring your own container and use the training compiler, but again, it's being phased out, so I wouldn't worry about it too much, but you should at least know what it is to use it.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Model lifecycle signal.

Line 11:
- Concepts: Model Development Lifecycle
- Services: AWS Config
- Key Insights: It's just a matter of saying compiler underscore config equals training compiler config within your estimator class. so easy peasy.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 12:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: It's already there for you in those Docker images for DLC, and that will compile and optimize your training jobs on the GPU instances for you automatically.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 13:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So by doing that optimization for the hardware you're on, it can accelerate your training by up to 50%.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That sounds like a good thing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I don't know why they're getting rid of it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will convert your models into hardware optimized instructions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I mean, well, that's what a code optimizer does at the end of the day, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's been tested with hugging face transformers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or bring your own model and it can optimize that as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: It is, however, incompatible with SageMaker distributed training libraries.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 21:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And that might be why they're phasing out the training compiler, because they seem to be pushing people toward those distributed training libraries now, and we'll cover those in more depth very soon.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 22:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: If you are using the training compiler.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Um, they haven't officially shut it down.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They just said that they're not going to maintain it anymore.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's not going to be any more new versions, I guess.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Uh, they must have been victims of some of their layoffs or something.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if you are using it, best practices are to ensure that you're using GPU instances such as the ML, P3, P4, G4, or G5 instance types.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: With PyTorch, you need to be using the PyTorch XLA models.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: Save function for it to work properly, and if you want to enable debugging, you can by just enabling the debug flag in the compiler underscore config parameters there that you set up in your estimator class.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Unfortunately, like I said, it's no longer maintained, so it's pretty cool, but there will be no more new versions of it put out.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Another technique for optimizing your training is something called warm pools.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 32:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And the idea here is that if you're repeatedly training your model, you want to avoid all the overhead of reprovisioning all that infrastructure over and over and over again.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 33:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So with a warm pool, you can say, when I'm done with my training pass, I want to hang on to that hardware for a little bit, just in case I want to use it again.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So don't give it up right away.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So if you're repeatedly training a model that can speed things up considerably because a lot of time is just spent provisioning the hardware that you need, right?
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 36:
- Concepts: Model Development Lifecycle
- Services: AWS Config
- Key Insights: To use that, all you need to do is specify a keepalive period in seconds in your training jobs, resource configuration.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or you can do it in the UI like I'll show you in a moment.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It does, however require a service limit increase request.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you can't just do it.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You have to ask for permission before you can actually turn this on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And it also, to further accelerate things, uses a persistent cache to store your data across those training jobs.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 42:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So not only is it keeping your hardware around, it's also keeping your data around across those training jobs.
- Hidden/Implicit Meaning: Constraint or limitation signal; Model lifecycle signal.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that reduces costs even further.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So warm pools definitely a good thing to be using if you're going to be repeatedly training, but you do need to request permission for it with a service limit increase if you're training within the SageMaker UI, if you just go to SageMaker in the console and go to training jobs and say, create training job.
- Hidden/Implicit Meaning: Constraint or limitation signal; Model lifecycle signal.

Line 45:
- Concepts: AI Operational Context
- Services: AWS Config
- Key Insights: Under those job settings, you'll see the resource configuration that Keepalive period is what's going to enable the use of warm pools.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you just put something in there that'll say, yep, I want to hang on to that hardware for a little bit in between runs and hopefully enable you to reuse that hardware within the keepalive period that you specified.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/162_SageMaker Checkpointing, Cluster Health Checks, Automatic Restarts.txt

Line 1:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Another feature of SageMaker training you can enable is checkpointing.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 2:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And this just creates snapshots during your training.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if something goes horribly wrong, it allows you to pick up where you left off if you need to from those checkpoints.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it's also useful for troubleshooting.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So it gives you the ability to analyze your model at different points during the training process.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 6:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So if you have a really large training job and something goes wrong, well, it can be hard to track that down, right?
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Because it's so large.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So with checkpoints, you get to break that job down into smaller components that are easier to to debug and analyze.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: Model Development Lifecycle
- Services: Amazon S3
- Key Insights: Hopefully it will automatically synchronize the state of your training with S3.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 10:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: So that goes back and forth from your local storage, from opt ML checkpoint to whatever S3 location you specify, and you can actually change that local checkpoint, uh, location as well, if you want to, to use it within your script, you would define checkpoint S3 URI to define where it gets synchronized to in S3, and also checkpoint local path.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: Model Development Lifecycle
- Services: AWS Config, Amazon S3, SageMaker
- Key Insights: If you want to change opt ML checkpoint to something else within your SageMaker estimator, or if you're using the UI in the AWS console for SageMaker, there is a checkpoint configuration area within the Create Training Job dialog where you can just enter in that S3 location and the local path that you want to sync those checkpoints up in between.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that's checkpointing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Moving on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's also talk about cluster health checks and automatic restarts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: These are things that's just kind of happen under the hood for you automatically if you're using an ML or MLP instance type.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But it's good to know that this is there for you and keeping an eye out for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: What it does is replace any faulty instances for you automatically as you're going.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it runs GPU health checks on all of your instances.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It also ensures the Nvidia Collective Communication Library, or Nccl, is working properly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Before you get started with your training, and also any SageMaker internal service errors that get thrown during your training will result in an automatic restart of your training job using this, uh, this system that will automatically replace any bad instances that crop up, restart the healthy ones, and then restart the entire job.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Obviously that can get expensive, so hopefully that won't happen, but it is automatically keeping an eye out for failed hardware.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And as you're training larger and larger models using more and more instances in the process, the likelihood of an instance going bad on you during the process does increase.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's a good thing that it handles that for you automatically instead of making you deal with it the hard way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/163_SageMaker Distributed Training Libraries and Distributed Data Parallelism.txt

Line 1:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Now, since we're talking about training truly massive models, often you can't do that on one machine, right?
- Hidden/Implicit Meaning: Constraint or limitation signal; Model lifecycle signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: One instance is not going to cut it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So we need some way to distribute that training across multiple instances.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now of course you can always run multiple separate jobs in parallel.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We call that job parallelism.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So if you're training more than one model then you can train those multiple models in parallel.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Of course you can.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I mean that's kind of intuitive.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: However, individual training for an individual model can also be parallelized.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And there's two different branches to how to think about that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: One is distributed data parallelism.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's how we actually distribute the data used to train your model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And then there's distributed model parallelism where maybe the model itself can't even fit on one instance because you have so many parameters, so many weights and biases in there, even that won't fit on one system.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And you need to distribute the model itself, not just the data and the training that's happening for that model.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now, before you go to that extreme, make sure that you're maxing out the instance types that you have at your disposal before you go to multiple parallel instances.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: I mean, you do need to be training a pretty large model to need truly parallel training for an individual model, right?
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you could go all the way up to an ML p42 for xlarge.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: X-large.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That will give you eight GPUs, and you should max that out before you move to anything more to multiple instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So make sure you're maxing out what the individual instances will give you first, because there's always an overhead to parallelism, right?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's always going to be more efficient to use multiple GPUs in one instance than to use a bunch of GPUs spread across multiple instances.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So it's always going to be more efficient, more cost efficient, more time efficient to use a larger instance type than using multiple smaller instance types if you're distributing your training.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Model lifecycle signal.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Remember that, by the way, this does get expensive.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's not going to be any hands on activities in this section of the course because, well, I don't have millions of dollars.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: However, maybe your company does.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So there's a few ways of doing this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So let's start talking about the distributed training libraries in SageMaker itself.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 29:
- Concepts: AI Operational Context
- Services: Amazon EC2
- Key Insights: These are built on top of the AWS Custom Collective library for EC2.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you can think of this as solving a similar problem as MapReduce in spark.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So whereas MapReduce in spark distributes data processing, the distributed training libraries in SageMaker are going to be distributing the computation of the gradients when we're doing gradient descent to train your model.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 32:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: So but the same general idea of map and reduce holes.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So there's two components to this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: One is called the all reduce collective.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And what that does is distribute the computation of these gradient updates to and from GPUs across your fleet of instances.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: This is part of the SageMaker Distributed Data Parallelism library, or DDP library.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And to use it, you just specify the back end of Smdp to torch distributed init process groups inside your training scripts.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: After that, you just specify distribution of SM distributed data parallel and enable it within your PyTorch estimator, and it will automatically use that all reduce collective.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's also the Allgather collective.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Its job is to manage the communication between the nodes in your cluster to improve performance, and that works by offloading communications overhead to the CPU, thereby freeing up some of the capabilities of the GPUs instead.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you'll see more than once some of the optimization techniques we see are offloading stuff from the GPU to the CPU, so we can take advantage of the main memory and the CPU's computational abilities to free up some more capacity on the GPUs themselves.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: This, however, like I said, is not compatible with the SageMaker training compiler.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 43:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: But again, the SageMaker training compiler seems to be no longer maintained.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I guess you shouldn't have to worry about that too much.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 45:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: It's kind of a shame, because SageMaker Training Compiler is pretty cool.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That can pretty much double the speed of your code by itself.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: However, I guess AWS wants you to buy more hardware and well, I won't go there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Other distributed training libraries.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 49:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: You don't have to use the SageMaker one, so if you don't want to be locked into AWS, you can use other training libraries as well for distributed training, for example, the PyTorch Distributed Data Parallel library, or DDP.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: To use that, you would just set your distribution to PyTorch, DDP and enable that instead.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can also use torch run.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The distribution for that would be torch underscore distributed and just enable that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: However, that does require a P3, P4 or Trn1 instance types.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: At this recording.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can also use Mpirun.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: You can use Deepspeed, which is an open source distributed training framework from Microsoft.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It is PyTorch specific, however, but I think you'll see a lot of these solutions are indeed PyTorch specific.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That seems to be the way to go these days.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 59:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: There's also the Horovod distributed training framework.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Um, you should at least know that name.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It might pop up.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/06_Model Training, Tuning, and Evaluation/164_SageMaker Model Parallelism Library.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So going into a little bit more depth on Sagemaker's parallel training capabilities, there's basically the model parallelism side and the data parallelism side, right.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 3:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So let's start with the SageMaker model parallelism library.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now again a large language model may not fit on a single machine.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Maybe you have so many parameters, so many weights and biases that you need to distribute the model itself to overcome the GPU memory limits that you're faced with.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Model Development Lifecycle
- Services: AWS Batch
- Key Insights: Or maybe you just want to distribute things so you can have some extra GPU memory to increase your batch size during training.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That might be a valid thing to do as well, but either way, you might not have enough memory in your GPU to fit your whole model onto one GPU, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's where there's a few approaches to that problem.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: SageMaker is interleaved.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: Pipelines can be one solution.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They offer some benefit that's available for both TensorFlow and PyTorch.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: But SageMaker Model Parallelism library, or MPP goes even further.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It is PyTorch only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There are some bits of TensorFlow support, but they've been deprecated and it uses several tricks to do this Some here are three that are worth talking about.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: One is called optimization state sharding, and the optimization state is really just the state of the weights in the model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Fancy word for that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It does require using a stateful optimizer though, such as atom or Fp16, and it does exactly what it says.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: It shards those weights across multiple GPUs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Generally, that's only going to be useful if you have more than 1 billion parameters in your model.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we're talking really large models here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Like, you know, you're building GPT ten or whatever it is, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Another trick it has is activation checkpointing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And this is a technique for reducing the memory usage by clearing out the activations of certain layers while you're training, and then recomputing them as needed during the backward training pass there.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that will save memory, but at the expense of computation, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So it's not storing as much information to keep those activations around, but it does need to recompute them during training.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you're trading off computation with memory there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And sometimes that makes sense.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It also does what we call activation offloading.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I mentioned this previously.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And one trick is to just swap things from the CPU and the GPU back and forth.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: AWS Batch
- Key Insights: And what that does is swap out those checkpointed activations in micro-batches to and from the CPU, from the GPU to use it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Pretty simple.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Um, again, the official training uses actually an outdated version of this library.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The current version v2, is even easier to use.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: You just import torch SageMaker as TSM initialize it, and then all you have to do to use MPP is to specify it within your distribution.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the only relevant bit here is under distribution.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We're specifying a SM distributed model parallel enabled true and a bunch of parameters on how to set that up.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I'm not going to get into those because probably not going to be in the exam.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But that's all you got to do.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's easy peasy.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's also sharded data parallelism.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And the idea here is to combine parallel data and models and by parallel models.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Again we're talking about the optimizer states being sharded into sharding groups.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's just the weights in the model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: Sharded data parallelism however, also shards the trainable parameters and the associated gradients across those optimizer sharding group GPUs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: And that is implemented in the SageMaker model parallelism library as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that is there by default in the deep learning containers for PyTorch.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So there's nothing special you have to do to import it or use it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Um, just go ahead and set it up in your script like I showed you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you can use those capabilities for sharded data parallelism and also for model parallelism using MPP.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/07_Generative AI Model Fundamentals/174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt

Line 1:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So just to see some of this stuff in action, let's go on over to the AWS Management Console and spin up a SageMaker notebook, shall we?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So let's head on over to Amazon SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And a couple of ways to do this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's a new thing called Studio Lab.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's brand new as of this recording.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But right now they don't really have a whole lot of hardware associated with it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: It's basically Amazon's answer to Google Colab, where it's a free environment for experimentation.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But the last time I tried it, first you had to, like, go through this whole, uh, application process to get access.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And when I did get access, there wasn't any actual hardware available.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's do this the the old fashioned way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Uh, we're going to go to notebook and notebook instances.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is not free by the way, but it will not cost too much because we're going to stick with a very inexpensive instance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's create a notebook instance and we'll give it a name.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: How about Transformers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And let's stick with the T3 medium.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's a pretty cheap instance type, but do remember to shut this down when you're not using it though.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It will sit there and rack up charges for as long as it's running, which you probably don't want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right, the defaults here should more or less be okay.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We're going to go ahead with the default permissions and encryption.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All this other stuff is optional.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's just go ahead and kick it off.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We are spinning this up with Amazon Linux two and JupyterLab three.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That should do the job.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And now we just need to wait for that to become available.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we'll come back when that's done.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We're back after about five minutes.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That is now in service.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and click on my Transformers notebook instance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we can see that it's ready to go.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's go ahead and open Jupyter.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we'll just wait to get redirected here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we have a nice shiny new notebook here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and import one from your course materials that will walk through some of the Transformers concepts that we've been talking about here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I'm just going to hit the upload button here and navigate to where I downloaded the course materials.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: And from there let's select the Transformers ML course SageMaker Ipynb file and hit upload.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And now we can click on it and start playing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Now since this is running on just a little CPU instance here, we're not going to be able to do any massive training, but we can use Transformers and break down some of the parts of it.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So first of all, let's start off by installing what we need.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We're going to be installing the Transformers package from Hugging Face.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's briefly talk about what hugging face is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's Huggingface Co by the way not calm.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Don't get that confused.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's basically a giant repository of pre-trained models you can use.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they have a lot of transformer models as well, including things like GPT two and Gpt-j.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Also, llama is available for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 48:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Stable diffusion.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They're all just sitting there waiting for you to play with.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So, you know, you can actually work with these massive, large language models your own on your own and train them and fine tune them and use them however you want to, which is pretty darn cool.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it's also free, which is even cooler, you know, if you want to be able to save your models and offer them to other people, then you will need an account.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if you're just using it to mess around, it's totally free.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So yay!
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 54:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it's also free to import their Transformers package for Jupyter notebooks and allow us to play around with it there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 55:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's also not just a repository.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 56:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's also a lot of good learning resources here as well, by the way.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 57:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So when you go into the documentation for a given model, let's click on llama to be here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 58:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It tells you all sorts of stuff about it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 59:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they also have a lot of learning resources.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 60:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you go to docs.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 61:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can learn all about Transformers here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 62:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And they even have a lot of tutorials and some of them are even video tutorials.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 63:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you do want to dive deeper.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 64:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Hugging face is a great resource.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 65:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Back to our notebook though.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 66:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's go ahead and shift enter to install the Transformers package itself.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 67:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Note that I'm actually installing this from source from GitHub.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 68:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's because if you want to actually do fine tuning, you do need that source version installed.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 69:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Otherwise you can just say pip install transformers for the stuff that we're going to be doing in this particular exercise.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 70:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But let's go ahead and do this.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 71:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Uh, from source here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 72:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It doesn't take too long.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 73:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it's automatically getting all the dependencies for that and installing it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 74:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Just wait for that to finish and we're done there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 75:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now we're also going to install a bunch of other packages here JupyterLab, Ipywidgets, viz, Xformers, evaluate, and matplotlib.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 76:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That's so we can actually visualize what's going on inside of this transformer.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 77:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's go ahead and take care of that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 78:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Again, it will take a little bit of time for this all to install.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 79:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 80:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That took a few minutes but it finally finished up.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 81:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And let's take a look at what it did here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 82:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We installed everything we asked for and it also installed PyTorch.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 83:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Just a little note there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 84:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We're actually using the PyTorch framework and not TensorFlow and Keras here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 85:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: PyTorch is become a little bit more trendy these days I think.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 86:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 87:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now we're ready to rock and roll.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 88:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We're going to import the Bert model and Bert tokenizer packages from the Transformers package from Hugging Face.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 89:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it's just that easy.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 90:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now Bert is a transformer that's built entirely on encoders, as opposed to GPT, which is built entirely on decoders.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 91:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So a little bit of a different way of going about things that the transformer architecture level.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 92:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But we're just going to be talking about tokenization and attention right now.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 93:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And that works the same way no matter what kind of transformer we're talking about.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 94:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's just load this up because I happen to have good visualization tools available for Bert.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 95:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's kick that off.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 96:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that's going to go off to hugging face and import the models for Bert and also the tokenizer for Bert, so we can play with that directly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 97:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Down it comes and we're done.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 98:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 99:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So now we can take a look at an example of tokenization of a real phrase here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 100:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So back from our slides we had the example of I read a good novel where novel might mean a couple of different things, right, depending on the context.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 101:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: So the first step is to tokenize that our transformer model can't deal with words.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 102:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It can only deal with numbers.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 103:
- Concepts: Managed AI Service Selection
- Services: Amazon Translate
- Key Insights: So we first need to translate that sentence into a series of numbers that are numerical model can do stuff with.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 104:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's see what that looks like.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 105:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you can see that it actually took I read a good novel and broke it up into these different tokens.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 106:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I read a good novel.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 107:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: Notice that there are more tokens than there are words here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 108:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: First of all, we're seeing 101 and 102 at the beginning and end here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 109:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Presumably that's those are special tokens that say, I'm starting to say something and I'm done saying something in between.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 110:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I read a good novel.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 111:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We still have one extra one.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 112:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: Remember that a word can consist of more than one token, so that's not too atypical to have more tokens than words.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 113:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: You know, we tend to use the phrases tokens and words interchangeably sometimes, but they really aren't interchangeable.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 114:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: A word can consist of more than one token, and we can also see the attention mask here that's built up for it as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 115:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: When we talked about attention and self-attention, there was this concept of using a mask to make sure that we're not looking ahead of ourselves, right, that we're only basing the attention on what we've seen so far up to that point.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 116:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And attention masks is one way of doing that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 117:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we can convert that back and see what those tokens really are by saying convert IDs to tokens.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 118:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: So I'm going to take back that list of tokens and convert them back to words.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 119:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you can see here that beginning CLS token special token and a Sep token at the end, like we said, there are special tokens to sort of indicate different events in the stream of texts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 120:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I'm starting to say something.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 121:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I'm done saying something.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 122:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Maybe you should go and generate some text now.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 123:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 124:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it turns out that the period is where that extra token came from.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 125:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I read a good novel each to correspond to individual token IDs, but that period at the end is also its own token as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 126:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in this case, it's pretty straightforward.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 127:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I'll talk a little bit about positional encoding as well here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 128:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So just a way to visualize what's going on here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 129:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So remember that when we're feeding stuff into a transformer we're not doing it one word at a time like we would have done with a recurrent neural network.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 130:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's actually processing everything in parallel.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 131:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: So how does the thing know where these words are in relation to each other within a sentence?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 132:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Well, that's where positional encoding comes into play.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 133:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 134:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So we can see here that we're going to build up our own encode positions function here and do it from scratch just to visualize what that might look like.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 135:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we're actually overlaying a sine wave function and a cosine wave function within this matrix.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 136:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And interleaving the two.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 137:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is how it's actually recommended to be implemented within the papers.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 138:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So what does that look like?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 139:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So the idea here is that because we're basing it on a sinusoidal wave and a cosine wave, these things just go on forever, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 140:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: There's no end to a sine wave.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 141:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It just stretches on and on and on.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 142:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: And by looking at where we are within that sine wave, within one period of it, we can get an idea of where this word sits relative to the other words, at least within that period.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 143:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's scalable.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 144:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's not, you know, entirely precise because it won't tell you where something is in a much longer sentence necessarily, but it works.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 145:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So let's build up that positional matrix here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 146:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And again, all we're doing is saying that for a given position within a sentence, we're going to encode that as a sine wave and a cosine wave being interleaved together in this positional matrix.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 147:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now we can visualize that just using matplotlib.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 148:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we can see that it looks like this image here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 149:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you can kind of see those sine and cosine waves working their way through there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 150:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you sort of envision this going down further and coming back up later on, it would eventually repeat.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 151:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But you can see for this particular sequence going up to, you know, say around 100 tokens or so, it does encode some information about where those tokens lie relative to other tokens, and it just works out better for the math for this to be interleaved with a cosine wave as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 152:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 153:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's positional encoding in a nutshell kind of a way to visualize it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 154:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Now if you do want to take a little break from the course here, I would remind you to go back to SageMaker and stop this notebook instance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 155:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you're not going to be using it for a while.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 156:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If you are going to plow through this section and keep on going, then by all means keep it up and running.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 157:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if you are going to stop, be sure to stop this notebook instance.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 158:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Otherwise you will continue to be charged for it until you do stop it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 159:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Um, I don't want you to get a big surprise on your AWS bill at the end of the month, so do remember to stop this when you're not using it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/07_Generative AI Model Fundamentals/176_Lab_ Using GPT within a SageMaker Notebook.txt

Line 1:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All right, moving on with our Jupyter notebook here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Again, if you need to spin that up, you know, go ahead and start that back up if you need to.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And this is going to be a real quick.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We're going to just show how we can import a pre-trained model from hugging face.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And again, hugging face is just a big Ole repository of trained models that you can just use.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I just want to show you how easy it is to do.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: And this isn't specific to Amazon or SageMaker.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You can do this from basically any environment that you want.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: So we're going to say from Transformers remember that's the Transformers package from hugging Face I'm importing pipeline, which is again a way that hugging face has made it even easier to use these pre-trained models.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I don't need to build a bunch of stuff surrounding these transformers to use them.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: I can just say I'm going to build a pipeline that is for the purpose of generating text using the GPT two model under the hood, which you know, is actually publicly available.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: Amazon RDS
- Key Insights: And then all I have to do is feed it in some words, tell it the maximum length that I want to generate, how many variations I want to get back, and it will just go do it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in literally three lines of code here, I can load up a large language model and use it to generate new texts.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's go ahead and kick that off and see it in action.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Now it's going to have to download all of the weights and biases associated with that model here from hugging face.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Hopefully I have enough disk space on this notebook instance to do that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Looks like we're okay.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And sure enough we got some generated text back.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So some possible completions from I read a good novel.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: I don't need a story, but I don't have this much money to give away.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: You know, five different ways of continuing that sentence, basically, that are consistent with the underlying language model that we're working with.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's try it again.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Let's increase the maximum length to 300 tokens.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we'll give it a sentence like this movie seemed really long and I used that because, you know, if we wanted to, we could fine tune this model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: For example, using the IMDb Movie Reviews data set and get more interesting responses about movies.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: So in this case, we're using the existing pipeline that we defined before.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We don't have to go and redownload that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's just going off and actually generating that text at this point.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And it did have to chew on that a little bit longer because we asked for more output.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But you can see that it completed that sentence.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This movie seemed really long with some other stuff that it made up.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it just basically made up some details about a long movie.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 34:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Um, which is a good reminder that these large language models, all they do is make stuff up, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: They're good at sounding authoritative and sounding like a human, but by and large it's just making things up at the end of the day.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So I didn't give it any information about what movie I was talking about.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It went and made stuff up.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Some very specific stuff, by the way, so people tend to forget sometimes at least end users, that the purpose, the way that these things work is not based on finding truth, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's just based on generating language that is consistent with the language it was trained on, and it does a really good job of that.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: One more, because we always talk about Star Trek in my courses, so let's just see what it does with the word Star Trek.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 41:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I'll ask it for five variations of that with a max length of 100 tokens each time.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that came back pretty quickly.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So based on the data it was trained on, it's kind of just giving me stuff from Wikipedia, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So you can tell that a source of the training data for GPT two was Wikipedia.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 45:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It doesn't have a lot a lot of information about the specific series and movies there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 46:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's just giving me sort of general information about them.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 47:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Now, I could change that by again training it on IMDb Movie Reviews, which will tell it more about these shows.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 48:
- Concepts: Generative AI Architecture, Model Development Lifecycle
- Services: SageMaker
- Key Insights: But we'll talk about how to do that a little bit later when we go into actually using foundation models in SageMaker.
- Hidden/Implicit Meaning: Generative architecture signal.

Line 49:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So stay tuned.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 50:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Again, remember to stop this notebook when you're done with it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 51:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Otherwise you will continue to be charged forever.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 52:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And I don't want that to happen to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 53:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So stop it when you're done.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

### File: outputs/AWS AI/2. aws-machine-learning-engineer-associate/09_Machine Learning Operations (MLOps) with AWS/203_SageMaker Inference Pipelines.txt

Line 1:
- Concepts: Inference and Serving, MLOps and Operationalization
- Services: (none explicit)
- Key Insights: And let's talk about inference pipelines again.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 2:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: This is the sort of thing where you just have to understand what it is and what it does for the purpose of the exam.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 3:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So we've talked about deploying a Docker image to an inference node.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: So by default you're just going to take a prepackaged image from Docker that's in ECR.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: And use that to work with your trained model to do inferences at runtime.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 7:
- Concepts: Inference and Serving, MLOps and Operationalization
- Services: (none explicit)
- Key Insights: However, you can also use more than one container and string them together using inference pipelines.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 8:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So you can have any combination of pre-trained built in algorithms or your own algorithms that are hosted in Docker containers and hook them all together.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And you can have a linear sequence of between 2 and 15 of these containers that work together in concert.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: Inference and Serving, MLOps and Operationalization
- Services: (none explicit)
- Key Insights: So you can imagine combining your pre-processing, your predictions and post-processing of those predictions, all in different containers that are chained together in an inference pipeline.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 11:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: You can also use containers from spark ML or from scikit learn as part of that pipeline as well with spark ML.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: AI Operational Context
- Services: AWS Glue, Amazon EMR
- Key Insights: You can run that with glue or EMR, and those spark ML containers will be serialized into Emnlp format, which is just a little piece of trivia for you there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: Inference and Serving
- Services: AWS Batch
- Key Insights: And you can use that for both handling real time inference and for doing batch transforms.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 14:
- Concepts: Inference and Serving, MLOps and Operationalization
- Services: (none explicit)
- Key Insights: So your inference pipelines can be applied to either mode.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 15:
- Concepts: Inference and Serving
- Services: AWS Batch
- Key Insights: We've not talked a lot about batch transforms.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: We seem to be focusing on real time inference because that's the more complicated case.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 17:
- Concepts: Inference and Serving, MLOps and Operationalization
- Services: (none explicit)
- Key Insights: But inference pipelines can work with either usage mode.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 18:
- Concepts: Inference and Serving
- Services: AWS Batch
- Key Insights: If you're doing real time inference through a web service or batch transforms of large amounts of data that you want to make inferences from all at once.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 19:
- Concepts: Inference and Serving, MLOps and Operationalization
- Services: (none explicit)
- Key Insights: And that's inference pipelines in a nutshell.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 20:
- Concepts: Inference and Serving, MLOps and Operationalization
- Services: (none explicit)
- Key Insights: It's just a way of chaining together multiple inference containers into one pipeline of results.
- Hidden/Implicit Meaning: Model lifecycle signal.

### File: outputs/AWS AI/3. aws-generative-ai-developer-professional/06_Managing Models with SageMaker AI/129_Data Processing, Training, and Deployment with SageMaker.txt

Line 1:
- Concepts: Generative AI Architecture
- Services: Amazon Bedrock
- Key Insights: Now, bedrock is not the only way to manage and deploy your models.
- Hidden/Implicit Meaning: Constraint or limitation signal; Generative architecture signal.

Line 2:
- Concepts: Generative AI Architecture, Model Development Lifecycle
- Services: Amazon Bedrock, SageMaker
- Key Insights: Also, before bedrock, there was SageMaker, which has kind of been rebranded as SageMaker AI lately, and it is also a way to handle a broader machine learning workflow.
- Hidden/Implicit Meaning: Generative architecture signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's not just about generative AI.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: It's not just about AI, it's about machine learning in general.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Basically, you know, models that do stuff and predict things, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So it's kind of built around this cycle here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: The idea is, you know, it can help you with the entire thing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So it has features that let you fetch, clean and prepare your data for training a model.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 9:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: It can then let you do the actual training of the model itself and spin up any resources it needs for that training, and then evaluate the performance of that model after you've trained it.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Once you're happy with it, it can also help you with deploying that model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: And then after it's deployed, it can evaluate its results, monitor it for drift, you know, make sure that it's doing the right thing.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 12:
- Concepts: Inference and Serving, Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And maybe the deployment of that model results in more data that you can then turn around and feed back into the training again.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 13:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So everything in this entire machine learning life cycle, uh, has accompanying tools in SageMaker to help you do it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Now, as a reminder, this particular exam does not get into the training part of it that is out of scope, so we're not going to focus on that.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 15:
- Concepts: Model Development Lifecycle
- Services: AWS CloudFormation, SageMaker
- Key Insights: However, just to see how it all fits together, a SageMaker kind of has this model of how it's all stacked together.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So you do have to start with a model training.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And maybe in the case of generative AI, this is a pre-trained model you got off of hugging face.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Maybe you fine tuned it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Whatever.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Wherever you came from, you had to train it somehow.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: But if you are training it or fine tuning it from scratch, then this is one way to do it.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 23:
- Concepts: Model Development Lifecycle
- Services: Amazon S3, SageMaker
- Key Insights: In SageMaker you can put your training data in S3.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 24:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Uh, SageMaker can help you do that training and orchestrate it from a notebook or whatever you want.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 25:
- Concepts: AI Operational Context
- Services: Amazon ECR
- Key Insights: And then you can have basically a code image that gets deployed out through ECR.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 26:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: And then you can spin up these training instances to actually perform that training using your training code and the training data.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 27:
- Concepts: AI Operational Context
- Services: Amazon S3
- Key Insights: Once you have a model that's trained and ready to go, the artifacts from that model, which might be a set of weights or who knows, could be anything that gets pushed out to S3 as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: Same idea here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 29:
- Concepts: Inference and Serving, Model Development Lifecycle
- Services: (none explicit)
- Key Insights: Now, instead of a training code image, we have an inference code image.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 30:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So that's the code for actually querying your model and making predictions.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 31:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or in the case of generative AI, uh, saying something back to you, as the case may be.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 32:
- Concepts: Inference and Serving, Model Development Lifecycle
- Services: SageMaker
- Key Insights: And SageMaker gives you tools for deploying that and hosting it, and it would be hosted on an endpoint which SageMaker also manages for you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 33:
- Concepts: Inference and Serving
- Services: (none explicit)
- Key Insights: So that endpoint for inference is ultimately what your client application would be talking to.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 34:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: Now, SageMaker notebooks can direct this whole process.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 35:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So if you want to do it all from Python code, you can do that with a familiar Jupyter Lab environment.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 36:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And that works fine.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 37:
- Concepts: Model Development Lifecycle
- Services: Amazon EC2, Amazon S3, SageMaker
- Key Insights: You can spin up a notebook instance on EC2 from the SageMaker console, and that can give you access to data in S3.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 38:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: All the usual suspects for processing data that you might be using in Python, as well as a wide variety of built in models, so you can just start from as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 39:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: You can also spin up your training instances and deploy these models and, uh, put them out there in the real world, all from your code in your notebook if you want to do it that way.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 40:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or you can do it from the console as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 41:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: So SageMaker AI has consoles for pretty much everything you want to do.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 42:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So whether you want to do this stuff through code or visually, it's totally up to you.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 43:
- Concepts: Model Development Lifecycle
- Services: SageMaker
- Key Insights: But SageMaker AI does it all.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 44:
- Concepts: Generative AI Architecture, Managed AI Service Selection
- Services: Amazon Bedrock, Amazon Lex
- Key Insights: So it gives you much lower level access if you want it, and much more flexibility than you might see in bedrock.
- Hidden/Implicit Meaning: Generative architecture signal.

### File: outputs/AWS AI/3. aws-generative-ai-developer-professional/06_Managing Models with SageMaker AI/139_SageMaker Pipelines.txt

Line 1:
- Concepts: MLOps and Operationalization, Model Development Lifecycle
- Services: SageMaker
- Key Insights: Let's talk about SageMaker pipelines, which is a way of orchestrating your machine learning or AI workflows.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 2:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So whether you're training models from your data and checking how it's going and deploying them, well, it'll make more sense with this example.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 3:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But at a high level, it's what we call a directed acyclic graph or a Dag for machine learning workflows.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 4:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And a directed acyclic graph is just like this thing you see on the right here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 5:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: A bunch of processes that are connected together in complicated ways is what it really means.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 6:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: And you can define this visually in the pipeline designer like you're seeing in this screenshot here.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 7:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Or if you really want to do it the hard way, you can do it through JSON as well.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 8:
- Concepts: MLOps and Operationalization, Model Development Lifecycle
- Services: SageMaker
- Key Insights: This is integrated with SageMaker Unified Studio and SageMaker AI, but it makes more sense to just walk through this example to understand what a pipeline is.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 9:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So in this particular example here, let's start at the top where it says process data.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 10:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: That purple node at the very top.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 11:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So we've got some training data that came in.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 12:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we want to train our model with it.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 13:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: So if I follow that branch to the left there we can see that I'm doing a train model block there in my pipeline.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 14:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: Once that node finishes, let's follow that to the right.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 15:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And we can see that that goes to a process data where we're evaluating the output of that model.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 16:
- Concepts: AI Governance and Safety
- Services: (none explicit)
- Key Insights: And then under that we have that orange condition block where we're deciding whether or not that evaluation passes our expectations or not.
- Hidden/Implicit Meaning: Governance and safety signal.

Line 17:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: If it's not good enough, then we go to the right and we fail.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 18:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We're done.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 19:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: We give up, right?
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 20:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: But if it is good enough, then we pass that check over to the left there.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 21:
- Concepts: MLOps and Operationalization
- Services: (none explicit)
- Key Insights: We're going to register that model in the model registry.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 22:
- Concepts: AI Operational Context
- Services: AWS SAM
- Key Insights: And then we're going to create the model at the same time.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 23:
- Concepts: Inference and Serving
- Services: AWS Batch
- Key Insights: And then after the model is created, we're going to go ahead and deploy that model with batch inference enabled.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 24:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: So this is an example of a machine learning workflow.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 25:
- Concepts: MLOps and Operationalization, Model Development Lifecycle
- Services: SageMaker
- Key Insights: From training a model to evaluating the model to registering the model and creating and deploying the model all in one SageMaker pipeline.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 26:
- Concepts: Model Development Lifecycle
- Services: (none explicit)
- Key Insights: So this allows you to automate this entire process from beginning to end and kick it off with whatever training data you have.
- Hidden/Implicit Meaning: Model lifecycle signal.

Line 27:
- Concepts: AI Operational Context
- Services: (none explicit)
- Key Insights: And once you do so, you'll either end up with a new model deployed or a failure if it didn't pass.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

Line 28:
- Concepts: MLOps and Operationalization, Model Development Lifecycle
- Services: SageMaker
- Key Insights: So that's SageMaker pipelines with a real example.
- Hidden/Implicit Meaning: Implicitly contributes ai behavior detail.

## Step 2 - Consolidation

### 1. Concepts List
- AI Governance and Safety
- AI Operational Context
- Generative AI Architecture
- Inference and Serving
- MLOps and Operationalization
- Managed AI Service Selection
- Model Development Lifecycle

### 2. Services List
- API Gateway
- AWS Batch
- AWS CloudFormation
- AWS Config
- AWS Glue
- AWS Lambda
- AWS SAM
- Amazon Athena
- Amazon Bedrock
- Amazon CloudWatch
- Amazon EBS
- Amazon EC2
- Amazon ECR
- Amazon EMR
- Amazon EventBridge
- Amazon FSx
- Amazon Kinesis
- Amazon Lex
- Amazon MSK
- Amazon RDS
- Amazon Redshift
- Amazon S3
- Amazon Translate
- SageMaker

### 3. Features List
- bedrock
- drift
- inference
- lex
- model registry
- sagemaker
- translate

### 4. Use Cases
- 068_Data Processing, Training, and Deployment with SageMaker AI.txt:17: When you are training, all you need to do is create a training job under SageMaker as an input that will take the URL of that S3 bucket that we just produced that contains the processed training data.
- 076_SageMaker Feature Store.txt:14: You want to be able to share them when you're trying to do different things with machine learning, where those features come from is totally up to you.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:16: And this problem blows up very quickly when you have many different parameters that you want to optimize at once.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:38: Now, there are some best practices you should follow when doing automatic model tuning in SageMaker, and this is important.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:40: First of all, don't try to optimize too many hyperparameters at once.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:49: Another key one is using logarithmic scales when appropriate.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:50: So whenever you do an automatic model tuning job, you tell it not only the range, but also the scale in which you want to explore this range.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:51: Linear will just go through in a linear, linear manner, but if you have a hyper parameter where the values tend to range from something like 0.001 to 0.1, for example, you probably want to try a logarithmic scale for that instead.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:64: By reporting the objective that you're trying to optimize on in hyperparameter tuning at the end when all those instances come back together.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:68: Don't run too many training jobs concurrently because the learning relies on sort of that sequential learning over time and also, whenever appropriate, use logarithmic scales for exploring your parameter space
- 156_SageMaker Autopilot _ AutoML.txt:61: So there's a few choices you can select when you're setting up autopilot.
- 156_SageMaker Autopilot _ AutoML.txt:98: So, you know, for example, if you're creating a model that approves loans for houses and you see that race is some sort of a really strong feature, something's wrong there, you better go back and take a look at the bias that might exist in your source data.
- 157_SageMaker Studio, SageMaker Experiments.txt:2: So they're really trying to give the developer experience when using SageMaker a facelift and, you know, take it from the current implementation using the AWS console into something that feels more like an actual development environment that you'd be, you know, actually have fun working with.
- 157_SageMaker Studio, SageMaker Experiments.txt:14: So when you're using SageMaker, you tend to accumulate a very long list of notebooks that you've been playing with and jobs that you've been creating.
- 158_SageMaker Debugger.txt:8: So if you want to watch out for something going out of bounds, you can set up a rule for that and have that automatically fire off some sort of an alert when it's hit.
- 158_SageMaker Debugger.txt:10: And when that rule is hit, it will automatically log a CloudWatch event and you can respond to that.
- 158_SageMaker Debugger.txt:40: There is also hardware system metrics rules you can set up for profiling, and this will monitor CPU usage, GPU usage, and other things that might be relevant to system usage within your cluster as training is happening over time, and it will also allow you to monitor and profile framework metrics, for example, max initialization time, overall framework metrics, and step outlier.
- 161_SageMaker Training at Large Scale_ Training Compiler, Warm Pools.txt:33: So with a warm pool, you can say, when I'm done with my training pass, I want to hang on to that hardware for a little bit, just in case I want to use it again.
- 163_SageMaker Distributed Training Libraries and Distributed Data Parallelism.txt:31: So whereas MapReduce in spark distributes data processing, the distributed training libraries in SageMaker are going to be distributing the computation of the gradients when we're doing gradient descent to train your model.
- 163_SageMaker Distributed Training Libraries and Distributed Data Parallelism.txt:49: You don't have to use the SageMaker one, so if you don't want to be locked into AWS, you can use other training libraries as well for distributed training, for example, the PyTorch Distributed Data Parallel library, or DDP.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:9: And when I did get access, there wasn't any actual hardware available.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:17: That's a pretty cheap instance type, but do remember to shut this down when you're not using it though.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:26: So we'll come back when that's done.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:57: So when you go into the documentation for a given model, let's click on llama to be here.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:115: When we talked about attention and self-attention, there was this concept of using a mask to make sure that we're not looking ahead of ourselves, right, that we're only basing the attention on what we've seen so far up to that point.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:129: So remember that when we're feeding stuff into a transformer we're not doing it one word at a time like we would have done with a recurrent neural network.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:159: Um, I don't want you to get a big surprise on your AWS bill at the end of the month, so do remember to stop this when you're not using it.
- 176_Lab_ Using GPT within a SageMaker Notebook.txt:25: For example, using the IMDb Movie Reviews data set and get more interesting responses about movies.
- 176_Lab_ Using GPT within a SageMaker Notebook.txt:48: But we'll talk about how to do that a little bit later when we go into actually using foundation models in SageMaker.
- 176_Lab_ Using GPT within a SageMaker Notebook.txt:50: Again, remember to stop this notebook when you're done with it.
- 176_Lab_ Using GPT within a SageMaker Notebook.txt:53: So stop it when you're done.

### 5. Constraints / Limitations
- 068_Data Processing, Training, and Deployment with SageMaker AI.txt:45: Or if maybe you can't tolerate the latency involved in going to the cloud.
- 076_SageMaker Feature Store.txt:44: That shouldn't.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:37: And by doing that, it can save a lot in terms of the resources required to do your hyperparameter tuning.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:38: Now, there are some best practices you should follow when doing automatic model tuning in SageMaker, and this is important.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:46: Also, make sure you limit your ranges to a smaller range as possible.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:50: So whenever you do an automatic model tuning job, you tell it not only the range, but also the scale in which you want to explore this range.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:56: Sagemaker's parameter tuning learns as it goes, and it can't do that learning.
- 154_Automatic Model Tuning (AMT) in SageMaker.txt:60: That can limit how well the process can learn, which is really the key to Sagemaker's efficiency in doing hyperparameter tuning.
- 156_SageMaker Autopilot _ AutoML.txt:58: Your input data must either be tabular, CSV, or more recently parquet has been added as well as an input type.
- 156_SageMaker Autopilot _ AutoML.txt:83: If it can't figure out if you're greater than 100MB or not, then it can't make a choice and will default to HPO in that case.
- 156_SageMaker Autopilot _ AutoML.txt:85: In that case, SageMaker autopilot can't figure out how big your data set is, and it will just default to HPO.
- 156_SageMaker Autopilot _ AutoML.txt:86: Also, if your S3 data type is set to manifest file, or if your S3 URI contains more than 1000 items, automatic mode will just punt and go to HPO because it can't figure it out on its own.
- 156_SageMaker Autopilot _ AutoML.txt:87: So those are the limitations of it.
- 159_SageMaker Model Registry.txt:17: Here are its limitations.
- 161_SageMaker Training at Large Scale_ Training Compiler, Warm Pools.txt:10: You can't bring your own container and use the training compiler, but again, it's being phased out, so I wouldn't worry about it too much, but you should at least know what it is to use it.
- 161_SageMaker Training at Large Scale_ Training Compiler, Warm Pools.txt:26: Uh, they must have been victims of some of their layoffs or something.
- 161_SageMaker Training at Large Scale_ Training Compiler, Warm Pools.txt:27: But if you are using it, best practices are to ensure that you're using GPU instances such as the ML, P3, P4, G4, or G5 instance types.
- 161_SageMaker Training at Large Scale_ Training Compiler, Warm Pools.txt:38: It does, however require a service limit increase request.
- 161_SageMaker Training at Large Scale_ Training Compiler, Warm Pools.txt:39: So you can't just do it.
- 161_SageMaker Training at Large Scale_ Training Compiler, Warm Pools.txt:42: So not only is it keeping your hardware around, it's also keeping your data around across those training jobs.
- 161_SageMaker Training at Large Scale_ Training Compiler, Warm Pools.txt:44: So warm pools definitely a good thing to be using if you're going to be repeatedly training, but you do need to request permission for it with a service limit increase if you're training within the SageMaker UI, if you just go to SageMaker in the console and go to training jobs and say, create training job.
- 163_SageMaker Distributed Training Libraries and Distributed Data Parallelism.txt:1: Now, since we're talking about training truly massive models, often you can't do that on one machine, right?
- 163_SageMaker Distributed Training Libraries and Distributed Data Parallelism.txt:14: And then there's distributed model parallelism where maybe the model itself can't even fit on one instance because you have so many parameters, so many weights and biases in there, even that won't fit on one system.
- 163_SageMaker Distributed Training Libraries and Distributed Data Parallelism.txt:20: That will give you eight GPUs, and you should max that out before you move to anything more to multiple instances.
- 163_SageMaker Distributed Training Libraries and Distributed Data Parallelism.txt:44: So I guess you shouldn't have to worry about that too much.
- 163_SageMaker Distributed Training Libraries and Distributed Data Parallelism.txt:60: Um, you should at least know that name.
- 164_SageMaker Model Parallelism Library.txt:5: Maybe you have so many parameters, so many weights and biases that you need to distribute the model itself to overcome the GPU memory limits that you're faced with.
- 164_SageMaker Model Parallelism Library.txt:13: It is PyTorch only.
- 164_SageMaker Model Parallelism Library.txt:19: Generally, that's only going to be useful if you have more than 1 billion parameters in your model.
- 164_SageMaker Model Parallelism Library.txt:36: So the only relevant bit here is under distribution.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:19: All right, the defaults here should more or less be okay.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:24: That should do the job.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:101: So the first step is to tokenize that our transformer model can't deal with words.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:102: It can only deal with numbers.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:115: When we talked about attention and self-attention, there was this concept of using a mask to make sure that we're not looking ahead of ourselves, right, that we're only basing the attention on what we've seen so far up to that point.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:122: Maybe you should go and generate some text now.
- 129_Data Processing, Training, and Deployment with SageMaker.txt:1: Now, bedrock is not the only way to manage and deploy your models.

### 6. Patterns / Architectures
- 068_Data Processing, Training, and Deployment with SageMaker AI.txt:34: Whatever you can dream up, you can still use SageMaker to make that part of your larger pipeline, and there are algorithms available for purchase from the AWS marketplace as well.
- 068_Data Processing, Training, and Deployment with SageMaker AI.txt:42: Inference pipelines can be used for orchestrating more complex processing.
- 076_SageMaker Feature Store.txt:16: Maybe it's coming from SageMaker studio, maybe it's coming from a pipeline where it like step functions or SageMaker pipelines or Apache Airflow, where it's just dumping stuff in there along the way.
- 076_SageMaker Feature Store.txt:17: Your features might be coming from some sort of EMR pipeline or from glue or from SageMaker processing.
- 156_SageMaker Autopilot _ AutoML.txt:20: The workflow looks like this.
- 159_SageMaker Model Registry.txt:10: So maybe your pipeline for machine learning depends on model registry to check.
- 159_SageMaker Model Registry.txt:21: Again it's just associating metadata with your models and sort of a very simple database that can be part of your machine learning pipeline.
- 159_SageMaker Model Registry.txt:22: To make it a little bit more real, let's take a look at this example from the AWS blog, where they have an example of a larger machine learning pipeline that involves model monitor.
- 159_SageMaker Model Registry.txt:24: So you have this little training pipeline there where we're pre-processing and training our model.
- 159_SageMaker Model Registry.txt:31: At the same time, it might update a parameter store that kicks things off to actually kick off the inference pipelines to deploy this model in production.
- 159_SageMaker Model Registry.txt:32: So that can actually say, hey, let's go get those inference details and deploy it through SageMaker inference pipelines and notify somebody that it's ready to go for both the dev test and production stages as well.
- 164_SageMaker Model Parallelism Library.txt:10: Pipelines can be one solution.
- 174_Lab_ Tokenization and Positional Encoding with SageMaker Notebooks.txt:91: So a little bit of a different way of going about things that the transformer architecture level.
- 176_Lab_ Using GPT within a SageMaker Notebook.txt:9: So we're going to say from Transformers remember that's the Transformers package from hugging Face I'm importing pipeline, which is again a way that hugging face has made it even easier to use these pre-trained models.
- 176_Lab_ Using GPT within a SageMaker Notebook.txt:11: I can just say I'm going to build a pipeline that is for the purpose of generating text using the GPT two model under the hood, which you know, is actually publicly available.
- 176_Lab_ Using GPT within a SageMaker Notebook.txt:26: So in this case, we're using the existing pipeline that we defined before.
- 203_SageMaker Inference Pipelines.txt:1: And let's talk about inference pipelines again.
- 203_SageMaker Inference Pipelines.txt:7: However, you can also use more than one container and string them together using inference pipelines.
- 203_SageMaker Inference Pipelines.txt:10: So you can imagine combining your pre-processing, your predictions and post-processing of those predictions, all in different containers that are chained together in an inference pipeline.
- 203_SageMaker Inference Pipelines.txt:11: You can also use containers from spark ML or from scikit learn as part of that pipeline as well with spark ML.
- 203_SageMaker Inference Pipelines.txt:14: So your inference pipelines can be applied to either mode.
- 203_SageMaker Inference Pipelines.txt:17: But inference pipelines can work with either usage mode.
- 203_SageMaker Inference Pipelines.txt:19: And that's inference pipelines in a nutshell.
- 203_SageMaker Inference Pipelines.txt:20: It's just a way of chaining together multiple inference containers into one pipeline of results.
- 129_Data Processing, Training, and Deployment with SageMaker.txt:2: Also, before bedrock, there was SageMaker, which has kind of been rebranded as SageMaker AI lately, and it is also a way to handle a broader machine learning workflow.
- 139_SageMaker Pipelines.txt:1: Let's talk about SageMaker pipelines, which is a way of orchestrating your machine learning or AI workflows.
- 139_SageMaker Pipelines.txt:3: But at a high level, it's what we call a directed acyclic graph or a Dag for machine learning workflows.
- 139_SageMaker Pipelines.txt:6: And you can define this visually in the pipeline designer like you're seeing in this screenshot here.
- 139_SageMaker Pipelines.txt:8: This is integrated with SageMaker Unified Studio and SageMaker AI, but it makes more sense to just walk through this example to understand what a pipeline is.
- 139_SageMaker Pipelines.txt:13: So if I follow that branch to the left there we can see that I'm doing a train model block there in my pipeline.
- 139_SageMaker Pipelines.txt:24: So this is an example of a machine learning workflow.
- 139_SageMaker Pipelines.txt:25: From training a model to evaluating the model to registering the model and creating and deploying the model all in one SageMaker pipeline.
- 139_SageMaker Pipelines.txt:28: So that's SageMaker pipelines with a real example.

## Step 3 - Deep Expansion (AI Concepts)

### Core Services in This Topic
- API Gateway: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Batch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS CloudFormation: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Config: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Glue: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS Lambda: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- AWS SAM: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Athena: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon Bedrock: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.
- Amazon CloudWatch: understand what it is, why it exists, its control plane, and the design trade-offs it introduces.

### Architect-Level Concept Expansion
- AI Governance and Safety: treat this as a design lever that changes topology, risk posture, or operational workflow.
- AI Operational Context: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Generative AI Architecture: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Inference and Serving: treat this as a design lever that changes topology, risk posture, or operational workflow.
- MLOps and Operationalization: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Managed AI Service Selection: treat this as a design lever that changes topology, risk posture, or operational workflow.
- Model Development Lifecycle: treat this as a design lever that changes topology, risk posture, or operational workflow.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Managed AI building blocks | Rekognition / Textract / Comprehend / Polly / Translate / Lex | Azure AI services | Vertex AI APIs / Document AI / Vision / Speech / Translation |
| Managed ML platform | SageMaker | Azure Machine Learning | Vertex AI |
| Generative AI platform | Bedrock | Azure OpenAI + AI Studio | Vertex AI Generative AI |
| Feature, training, and inference lifecycle | SageMaker pipelines and endpoints | Azure ML pipelines and endpoints | Vertex pipelines and endpoints |
| AI governance and safety | Bedrock guardrails / IAM / service controls | Azure AI content safety / policy / Entra | Vertex AI safety settings / IAM / policy |
| Enterprise AI search and retrieval | Kendra / Bedrock retrieval patterns | Azure AI Search | Vertex AI Search / Discovery Engine |

### Trade-offs and Decision Notes
- AI Knowledge Base is strongest when design decisions are expressed as control objectives rather than vendor-only terminology.
- Cross-cloud portability improves when service choice, failure behavior, and governance model are documented together.
- Cloud-native implementations should still preserve comparable intent across AWS, Azure, and GCP.

## Phase-wise Architect-Level Organization

### Phase 1 - Foundations
- AI architecture begins with the problem shape: prebuilt intelligence, supervised ML, or generative retrieval-based systems.
- Model quality, governance, and serving paths must be designed together.

### Phase 2 - Core Services
- Implement data preparation, training, inference, and application integration as one lifecycle rather than isolated service calls.
- Use managed AI services when the operational burden of bespoke ML is not justified.

### Phase 3 - Advanced Patterns
- Treat generative AI retrieval, model choice, and guardrails as first-class architecture trade-offs.
- MLOps maturity depends on repeatable promotion, evaluation, and runtime monitoring loops.

### Phase 4 - System Design
- Reference architecture: data and feature plane, model lifecycle plane, inference plane, and governance controls.
- Scaling considerations: training cost, endpoint concurrency, model drift, and retrieval latency.
- Cost considerations: persistent endpoints, large-context inference, duplicated experimentation, and unmanaged feature stores.
