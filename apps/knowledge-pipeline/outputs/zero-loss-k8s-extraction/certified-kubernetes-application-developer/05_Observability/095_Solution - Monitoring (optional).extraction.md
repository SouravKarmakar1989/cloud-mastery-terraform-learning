# Extraction: certified-kubernetes-application-developer / 05_Observability / 095_Solution - Monitoring (optional)

---

## Entry 1
Type: Concept  

Content:
-: Okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Concept  

Content:
In this lab we get familiar with the, um, monitoring cluster components.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So, the first, um, question is we have deployed a few pods running workloads, so inspect them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Let's do a Kubectl pods command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
And we see that there are indeed three pods, elephant, lion and rabbit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And they have, they're all in, in a running state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So, let's go ahead and what we need to do is monitor the resources consumed by each of these pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
And, for that, we need to deploy the metric server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And, and, for this, uh, we have a Git-repo with the settings for the metric server, uh, that will work for our labs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So, we're just going to use that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
But, if you're, if you're trying this in your own environment or in, um, for a production environment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Warning/Pitfall  

Content:
So remember, do not use this for production use cases because there are changes that are in here and that are done just to make this work with this particular lab exercise.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
And just to make it easy for, for us to deploy it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Warning/Pitfall  

Content:
So do not use this for a production use case.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Always remember to refer to the official documentation on the metric server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
To, to deploy one, one in your environment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So let's wait for, okay, so this is cloned.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Implementation Step  

Content:
And if you look at this, you have you have the files here that are required to deploy the metric server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Let's go ahead.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Implementation Step  

Content:
Okay, so the next step is to deploy the metric server by creating this component.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
So we're just going to do a Kubectl create -F dot.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
And that creates all, all of the objects required to deploy the metric server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
Okay, let's go next.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Concept  

Content:
And at times, it might take a few minutes for the metric servers to start gathering and reporting data.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And so if you do Kubectl up node.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Yep, it seems to be working already.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So yes, that's, that's working now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So we can, we can proceed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 30
Type: Implementation Step  

Content:
The next question is to identify the node that consumes the most CPU.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So here you can see two nodes, and the CPU consumption of, of the two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So, node zero one has 57 millicores and the control plane consumes about 470 millicores.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Comparison  

Content:
And if you look at it, the percentage is just 1%, but,but still, you can see there's a difference between the two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
And of course that's because the control plane has all the control plane components running on it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Concept  

Content:
So to answer this question the most CPU consumption is by the control plane.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 36
Type: Concept  

Content:
So, let's select that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 37
Type: Implementation Step  

Content:
The next one is to identify the node that consumes the most memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Concept  

Content:
If you look at the memory consumption here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Again, we know we can see that the control plane consumes most memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So, The answer to this is control plane, again.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
Um, the next question is to identify the pod that consumes the most memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So, the pod this time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So you can get that by running the Kubectl top pod command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Concept  

Content:
And here you can see the memory consumption and the CPU consumption.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 45
Type: Concept  

Content:
If you look at the memory consumption you can see that it's rabbit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Concept  

Content:
Rabbit consumes the most memory.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Concept  

Content:
So that's um, the answer to this, is rabbit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
And the next question is to identify the pod that consumes the least CPU.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 49
Type: Concept  

Content:
So, here you can see it's lion.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
This consumes one millicore of CPU.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Best Practice  

Content:
So, select lion and that should be it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
So basically, that's a quick introduction to deploying the metrics server and also, just, using the commands to look at its reporting and identify basic information.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 54
Type: Concept  

Content:
Thank you.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 095_Solution - Monitoring (optional)
- File: 095_Solution - Monitoring (optional).txt
- Topic: Solution - Monitoring (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
