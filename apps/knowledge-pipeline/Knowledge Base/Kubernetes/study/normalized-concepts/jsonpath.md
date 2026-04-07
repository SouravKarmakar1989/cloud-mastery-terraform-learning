# Normalized Concept: Jsonpath

- Concept Key: jsonpath
- Matched Global Concept Blocks: 1
- Source-backed Note Entries Used: 113

## 1. Definition
- In this video, we will look at how to use Jsonpath in Kubernetes with the kube control utility.
- Once done, you will go through a set of practice tests where you get to practice what you learned through some fun and challenging exercises.
- So let's get started.
- Now, before you begin, you must know how to work with Jsonpath, so that's a prerequisite.
- If you have never worked with Jsonpath queries before.
- They're available for free on my YouTube or on the Code Cloud website.
- If you have worked with it already, let's continue.
- We also have a set of exercises on working with Jsonpath on Kubernetes dataset, so make sure you go through that as well.
- In this video, our focus will be on how to use jsonpath queries with the kube control utility.
- You will often have requirements where you will need to print summary of different states about different resources.

## 2. First-Principles Mental Model
- We will start by discussing why you might want to use Jsonpath in the first place.
- We will then look at viewing and interpreting kube control output in JSON format post, which we look at the different steps involved in using Jsonpath with the kube control utility.
- Check out the videos and practice tests on that first.
- Also, it's good to first practice jsonpath on Kubernetes dataset so that you know how to navigate through it before actually working on Jsonpath with kube control utility.
- So why jsonpath on the first place?
- When you're working with production environments for Kubernetes, you will need to view information about hundreds of nodes and thousands of objects like deployments, pods and replica sets and services and secrets, etc. and you will be using kube c...
- But let's take a step back and understand how the kube control utility works.
- Every time you run a kube control command, it interacts with Kubernetes API through the kube API server.
- The kube API server speaks the JSON language, so it returns the requested information in a JSON format.
- The architecture or say, print the list of pods and the images they use.

## 3. Why This Exists
- In this video, we will look at how to use Jsonpath in Kubernetes with the kube control utility.
- We will start by discussing why you might want to use Jsonpath in the first place.
- Once done, you will go through a set of practice tests where you get to practice what you learned through some fun and challenging exercises.
- Now, before you begin, you must know how to work with Jsonpath, so that's a prerequisite.
- Also, it's good to first practice jsonpath on Kubernetes dataset so that you know how to navigate through it before actually working on Jsonpath with kube control utility.
- In this video, our focus will be on how to use jsonpath queries with the kube control utility.
- When you're working with production environments for Kubernetes, you will need to view information about hundreds of nodes and thousands of objects like deployments, pods and replica sets and services and secrets, etc. and you will be using kube c...
- You will often have requirements where you will need to print summary of different states about different resources.
- You will want to view specific fields of all resources, query data about the resources based on different criteria, etc..
- The kube cube control utility on receiving the information in a JSON format, converts it into a human readable format, and prints it out to our screen.

## 4. Internal Working
- We will start by discussing why you might want to use Jsonpath in the first place.
- We will then look at viewing and interpreting kube control output in JSON format post, which we look at the different steps involved in using Jsonpath with the kube control utility.
- Check out the videos and practice tests on that first.
- Also, it's good to first practice jsonpath on Kubernetes dataset so that you know how to navigate through it before actually working on Jsonpath with kube control utility.
- So why jsonpath on the first place?
- When you're working with production environments for Kubernetes, you will need to view information about hundreds of nodes and thousands of objects like deployments, pods and replica sets and services and secrets, etc. and you will be using kube c...
- But let's take a step back and understand how the kube control utility works.
- Every time you run a kube control command, it interacts with Kubernetes API through the kube API server.
- The kube API server speaks the JSON language, so it returns the requested information in a JSON format.
- The architecture or say, print the list of pods and the images they use.
- In order to get started with Jsonpath in kube control, you must follow these four steps.
- First, you need to know the command that will give you the required information in the raw format.

## 5. Key Objects / Fields / Relationships
- When you're working with production environments for Kubernetes, you will need to view information about hundreds of nodes and thousands of objects like deployments, pods and replica sets and services and secrets, etc. and you will be using kube c...
- Viewing such information by going through thousands of these resources is an overwhelming task, which is why kube control supports a JSON path option that makes filtering data across large datasets using complex criteria and easy task.
- Every time you run a kube control command, it interacts with Kubernetes API through the kube API server.
- The kube API server speaks the JSON language, so it returns the requested information in a JSON format.
- For example, the resource capacity available on on these nodes and the chains set on the nodes, the conditions of the nodes, the hardware architecture, the images available on these nodes, etc..
- For example, say, I'd like to see the nodes and their CPU counts in a tabular format like this.
- Or the list of nodes and the taints set on them.
- The architecture or say, print the list of pods and the images they use.
- For example, if you need information regarding nodes, then you must use the kube control get nodes command.
- If you need information regarding pods, you must use the kube control get pods command.

## 6. YAML Deep Dive
- You will want to view specific fields of all resources, query data about the resources based on different criteria, etc..
- Once you identify the command, inspect its output in JSON format for this.
- So if you're a beginner to jsonpath and to this kind of logic, then I would recommend strictly following this approach where you first view the JSON version of the output, copy the output to a Jsonpath query evaluator like jsonpath Dccom.
- A Jsonpath query of items of star dot metadata dot name with the cube control get nodes command gives us the names of the nodes in the cluster, a query of items dot status dot node info dot architecture returns me the hardware architecture of the ...
- This will get me the results in the format I want to specify the for each statement.
- Dot metadata dot name.
- The jsonpath corresponding to the node name is dot metadata dot name.
- Finally, Jsonpath can also be used while sorting objects by specifying the sort by option.
- When you run the kube control get nodes command, specify the Jsonpath query we developed earlier, as is in the sort by option to sort based on name or CPU count.

## 7. kubectl / command usage
- In this video, we will look at how to use Jsonpath in Kubernetes with the kube control utility.
- We will start by discussing why you might want to use Jsonpath in the first place.
- We will then look at viewing and interpreting kube control output in JSON format post, which we look at the different steps involved in using Jsonpath with the kube control utility.
- We then look at several jsonpath examples, and then go through loops, before finally looking at custom columns and sort functionality of kube control.
- Now, before you begin, you must know how to work with Jsonpath, so that's a prerequisite.
- If you have never worked with Jsonpath queries before.
- Also, it's good to first practice jsonpath on Kubernetes dataset so that you know how to navigate through it before actually working on Jsonpath with kube control utility.
- We also have a set of exercises on working with Jsonpath on Kubernetes dataset, so make sure you go through that as well.
- In this video, our focus will be on how to use jsonpath queries with the kube control utility.
- So why jsonpath on the first place?

## 8. Real-world scenarios
- We then look at several jsonpath examples, and then go through loops, before finally looking at custom columns and sort functionality of kube control.
- Once done, you will go through a set of practice tests where you get to practice what you learned through some fun and challenging exercises.
- Check out the videos and practice tests on that first.
- They're available for free on my YouTube or on the Code Cloud website.
- Also, it's good to first practice jsonpath on Kubernetes dataset so that you know how to navigate through it before actually working on Jsonpath with kube control utility.
- When you're working with production environments for Kubernetes, you will need to view information about hundreds of nodes and thousands of objects like deployments, pods and replica sets and services and secrets, etc. and you will be using kube c...
- For example, the resource capacity available on on these nodes and the chains set on the nodes, the conditions of the nodes, the hardware architecture, the images available on these nodes, etc..
- For example, say, I'd like to see the nodes and their CPU counts in a tabular format like this.
- And that's what we will see in this lecture and in the practice exercises that follow this video.
- For example, if you need information regarding nodes, then you must use the kube control get nodes command.

## 9. Pitfalls and misunderstandings
- This may be a bit advanced for some users, so don't worry if you don't fully get it from a certification and exam standpoint.

## 10. Troubleshooting angle
- No direct source-supported coverage found for this concept in the current merged map.

## 11. CKA / CKAD relevance
- We then look at several jsonpath examples, and then go through loops, before finally looking at custom columns and sort functionality of kube control.
- For example, the resource capacity available on on these nodes and the chains set on the nodes, the conditions of the nodes, the hardware architecture, the images available on these nodes, etc..
- For example, say, I'd like to see the nodes and their CPU counts in a tabular format like this.
- For example, if you need information regarding nodes, then you must use the kube control get nodes command.
- For example, to get the image, you would use the query dot items of zero containers of zero dot image.
- For example, I could use the first query to get the node names and add the query I used to get the CPU count to it.
- Let's take the previous example, where we used the Jsonpath option to print node names and CPU capacities.
- For example, for the first column, the column name is node.

## 12. Source Contributions
- Matched Global Concepts:
  - JSON Path in Kubernetes (match score: 1, notes: 113)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 15_Other Topics: 113 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 2 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 3 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 4 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 9 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 12 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 15 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 16 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-015_section_concept_map.md | 299_JSON Path in Kubernetes.extraction.md | Entry 20 | Type Implementation Step

