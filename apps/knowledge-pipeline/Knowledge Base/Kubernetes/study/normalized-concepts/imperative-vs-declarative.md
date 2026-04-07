# Normalized Concept: Imperative Vs Declarative

- Concept Key: imperative-vs-declarative
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 639

## 1. Definition
- Let us now look at horizontal pod autoscaler in Kubernetes.
- Let's start by looking at how I would manually scale a workload horizontally.
- So I'm a Kubernetes administrator, and I'm sitting on my machine looking at a cluster.
- And I'm tasked to make sure that there is always sufficient workload to support demand for this application.
- This means that 500 Millicores is the max the CPU it gets, after which it doesn't get any more.
- Um, and the capacity that a single pod can handle is 500 millicores of CPU.
- So I would run the kubectl top pod command and monitor the resource consumption of the pod.
- If I had to do it manually.
- Now remember that you must have the metrics server running on the cluster to be able to monitor the resource usage like this.
- Now, when it reaches the threshold of 450 millicores or whatever it is that I have defined as the threshold or close to that.

## 2. First-Principles Mental Model
- From a deployment configuration perspective, I see this pod requests 250 milli CPU and has a limit of 500 millicores of CPU.
- I would run the kubectl scale command to scale the deployment to add additional pods.
- It then automatically increases or decreases the number of pods in a deployment Statefulset or replica set based on the CPU, memory, or custom metrics.
- And if the CPU, memory, or memory usage goes too high, HPA creates more paths to handle that, and if it drops, it removes the extra pods to save resources and thus balances the thresholds.
- For the given nginx deployment, we can configure a horizontal pod autoscaler by running the kubectl autoscale command, targeting the deployment myapp, and specifying a CPU threshold of 50% with a minimum of one and maximum of ten pods.
- So when this command is run, Kubernetes creates a horizontal pod autoscaler for this deployment that first reads the limits configured on the pod, and then learns that it's set to 500 milli core.
- It then continuously pulls the metric server to monitor the usage, and when the usage goes beyond 50%, it modifies the number of replicas to scale up or down, depending on the usage.
- So to view the status of the created HPA, run the kubectl get HPA command and it lists the current HPA.
- So create an HPA definition file with the API version set to auto scaling v2 kind is set to horizontal pod autoscaler.
- The name is set to Myapp HPA and then we have the scale target ref.

## 3. Why This Exists
- And I'm tasked to make sure that there is always sufficient workload to support demand for this application.
- If I had to do it manually.
- Now remember that you must have the metrics server running on the cluster to be able to monitor the resource usage like this.
- Now, when it reaches the threshold of 450 millicores or whatever it is that I have defined as the threshold or close to that.
- I would run the kubectl scale command to scale the deployment to add additional pods.
- So that's the manual way to scale a workload.
- The problems with this approach is that I have to sit in front of my computer and continuously monitor resource usage.
- I need to manually run commands to scale up and down.
- And if there's a sudden traffic spike and I want a break or something, I may not be able to react fast enough to support the spike in the application or in the traffic.
- So to solve this, we use the Horizontal Pod autoscaler.

## 4. Internal Working
- From a deployment configuration perspective, I see this pod requests 250 milli CPU and has a limit of 500 millicores of CPU.
- I would run the kubectl scale command to scale the deployment to add additional pods.
- It then automatically increases or decreases the number of pods in a deployment Statefulset or replica set based on the CPU, memory, or custom metrics.
- And if the CPU, memory, or memory usage goes too high, HPA creates more paths to handle that, and if it drops, it removes the extra pods to save resources and thus balances the thresholds.
- For the given nginx deployment, we can configure a horizontal pod autoscaler by running the kubectl autoscale command, targeting the deployment myapp, and specifying a CPU threshold of 50% with a minimum of one and maximum of ten pods.
- So when this command is run, Kubernetes creates a horizontal pod autoscaler for this deployment that first reads the limits configured on the pod, and then learns that it's set to 500 milli core.
- It then continuously pulls the metric server to monitor the usage, and when the usage goes beyond 50%, it modifies the number of replicas to scale up or down, depending on the usage.
- So to view the status of the created HPA, run the kubectl get HPA command and it lists the current HPA.
- So create an HPA definition file with the API version set to auto scaling v2 kind is set to horizontal pod autoscaler.
- The name is set to Myapp HPA and then we have the scale target ref.
- That's the deployment named Myapp.
- And then we have configured the metrics and resources to monitor in this case the resource being CPU and target utilization, uh being 50%.

## 5. Key Objects / Fields / Relationships
- Let us now look at horizontal pod autoscaler in Kubernetes.
- From a deployment configuration perspective, I see this pod requests 250 milli CPU and has a limit of 500 millicores of CPU.
- Um, and the capacity that a single pod can handle is 500 millicores of CPU.
- So I would run the kubectl top pod command and monitor the resource consumption of the pod.
- I would run the kubectl scale command to scale the deployment to add additional pods.
- So to solve this, we use the Horizontal Pod autoscaler.
- So the horizontal Pod autoscaler continuously monitors the metrics as we did manually using the top command.
- It then automatically increases or decreases the number of pods in a deployment Statefulset or replica set based on the CPU, memory, or custom metrics.
- And if the CPU, memory, or memory usage goes too high, HPA creates more paths to handle that, and if it drops, it removes the extra pods to save resources and thus balances the thresholds.
- For the given nginx deployment, we can configure a horizontal pod autoscaler by running the kubectl autoscale command, targeting the deployment myapp, and specifying a CPU threshold of 50% with a minimum of one and maximum of ten pods.

## 6. YAML Deep Dive
- From a deployment configuration perspective, I see this pod requests 250 milli CPU and has a limit of 500 millicores of CPU.
- For the given nginx deployment, we can configure a horizontal pod autoscaler by running the kubectl autoscale command, targeting the deployment myapp, and specifying a CPU threshold of 50% with a minimum of one and maximum of ten pods.
- So it would never go beyond the maximum that we have specified when scaling up, and it would not go beyond the minimum that we specified when scaling down.
- So create an HPA definition file with the API version set to auto scaling v2 kind is set to horizontal pod autoscaler.
- By using a secret definition file with the imperative method, you can directly specify the key value pairs in the command line itself to create a secret of the given values.
- The from literal option is used to specify the key value pairs in the command itself.
- If you wish to add additional key value pairs, simply specify the from literal options multiple times.
- Use the from file option to specify a path to the file that contains the required data.
- The file has API version kind metadata and data.
- Kind is secret.

## 7. kubectl / command usage
- So I would run the kubectl top pod command and monitor the resource consumption of the pod.
- I would run the kubectl scale command to scale the deployment to add additional pods.
- I need to manually run commands to scale up and down.
- So the horizontal Pod autoscaler continuously monitors the metrics as we did manually using the top command.
- For the given nginx deployment, we can configure a horizontal pod autoscaler by running the kubectl autoscale command, targeting the deployment myapp, and specifying a CPU threshold of 50% with a minimum of one and maximum of ten pods.
- So when this command is run, Kubernetes creates a horizontal pod autoscaler for this deployment that first reads the limits configured on the pod, and then learns that it's set to 500 milli core.
- So to view the status of the created HPA, run the kubectl get HPA command and it lists the current HPA.
- And when you no longer need the HPA, you can delete it using the kubectl delete HPA command.
- By using a secret definition file with the imperative method, you can directly specify the key value pairs in the command line itself to create a secret of the given values.
- Create secret generic command.

## 8. Real-world scenarios
- So I'm a Kubernetes administrator, and I'm sitting on my machine looking at a cluster.
- From a deployment configuration perspective, I see this pod requests 250 milli CPU and has a limit of 500 millicores of CPU.
- Now remember that you must have the metrics server running on the cluster to be able to monitor the resource usage like this.
- I would run the kubectl scale command to scale the deployment to add additional pods.
- It then automatically increases or decreases the number of pods in a deployment Statefulset or replica set based on the CPU, memory, or custom metrics.
- For the given nginx deployment, we can configure a horizontal pod autoscaler by running the kubectl autoscale command, targeting the deployment myapp, and specifying a CPU threshold of 50% with a minimum of one and maximum of ten pods.
- So when this command is run, Kubernetes creates a horizontal pod autoscaler for this deployment that first reads the limits configured on the pod, and then learns that it's set to 500 milli core.
- That's the deployment named Myapp.
- But there are also other sources that we can refer to, such as a custom metrics adapter that can retrieve information from other internal sources, like a workload deployed in a cluster.
- We can also refer to external sources, such as tools or other instances that are outside of the Kubernetes cluster, such as a Datadog.

## 9. Pitfalls and misunderstandings
- So you don't have to worry about that for now.
- Okay, so, this is basically command, and it says the Dry Run command is deprecated and is replaced with the Dry Run = Client.
- If you do not wish to create a config map definition file, you could simply use the cube control, create Configmap command and specify the required arguments.
- You don't have to worry about this.
- Of course you don't have to develop that solutions yourself.
- If you do not wish to create a config map definition file, you could simply use the cube control create config map command and specify the required arguments.
- You don't have to provide step-by-step instructions.
- Now, these commands help in quickly creating or modifying objects as we don't have to deal with YAML files.
- That's what we learned, so we're gonna run the kubectl get pods command, and you can ignore this line here that says in the current default namespace, so we're gonna talk about namespaces in one of the upcoming lectures, so you don't have to worry...
- Okay, so, so this is basically command and it says, "The dry-run command is deprecated," and it's replaced with the dry-run equals client, So let's run that, okay, so this is the yaml file.

## 10. Troubleshooting angle
- So out of these it's not running ready your success is actually error or waiting.
- Okay, now why do you think the container Agent X in pod web app is in an error or waiting state?
- So if you look at one of the section here, under State you have the reason called as error image pull.
- Or if you just look at it below here in the event section, you can see the error.
- Okay, so it's created and it's in an error image pool state because we have the wrong image name.
- And the last question for this lab is to change the image on this pod to Redis, to fix that error that we, you know, purposefully created.
- Okay, let's check status Now we'll talk about this error message later when we talk about imperative commands and the declarative way that we apply.
- So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.
- Well, then it would fail with an error that says the pod already exists.
- If an object does not exist, the replace command fails with an error message.

## 11. CKA / CKAD relevance
- And note that it can also track multiple different types of metrics, which we will refer to in in a few minutes.
- To keep the scope just enough for the exam, this is all that we will discuss about HPA for now.
- In this example, we are creating a secret by the name app secret with a key value pair db underscore host equals MySQL.
- If you wish to add additional key value pairs, simply specify the from literal options multiple times.
- In this example, we are creating a config map by the name appconfig with a key value pair of app color equals blue.
- For example, one of the commands that can be used in a backup script is to get all pods and deployments and services in all namespaces using the kube control utilities.
- A new data directory is created in this example at location var lib etcd from backup.
- Towards the end of this lecture, we will talk about some tips that you can use in the exam.
- In the Infrastructure as Code world, an example of an imperative approach of provisioning infrastructure would be a set of instructions written step by step, such as provisioning a VM named a web server, installing the Nginx software on it, editin...
- And these are helpful during the certification exams.

## 12. Source Contributions
- Matched Global Concepts:
  - (2025 Updates) Horizontal Pod Autoscaler (HPA)_ (match score: 2, notes: 49)
  - Secrets (match score: 2, notes: 132)
  - Solution - Pods (optional) (match score: 2, notes: 126)
  - ConfigMaps (match score: 2, notes: 53)
  - Backup and Restore Methods (match score: 2, notes: 57)
  - Configuring ConfigMaps in Applications (match score: 2, notes: 53)
  - Imperative vs Declarative (match score: 2, notes: 94)
  - Lab Solution - Pods (optional) (match score: 2, notes: 75)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 169 note entries
  - certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management: 169 note entries
  - certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance: 57 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 126 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 118 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 5 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 12 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 19 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-005_section_concept_map.md | 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.extraction.md | Entry 20 | Type Implementation Step

