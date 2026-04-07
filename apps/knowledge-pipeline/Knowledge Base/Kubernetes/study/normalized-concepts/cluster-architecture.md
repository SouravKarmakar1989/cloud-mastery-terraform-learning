# Normalized Concept: Cluster Architecture

- Concept Key: cluster-architecture
- Matched Global Concept Blocks: 2
- Source-backed Note Entries Used: 87

## 1. Definition
- We start with a basic overview of the Kubernetes cluster architecture.
- We first look at the architecture at a high level, and then we drill down into each of these components.
- And finally, you go through a practice test where you look at an existing cluster and are asked to identify various details with respect to these components in the cluster.
- We're going to use an analogy of ships to understand the architecture of Kubernetes.
- So there are many things involved that work together to make this possible.
- So let's take a 10,000 foot look at Kubernetes architecture.
- Sector.
- The Kubernetes cluster consists of a set of nodes, which may be physical or virtual, on premise or on cloud, that host applications in the form of containers.
- These relate to the cargo ships.
- In this analogy, the worker nodes in the cluster are ships that can load containers, but somebody needs to load the containers on the ships and not just load.

## 2. First-Principles Mental Model
- We start with a basic overview of the Kubernetes cluster architecture.
- We first look at the architecture at a high level, and then we drill down into each of these components.
- We see what their roles and responsibilities are and how they are configured.
- We're going to use an analogy of ships to understand the architecture of Kubernetes.
- The purpose of Kubernetes is to host your applications in the form of containers in an automated fashion, so that you can easily deploy as many instances of your application as required, and easily enable communication between different services w...
- So let's take a 10,000 foot look at Kubernetes architecture.
- And so you need to maintain information about the different ships, what container is on which ship and what time it was loaded, etc. all of these are stored in a highly available key value store known as etcd.
- Etcd is a database that stores information in a key value format.
- We will look more into what etcd cluster actually is, what data is stored in it, and how it stores the data in one of the upcoming lectures.
- It identifies the right ship based on its size, its capacity, the number of containers already on the ship, and any other conditions such as the destination of the ship, the type of containers it is allowed to carry, etc. so those are schedulers.

## 3. Why This Exists
- And finally, you go through a practice test where you look at an existing cluster and are asked to identify various details with respect to these components in the cluster.
- We're going to use an analogy of ships to understand the architecture of Kubernetes.
- The purpose of Kubernetes is to host your applications in the form of containers in an automated fashion, so that you can easily deploy as many instances of your application as required, and easily enable communication between different services w...
- So there are many things involved that work together to make this possible.
- These relate to the cargo ships.
- In this analogy, the worker nodes in the cluster are ships that can load containers, but somebody needs to load the containers on the ships and not just load.
- Plan how to load.
- Monitoring equipment's, communication equipments, cranes for moving containers between ships, etc.. the control shifts relate to the master node in the Kubernetes cluster.
- And so you need to maintain information about the different ships, what container is on which ship and what time it was loaded, etc. all of these are stored in a highly available key value store known as etcd.
- The cranes identify the containers that need to be placed on ships.

## 4. Internal Working
- We start with a basic overview of the Kubernetes cluster architecture.
- We first look at the architecture at a high level, and then we drill down into each of these components.
- We see what their roles and responsibilities are and how they are configured.
- We're going to use an analogy of ships to understand the architecture of Kubernetes.
- The purpose of Kubernetes is to host your applications in the form of containers in an automated fashion, so that you can easily deploy as many instances of your application as required, and easily enable communication between different services w...
- So let's take a 10,000 foot look at Kubernetes architecture.
- And so you need to maintain information about the different ships, what container is on which ship and what time it was loaded, etc. all of these are stored in a highly available key value store known as etcd.
- Etcd is a database that stores information in a key value format.
- We will look more into what etcd cluster actually is, what data is stored in it, and how it stores the data in one of the upcoming lectures.
- It identifies the right ship based on its size, its capacity, the number of containers already on the ship, and any other conditions such as the destination of the ship, the type of containers it is allowed to carry, etc. so those are schedulers.
- In a Kubernetes cluster, a scheduler identifies the right node to place a container on based on the containers resource requirements, the worker nodes capacity, or any other policies or constraints such as taints and tolerations or node affinity r...
- The cube API server is the primary management component of Kubernetes.

## 5. Key Objects / Fields / Relationships
- We see what their roles and responsibilities are and how they are configured.
- The purpose of Kubernetes is to host your applications in the form of containers in an automated fashion, so that you can easily deploy as many instances of your application as required, and easily enable communication between different services w...
- The Kubernetes cluster consists of a set of nodes, which may be physical or virtual, on premise or on cloud, that host applications in the form of containers.
- In this analogy, the worker nodes in the cluster are ships that can load containers, but somebody needs to load the containers on the ships and not just load.
- Monitoring equipment's, communication equipments, cranes for moving containers between ships, etc.. the control shifts relate to the master node in the Kubernetes cluster.
- The master node is responsible for managing the Kubernetes cluster, storing information regarding the different nodes, planning which containers goes where, monitoring the nodes and containers on them, etc..
- The master node does all of these using a set of components together known as the control plane components.
- In a Kubernetes cluster, a scheduler identifies the right node to place a container on based on the containers resource requirements, the worker nodes capacity, or any other policies or constraints such as taints and tolerations or node affinity r...
- We have these services office that takes care of the IT and communications between different ships.
- Similarly, in Kubernetes we have controllers available that take care of different areas.

## 6. YAML Deep Dive
- And finally, you go through a practice test where you look at an existing cluster and are asked to identify various details with respect to these components in the cluster.
- We have two kinds of shapes in this example cargo ships that does the actual work of carrying containers across the sea, and control ships that are responsible for monitoring and managing the cargo ships.
- There are different offices in the dock that are assigned to special tasks or departments.

## 7. kubectl / command usage
- No direct source-supported coverage found for this concept in the current merged map.

## 8. Real-world scenarios
- We start with a basic overview of the Kubernetes cluster architecture.
- And finally, you go through a practice test where you look at an existing cluster and are asked to identify various details with respect to these components in the cluster.
- The purpose of Kubernetes is to host your applications in the form of containers in an automated fashion, so that you can easily deploy as many instances of your application as required, and easily enable communication between different services w...
- We have two kinds of shapes in this example cargo ships that does the actual work of carrying containers across the sea, and control ships that are responsible for monitoring and managing the cargo ships.
- The Kubernetes cluster consists of a set of nodes, which may be physical or virtual, on premise or on cloud, that host applications in the form of containers.
- In this analogy, the worker nodes in the cluster are ships that can load containers, but somebody needs to load the containers on the ships and not just load.
- Monitoring equipment's, communication equipments, cranes for moving containers between ships, etc.. the control shifts relate to the master node in the Kubernetes cluster.
- The master node is responsible for managing the Kubernetes cluster, storing information regarding the different nodes, planning which containers goes where, monitoring the nodes and containers on them, etc..
- And so you need to maintain information about the different ships, what container is on which ship and what time it was loaded, etc. all of these are stored in a highly available key value store known as etcd.
- We will look more into what etcd cluster actually is, what data is stored in it, and how it stores the data in one of the upcoming lectures.

## 9. Pitfalls and misunderstandings
- No direct source-supported coverage found for this concept in the current merged map.

## 10. Troubleshooting angle
- For example, the operations team takes care of ship handling, traffic control, etc. they deal with issues related to damages, the routes the different ships take, etc. the cargo team takes care of containers when containers are damaged or destroyed.

## 11. CKA / CKAD relevance
- We have two kinds of shapes in this example cargo ships that does the actual work of carrying containers across the sea, and control ships that are responsible for monitoring and managing the cargo ships.
- We will look at these in much more detail with examples and practice tests later in this course.
- For example, you might have a web server running in one container on one of the nodes and a database server running on another container on another node.
- If you have attended the beginner's course or other certification course for application developers, then you might want to skip some of these topics or maybe just go through the practice tests alone.

## 12. Source Contributions
- Matched Global Concepts:
  - Cluster Architecture (match score: 1, notes: 82)
  - Core Concepts - Section Introduction (match score: 1, notes: 5)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 87 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 1 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 2 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 3 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 5 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 6 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 8 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 10 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-002_section_concept_map.md | 007_Cluster Architecture.extraction.md | Entry 20 | Type Concept

