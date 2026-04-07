# Extraction: certified-kubernetes-application-developer / 04_Multi-Container Pods / 080_Multi-Container Pods

---

## Entry 1
Type: Concept  

Content:
In this lecture we will talk about Multi-container pods in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Implementation Step  

Content:
The idea of decoupling a large monolithic application into subcomponents known as microservices enable us to develop and deploy a set of independent, small and reusable code.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Architecture  

Content:
This architecture then helps us scale up and down, as well as modify each service as required, as opposed to modifying the entire application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Concept  

Content:
However, at times you may need two services to work together, such as a web server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
With the main app, you need one web server per each app instance paired together.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Warning/Pitfall  

Content:
You don't want to merge and bloat the code of the two services, as each of them target different features and you still like them to be developed and deployed separately, you only need the two functionality to work together.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
You need one web server per main app instance paired together so they can scale up and down together.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Implementation Step  

Content:
And that is why you have multi-container pods that share the same lifecycle, which means they are created together and destroyed together.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Concept  

Content:
They share the same network space, which means they can refer to each other as localhost, and they have access to the same storage volumes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Warning/Pitfall  

Content:
This way you do not have to establish volume sharing or services between the pods to enable communication between them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Implementation Step  

Content:
So to create a multi-container pod, add the new container information to the pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Concept  

Content:
Now remember the container section under the spec section in a Pod definition file is an array.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Exam Tip  

Content:
And the reason it is an array is to allow multiple containers in a single pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Concept  

Content:
So now I've added another container with the name main app and the image main app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So in this case we add a new container named a web app as container one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Implementation Step  

Content:
And then we have another container named as main app as container two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Exam Tip  

Content:
This is a very simple example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Exam Tip  

Content:
We will look at more realistic examples later in this course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 04_Multi-Container Pods
- Lecture: 080_Multi-Container Pods
- File: 080_Multi-Container Pods.txt
- Topic: Multi-Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
