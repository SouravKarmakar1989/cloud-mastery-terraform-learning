# Extraction: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 115_Multi Container Pods

---

## Entry 1
Type: Concept  

Content:
In this lecture we will talk about Multi-container pods in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
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
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
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
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
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
However, at times you may need two services to work together, such as a web server with the main app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
You need one web server per each app instance paired together.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Warning/Pitfall  

Content:
You don't want to merge and bloat the code of the two services, as each of them target different features, and you still like them to be developed and deployed separately.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
You only need the two functionality to work together.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
You need one web server per main app instance paired together so they can scale up and down together.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Implementation Step  

Content:
And that is why you have multi-container pods that share the same lifecycle, which means they are created together and destroyed together.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Concept  

Content:
They share the same network space, which means they can refer to each other as localhost.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
And they have access to the same storage volumes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Warning/Pitfall  

Content:
This way you do not have to establish volume sharing or services between the pods to enable communication between them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
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
So to create a multi-container pod, add the new container information to the pod definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
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
Now remember the container section under the spec section in a Pod definition file is an array.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Exam Tip  

Content:
And the reason it is an array is to allow multiple containers in a single pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Concept  

Content:
So now I've added a another container with the name main app and the image main app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So in this case we add a new container named a web app as container one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
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
And then we have another container named as main app as container two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Exam Tip  

Content:
This is a very simple example.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Exam Tip  

Content:
We will look at more realistic examples later in this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 115_Multi Container Pods
- File: 115_Multi Container Pods.txt
- Topic: Multi Container Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
