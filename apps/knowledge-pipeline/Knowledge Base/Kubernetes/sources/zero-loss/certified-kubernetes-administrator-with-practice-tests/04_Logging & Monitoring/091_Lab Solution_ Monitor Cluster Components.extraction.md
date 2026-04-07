# Extraction: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 091_Lab Solution_ Monitor Cluster Components

---

## Entry 1
Type: Concept  

Content:
-: Okay, In this lab we get familiar with monitoring cluster components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So the first question is we have deployed a few pods running workloads so inspect them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Let's do kubectl get pods command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And we see that there are indeed three pods, elephant, lion, and rabbit, and they're all in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So let's go ahead and what we need to do is monitor the resources consumed by each of these pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
And for that we need to deploy the metric server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
And for this, we have a get repo with the settings for the metric server that will work for our labs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So we're just going to use that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Warning/Pitfall  

Content:
But if you're trying this in your own environment or for a production environment, so remember do not use this for production use-cases because there are changes that are in here that are done just to make this work with this particular lab exercise and just to make it easy for us to deploy it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Warning/Pitfall  

Content:
So do not use this for a production use-case.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Always remember to refer to the official recommendation on the metric server to deploy one in your environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So let's wait for, okay, so this is cloned.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Implementation Step  

Content:
And if you look at this, you have the files here that are required to deploy the metric server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Let's go ahead.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 16
Type: Implementation Step  

Content:
So the next step is to deploy the metric server by creating these components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
So we're just going to do a kubectl create-f., that creates all of the objects required to deploy the metric server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
Okay, let's go next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Concept  

Content:
And at times it might take a few minutes for the metric servers to start gathering and reporting data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And so if you do a kubectl top node, yeah, it seems to be working already.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So yes, that's working now so we can proceed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
Okay, the next question is to identify the node that consumes the most CPU.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So here you can see two nodes and the CPU consumption of the two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So node 01 has 57 milli cores and the control plane consumes about 470 milli cores.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Comparison  

Content:
And if you look at it the percentage is just 1%, but still you can see there's a difference between the two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
And of course that's because the control plane has all the control plane components running on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Concept  

Content:
So to answer this question the most CPU consumption is by the control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Concept  

Content:
So let's select that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 29
Type: Implementation Step  

Content:
The next one is to identify the node that consumes the most memory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Concept  

Content:
If you look at the memory consumption here, again, we know we can see that the control plane consumes most memory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So answer to this is control plane again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
The next question is to identify the pod that consumes the most memory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So the pod this time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So you can get that by running the kubectl top pod command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
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
And here you can see the memory consumption and the CPU consumption.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
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
If you look at the memory consumption you can see that it's rabbit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 37
Type: Concept  

Content:
Rabbit consumes the most memory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
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
So that's the answer to this is rabbit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
And the next question is to identify the pod that consumes the least CPU.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Concept  

Content:
So here you can see it's lion.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Best Practice  

Content:
This consumes one milli core of CPU so select lion and that should be it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
So basically that's a quick introduction to deploying the metric server and also just using the commands to look at its reporting and identify basic information.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
All right, thank you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 091_Lab Solution_ Monitor Cluster Components
- File: 091_Lab Solution_ Monitor Cluster Components.txt
- Topic: Lab Solution_ Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
