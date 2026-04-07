# Extraction: certified-kubernetes-application-developer / 05_Observability / 087_Liveness Probes

---

## Entry 1
Type: Concept  

Content:
-: Hello and welcome to this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
My name is Mumshad Mannambeth, and we are learning the certified Kubernetes application developers course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
In this lecture, we will talk about liveness probes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Let's start from the basics.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
You run an image of NGINX using Docker, and it starts to serve users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
For some reason, the web server crashes, and the NGINX process exits.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
The container exits as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
And you can see the status of the container when you run the Docker ps command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
Since Docker is not an orchestration engine, the container continues to stay dead and deny services to users until you manually create a new container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Enter Kubernetes orchestration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
You run the same web application with Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Every time the application crashes, Kubernetes makes an attempt to restart the container to restore service to users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
You can see the count of restarts increase in the output of kube control, get Pods command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Now this works just fine.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
However, what if the application is not really working, but the container continues to stay alive?

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Exam Tip  

Content:
Say for example, due to a bug in the code, the application is stuck in an infinite loop.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
As far as Kubernetes is concerned, the container is up so the application is assumed to be up.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
But the users, hitting the container, are not served.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
In that case, the container needs to be restarted or destroyed, and a new container is to be brought up.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
That is where the liveness probe can help us.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
A liveness probe can be configured on the container to periodically test whether the application within the container is actually healthy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Troubleshooting  

Content:
If the test fails, the container is considered unhealthy and is destroyed and recreated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
But again, as a developer, you get to define what it means for an application to be healthy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Architecture  

Content:
In case of a web application, it could be when the API server is up and running.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
In case of database, you may test to see if a particular TCP Socket is listening, or you may simply execute a command to perform a test.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
The liveness probe is configured in the pod definition file as you did with the readiness probe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Except here you use liveness instead of readiness.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Similar to readiness probe, you have a SCTP get option for APIs, TCP Socket for ports, and exec for commands.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Troubleshooting  

Content:
As well as additional options like initial delay before the test is run, periodSeconds to define the frequency, and success and failure thresholds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 31
Type: Concept  

Content:
Head over and practice what you learn in the coding exercises section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Troubleshooting  

Content:
We have some fun and challenging exercises where you will be required to configure probes as well as troubleshoot and fix issues with existing probes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
See you in the next lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 087_Liveness Probes
- File: 087_Liveness Probes.txt
- Topic: Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
