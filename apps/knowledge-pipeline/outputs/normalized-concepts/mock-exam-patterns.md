# Normalized Concept: Mock Exam Patterns

- Concept Key: mock-exam-patterns
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1885

## 1. Definition
- Before you head into a practice test which follows this video, I wanted to spend a few minutes on walking you through the practice test portal.
- Following this lecture, you'll be taken to the labs.
- Click the start button to load the lab.
- You must be accessing the practice test on a laptop or a desktop system, as you will require a keyboard to work hands on.
- Allow some time for the labs to load.
- It usually loads in less than 30s and in rare scenarios it might take a few minutes.
- So I request you to be patient when it takes a long time.
- Now, once the lab is loaded, you will find the quiz portal on the left and a terminal on the right.
- The terminal on the right is a live terminal for you to work on.
- This could be a Linux terminal if you are learning Linux shell scripting or git, and this could be a Docker host if you are learning Docker or Kubernetes control plane.

## 2. First-Principles Mental Model
- One is this terminal on the right where you'll be working, and you'll run commands to view and configure the Kubernetes cluster.
- At other times, you will perform changes to the environment, such as deploy a set of pods or services and ask you to look for information within them.
- We then test your work to ensure that you've completed it successfully.
- Sometimes you're given a set of Kubernetes definition files and asked to use them to create configurations.
- When you're given a spec, remember to create a configuration that matches it exactly.
- At times, you can access the application that you deploy by clicking on the web portal link given above your terminal, but this is subject to your application.
- However, if you close the browser for a long time or your lab session is idle for a long time, then it will be automatically terminated.
- But you can always refresh the page and reload a new lab environment and start from the first question.
- So as always, if you need additional explanation on any topic, then please do reach out to us and let us know.
- If for some reason you need to open a new terminal, then click on this button at the top.

## 3. Why This Exists
- Before you head into a practice test which follows this video, I wanted to spend a few minutes on walking you through the practice test portal.
- Following this lecture, you'll be taken to the labs.
- Click the start button to load the lab.
- You must be accessing the practice test on a laptop or a desktop system, as you will require a keyboard to work hands on.
- Allow some time for the labs to load.
- So I request you to be patient when it takes a long time.
- The terminal on the right is a live terminal for you to work on.
- There are two parts to the labs.
- One is this terminal on the right where you'll be working, and you'll run commands to view and configure the Kubernetes cluster.
- Each topic covered in the lecture has a practice test associated with it that consists anywhere from 5 to 15 questions.

## 4. Internal Working
- One is this terminal on the right where you'll be working, and you'll run commands to view and configure the Kubernetes cluster.
- At other times, you will perform changes to the environment, such as deploy a set of pods or services and ask you to look for information within them.
- We then test your work to ensure that you've completed it successfully.
- Sometimes you're given a set of Kubernetes definition files and asked to use them to create configurations.
- When you're given a spec, remember to create a configuration that matches it exactly.
- At times, you can access the application that you deploy by clicking on the web portal link given above your terminal, but this is subject to your application.
- However, if you close the browser for a long time or your lab session is idle for a long time, then it will be automatically terminated.
- But you can always refresh the page and reload a new lab environment and start from the first question.
- So as always, if you need additional explanation on any topic, then please do reach out to us and let us know.
- If for some reason you need to open a new terminal, then click on this button at the top.
- Check the status of the kubelet.
- We will start by discussing why you might want to use Jsonpath in the first place.

## 5. Key Objects / Fields / Relationships
- At other times, you will perform changes to the environment, such as deploy a set of pods or services and ask you to look for information within them.
- In this lecture we will see different ways of troubleshooting worker node failures.
- Again, we start by checking the status of the nodes in the cluster.
- If they're reported as not ready, check details about the nodes using the cube control.
- Describe node command.
- Each node has a set of conditions that can point us in a direction as to why a node might have failed.
- When the node is out of disk space, the out of disk flag is set to true.
- When a node is out of memory, the memory pressure flag is set to true.
- And finally, if the node as a whole is healthy, the ready flag is set to true.
- When a worker node stops communicating with the master, maybe due to a crash, these statuses are set to unknown.

## 6. YAML Deep Dive
- The questions are of different kind.
- Or, you may be asked to perform a configuration task using a given spec.
- When you're given a spec, remember to create a configuration that matches it exactly.
- You will want to view specific fields of all resources, query data about the resources based on different criteria, etc..
- Once you identify the command, inspect its output in JSON format for this.
- So if you're a beginner to jsonpath and to this kind of logic, then I would recommend strictly following this approach where you first view the JSON version of the output, copy the output to a Jsonpath query evaluator like jsonpath Dccom.
- A Jsonpath query of items of star dot metadata dot name with the cube control get nodes command gives us the names of the nodes in the cluster, a query of items dot status dot node info dot architecture returns me the hardware architecture of the ...
- This will get me the results in the format I want to specify the for each statement.
- Dot metadata dot name.
- The jsonpath corresponding to the node name is dot metadata dot name.

## 7. kubectl / command usage
- If you're learning Kubernetes, you can run commands here and interact with the system and perform your tasks.
- One is this terminal on the right where you'll be working, and you'll run commands to view and configure the Kubernetes cluster.
- Describe node command.
- In this video, we will look at how to use Jsonpath in Kubernetes with the kube control utility.
- We will start by discussing why you might want to use Jsonpath in the first place.
- We will then look at viewing and interpreting kube control output in JSON format post, which we look at the different steps involved in using Jsonpath with the kube control utility.
- We then look at several jsonpath examples, and then go through loops, before finally looking at custom columns and sort functionality of kube control.
- Now, before you begin, you must know how to work with Jsonpath, so that's a prerequisite.
- If you have never worked with Jsonpath queries before.
- Also, it's good to first practice jsonpath on Kubernetes dataset so that you know how to navigate through it before actually working on Jsonpath with kube control utility.

## 8. Real-world scenarios
- Before you head into a practice test which follows this video, I wanted to spend a few minutes on walking you through the practice test portal.
- Following this lecture, you'll be taken to the labs.
- Click the start button to load the lab.
- You must be accessing the practice test on a laptop or a desktop system, as you will require a keyboard to work hands on.
- Allow some time for the labs to load.
- Now, once the lab is loaded, you will find the quiz portal on the left and a terminal on the right.
- There are two parts to the labs.
- One is this terminal on the right where you'll be working, and you'll run commands to view and configure the Kubernetes cluster.
- Each topic covered in the lecture has a practice test associated with it that consists anywhere from 5 to 15 questions.
- At other times, you will perform changes to the environment, such as deploy a set of pods or services and ask you to look for information within them.

## 9. Pitfalls and misunderstandings
- Now, don't be too worried about the exam interface itself.
- Don't stress too much about it.
- If you if you don't know anything you have, you must go through the documentation pages and try to find the answers.
- If you if you don't know anything, you you have, you must go through the documentation pages and try to find the answers.
- This may be a bit advanced for some users, so don't worry if you don't fully get it from a certification and exam standpoint.
- We don't need that.
- And let me just copy the whole thing and just delete what I don't need.
- But since this is a scratch data and we don't actually need the data to persist, we just need it to be available during the lifetime of the pod.
- And I don't know why it always moves over I don't want it to do that.
- Now we don't need to do this because this is the default one.

## 10. Troubleshooting angle
- In this lecture we will see different ways of troubleshooting worker node failures.
- Check the Cubelet logs for possible issues.
- Check the Kubelet certificates, ensure they're not expired and they are part of the right group, and that the certificates are issued by the right CA.
- Head over to the practice test and practice fixing broken clusters.
- Let's apply this and hope there's no errors.
- You got to use a path type prefix route request center path slash.
- You can see it's going to use path type prefix.
- It's going to be under TLS issue a certificate.
- And it looks like there's an error.
- Make sure that it's recreated restarted automatically in case of failures.

## 11. CKA / CKAD relevance
- Remember, in the certification test, you must use one of the editors that come within the provided exam environment, so you must practice working with VI editors.
- We also have some scenario based multiple choice questions, so you won't have these in the actual certification exam.
- Now remember that this is not a replica of the actual Kubernetes certification exam, so the interface and your experience in the actual exam is going to be slightly different than this.
- This is a custom solution we built to help you practice for it, and to test your skills and to guide you and to prepare you for the actual exam.
- And remember, this is a temporary environment and is only available for one hour depending on the mock exam or your particular lab environment, after which it is deleted so your work will not be saved.
- Remember, in the certification test, you must use one of the editors that come within the provided exam environment.
- We then look at several jsonpath examples, and then go through loops, before finally looking at custom columns and sort functionality of kube control.
- For example, the resource capacity available on on these nodes and the chains set on the nodes, the conditions of the nodes, the hardware architecture, the images available on these nodes, etc..
- For example, say, I'd like to see the nodes and their CPU counts in a tabular format like this.
- For example, if you need information regarding nodes, then you must use the kube control get nodes command.

## 12. Source Contributions
- Matched Global Concepts:
  - Introduction to Kubernetes Practice Test (match score: 2, notes: 51)
  - Practice Test Introduction (match score: 2, notes: 52)
  - Worker Node Failure (match score: 1, notes: 24)
  - JSON Path in Kubernetes (match score: 1, notes: 113)
  - Mock Exam - 2 - Solution _ (Optional) (match score: 1, notes: 624)
  - Solution - Mock Exam -1 (Optional) (match score: 1, notes: 344)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 1, notes: 485)
  - Ingress (match score: 1, notes: 192)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 52 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 192 note entries
  - certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting: 24 note entries
  - certified-kubernetes-administrator-with-practice-tests / 15_Other Topics: 113 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 1453 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 51 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 13 | Type Implementation Step
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 19 | Type Implementation Step
  - section-maps/BATCH-019_section_concept_map.md | 015_Introduction to Kubernetes Practice Test.extraction.md | Entry 20 | Type Concept

