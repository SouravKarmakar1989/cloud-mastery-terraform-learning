# Normalized Concept: Scheduler

- Concept Key: scheduler
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 662

## 1. Definition
- For what is the name of the pod that deploys the default Kubernetes scheduler in this environment?
- Okay, so let's do a kubectl get pods command in the kube-system namespace.
- So we're gonna look here.
- And we see the pod is kube scheduler-control plane.
- So let's select that.
- Now, what is the image used to deploy the Kubernetes scheduler?
- Inspect the kube scheduler, pod and identify the image.
- Let's do a kubectl describe pod scheduler.
- Okay, so here we have the image and that is case.gcr.io/kube-scheduler version 1.23.0 as of this recording.
- So I'm gonna select that.

## 2. First-Principles Mental Model
- For what is the name of the pod that deploys the default Kubernetes scheduler in this environment?
- And we see the pod is kube scheduler-control plane.
- Now, what is the image used to deploy the Kubernetes scheduler?
- Inspect the kube scheduler, pod and identify the image.
- Let's do a kubectl describe pod scheduler.
- And then specify the namespace as kube-system.
- Okay, so here we have the image and that is case.gcr.io/kube-scheduler version 1.23.0 as of this recording.
- Okay, now we've already created the service account and cluster role binding that our custom scheduler will make use of.
- So all of these are already created.
- If we'd like to take a look, we can do a get service account my scheduler.

## 3. Why This Exists
- Now, what is the image used to deploy the Kubernetes scheduler?
- If we'd like to take a look, we can do a get service account my scheduler.
- So that's already done for us.
- So we don't have to worry about that.
- So we have to create a ConfigMap with a name using the contents of the file, so there's already a file here.
- It will be passed through to the new scheduler that we're gonna create.
- We just have to create a ConfigMap for it.
- And it has to be created from file.
- We use the form file as data path to the file.
- Okay, so that's created.

## 4. Internal Working
- For what is the name of the pod that deploys the default Kubernetes scheduler in this environment?
- And we see the pod is kube scheduler-control plane.
- Now, what is the image used to deploy the Kubernetes scheduler?
- Inspect the kube scheduler, pod and identify the image.
- Let's do a kubectl describe pod scheduler.
- And then specify the namespace as kube-system.
- Okay, so here we have the image and that is case.gcr.io/kube-scheduler version 1.23.0 as of this recording.
- Okay, now we've already created the service account and cluster role binding that our custom scheduler will make use of.
- So all of these are already created.
- If we'd like to take a look, we can do a get service account my scheduler.
- So we see the my scheduler service account and the kube-system namespace and similarly, there are cluster role bindings as well.
- And let's create a ConfigMap that the new scheduler will employ using the concept of ConfigMap as a volume.

## 5. Key Objects / Fields / Relationships
- For what is the name of the pod that deploys the default Kubernetes scheduler in this environment?
- Okay, so let's do a kubectl get pods command in the kube-system namespace.
- And we see the pod is kube scheduler-control plane.
- Inspect the kube scheduler, pod and identify the image.
- Let's do a kubectl describe pod scheduler.
- And then specify the namespace as kube-system.
- Okay, now we've already created the service account and cluster role binding that our custom scheduler will make use of.
- If we'd like to take a look, we can do a get service account my scheduler.
- So we see the my scheduler service account and the kube-system namespace and similarly, there are cluster role bindings as well.
- And let's create a ConfigMap that the new scheduler will employ using the concept of ConfigMap as a volume.

## 6. YAML Deep Dive
- Inspect the kube scheduler, pod and identify the image.
- And then specify the namespace as kube-system.
- And also specify the name system.
- Deploy an additional scheduler to the cluster following the given specification.
- Use the manifest file provided at root my scheduler.
- My scheduler.yaml or just since we are already in that directory, you could just give the file name.
- And what we need to do is specify the custom scheduler, which is basically my scheduler given here.
- And then we specify the name of the scheduler we just created.
- We specify through taints and tolerations and node affinity, etc..
- Say you have a specific application that requires its components to be placed on nodes after performing some additional checks, so you decide to have your own scheduling algorithm to place pods on nodes so that you can add your own custom conditio...

## 7. kubectl / command usage
- Okay, so let's do a kubectl get pods command in the kube-system namespace.
- Let's do a kubectl describe pod scheduler.
- So we'll do a kubectl create ConfigMap.
- Let's do a kubectl pods -a.
- So when you run the the get pods command in the kube system namespace, you can then see the new custom scheduler running.
- Now create the pod using the kubectl create command.
- So if the pod is in a the pending state, then you can look at the logs under the pod describe command.
- If you've got a describe command and you'll mostly notice that the scheduler isn't configured correctly.
- Now we can view this in the events using the kubectl get events command with the dash o wire option.
- So for that we have logs using the kubectl logs command and provide the scheduler pod name or the deployment name.

## 8. Real-world scenarios
- -: Okay, so let's go over the practice test for multiple schedulers.
- For what is the name of the pod that deploys the default Kubernetes scheduler in this environment?
- Now, what is the image used to deploy the Kubernetes scheduler?
- Okay, now we've already created the service account and cluster role binding that our custom scheduler will make use of.
- So we see the my scheduler service account and the kube-system namespace and similarly, there are cluster role bindings as well.
- Deploy an additional scheduler to the cluster following the given specification.
- The liveness probe, the readiness probe are all set so we don't really have to worry about that.
- And that's the end of this lab.
- In this lecture, we look at deploying multiple schedulers in a Kubernetes cluster.
- You can write your own Kubernetes Scheduler program, package it, and deploy it as the default scheduler, or as an additional scheduler in Kubernetes cluster.

## 9. Pitfalls and misunderstandings
- So we don't have to worry about that.
- The liveness probe, the readiness probe are all set so we don't really have to worry about that.
- Now the default scheduler doesn't really need one because if you don't specify a name it sets the name to default scheduler.
- The one thing that the Cubelet knows to do is create pods, but we don't have an API server here to provide pod details.
- Remember, we don't have the rest of the Kubernetes cluster yet, so the kube control utility works with the kube API server since we don't have an API server now.
- This way you don't have to download the binaries, configure services, or worry about the services crashing if any of these services were to crash.
- Its real name is Kube API server, but some call it Kubernetes because for a lot of people who don't really know what goes under the hoods of Kubernetes?
- The controller managers don't function either.
- When we set up a Kubernetes cluster from scratch later during this course, we do not install Kubelet on the master nodes.
- Now don't let the graphic mislead you.

## 10. Troubleshooting angle
- You could also view the logs of the scheduler in case you run into issues.
- Now the kube scheduler is a system component part of the Kubernetes control plane, so its name must be prefixed with the keyword system.
- It is again a system component, so its name must be prefixed with the keyword system and finally kube proxy.
- For example, the operations team takes care of ship handling, traffic control, etc. they deal with issues related to damages, the routes the different ships take, etc. the cargo team takes care of containers when containers are damaged or destroyed.

## 11. CKA / CKAD relevance
- -: Okay, so let's go over the practice test for multiple schedulers.
- In this lecture, we look at deploying multiple schedulers in a Kubernetes cluster.
- You can write your own Kubernetes Scheduler program, package it, and deploy it as the default scheduler, or as an additional scheduler in Kubernetes cluster.
- However, some specific applications that you may choose can use your own custom scheduler, so your Kubernetes cluster can have multiple schedulers at a time.
- Now, when there are multiple schedulers, they must have different names so that we can identify them as separate schedulers.
- The leader elect option is used when you have multiple copies of the scheduler running on different master nodes, as in a high availability setup where you have multiple master nodes with the scheduler process running on both of them.
- If multiple copies of the same scheduler are running on different nodes, only one can be active at a time, and that's where the leader elect option helps in choosing a leader who will lead the scheduling activities.
- In case you do have multiple masters, just remember that you can pass in this additional parameter to set a log object name.
- And for the one for configuring multiple schedulers.
- And if you look here first of all it shows you how to if you were to build your own scheduler, how you could clone the Kubernetes repo and then make changes to the scheduler and build it and package it into a Docker image.

## 12. Source Contributions
- Matched Global Concepts:
  - Lab Solution - Multiple Scheduler (match score: 2, notes: 77)
  - Multiple Schedulers (match score: 2, notes: 105)
  - Static Pods (match score: 2, notes: 76)
  - Cluster Networking (match score: 2, notes: 31)
  - TLS in Kubernetes - Certificate Creation (match score: 2, notes: 133)
  - Cluster Upgrade Introduction (match score: 2, notes: 110)
  - Cluster Architecture (match score: 2, notes: 82)
  - Kube Scheduler (match score: 2, notes: 48)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 130 note entries
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 258 note entries
  - certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance: 110 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 133 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 31 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 1 | Type Exam Tip
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 2 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 5 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 7 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 8 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 9 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 10 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 11 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 13 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 14 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 15 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 17 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 19 | Type Warning/Pitfall
  - section-maps/BATCH-003_section_concept_map.md | 079_Lab Solution - Multiple Scheduler.extraction.md | Entry 20 | Type Concept

