# Extraction: certified-kubernetes-application-developer / 03_Configuration / 064_Solution_ Resource Requirements

---

## Entry 1
Type: Concept  

Content:
Teacher: In this video, I'm gonna walk you through the solutions for the resource limits lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
The first question, a pod called Rabbit is deployed, and we need to identify the CPU requirements set on the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
To get this information, we'll do a kubectl describe pod and then well grab the name of the pod, which is Rabbit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Best Practice  

Content:
And if we scroll up we should see a resource section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So, here we can see that the CPU requirements is that it needs to have a CPU of one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Ill select one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
For the next question, we just need to delete the pod called Rabbit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
And to do that we'll just do kubectl, delete pod Rabbit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
After that's deleted we can just check this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
After that's verified we'll go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
And for the next question, it looks like another pod called Elephant has been deployed in the default name space.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Troubleshooting  

Content:
And for some reason or another it fails to get into a running state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And we need to figure out why it is not in a currently running state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So, I'm gonna do a kubectl, describe pod Elephant.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And if we scroll up, we can see that in the last state it set to terminated and we can see that the reason was because it was oomkilled, so out of memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So I'm gonna select oomkilled.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
And the next question is just telling us that the status of oomkilled indicates that it is failing because the pod ran out of memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
And we need to identify the memory limits set on the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
And from the same output we, if you go to the limits section for memory, we can see it's set to 10 mebibytes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
The next question tells us that the Elephant pod runs a process that consumes 15 mebibytes of memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
And it tells us to increase the limit of the Elephant pod to 28 mebibytes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
So we have to delete the current pod and the recreate it with the new configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
So first of all, lets do a kubectl get pod and I'm gonna do dash O and then get the yaml configuration and I'm gonna pipe this to a file and I'll call this Elephant.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
Then, we'll delete the current pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So I'll do a kubectl delete pod Elephant.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
And then I'll go into my Elephant.yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And we need to increase the memory limit up to 20 mebibytes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Right now it's set to 10.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
We'll then save the configuration and now I can just do a kubectl apply dash F and then grab the Elephant.yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
After that's deployed we will then run the validation and everything was successful.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
We'll go to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Inspect that status of the pod, make sure it's a running state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Best Practice  

Content:
So if I do a kubectl get pod, we should see that it is a currently in a running state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
And then I will hit, okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
And the last question is telling us to delete the Elephant pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So I'll do a kubectl delete, pod Elephant.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
And once that's complete we'll run the validation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
And that's successful well then go to the next section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
And that's going to wrap up the resource limits lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 064_Solution_ Resource Requirements
- File: 064_Solution_ Resource Requirements.txt
- Topic: Solution_ Resource Requirements
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
