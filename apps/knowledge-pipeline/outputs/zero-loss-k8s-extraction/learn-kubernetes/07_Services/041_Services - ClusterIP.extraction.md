# Extraction: learn-kubernetes / 07_Services / 041_Services - ClusterIP

---

## Entry 1
Type: Concept  

Content:
In this lecture we will discuss about the Kubernetes Service cluster IP.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 2
Type: Concept  

Content:
A full stack web application typically has different kinds of pods hosting different parts of an application.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 3
Type: Concept  

Content:
You may have a number of pods running a front end web server, another set of pods running a back end server, a set of pods running a key value store like Redis, and another set of pods.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 4
Type: Concept  

Content:
Maybe running a persistent database like MySQL.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 5
Type: Concept  

Content:
The web front end server needs to communicate to the back end servers, and the back end servers need to communicate to the database as well as the Redis services, etc..

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So what is the right way to establish connectivity between these services or tiers of my application?

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 7
Type: Concept  

Content:
The pods all have an IP address assigned to them, as we can see on the screen, but these IPS as we know, are not static.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 8
Type: Implementation Step  

Content:
These pods can go down any time, and new pods are created all the time.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 9
Type: Concept  

Content:
And so you cannot rely on these IP addresses for internal communication between the application.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 10
Type: Implementation Step  

Content:
Also, what if the first front end pod at ten 244 .0.3 need to connect to a back end backend service.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 11
Type: Concept  

Content:
Which of the three will it go to?

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 12
Type: Concept  

Content:
And who makes that decision?

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 13
Type: Concept  

Content:
A Kubernetes service can help us group the pods together, and provide a single interface to access the pods in a group.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 14
Type: Exam Tip  

Content:
For example, a service created for the backend pods will help group all the backend pods together and provide a single interface for other pods to access this service.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 15
Type: Concept  

Content:
The requests are forwarded to one of the pods under the service randomly.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
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
Similarly, create additional services for Redis and allow the backend pods to access the Redis systems through the service.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 17
Type: Implementation Step  

Content:
This enables us to easily and effectively deploy a microservices based application on Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 18
Type: Concept  

Content:
Each layer can now scale or move as required without impacting communication between the various services.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 19
Type: Best Practice  

Content:
Each service gets an IP and name assigned to it inside the cluster, and that is the name that should be used by other pods to access the service.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
This type of service is known as cluster IP.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 21
Type: Implementation Step  

Content:
To create such a service, as always, use a definition file in the service definition file.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 22
Type: Implementation Step  

Content:
First use the default template which has API version kind metadata and spec.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 23
Type: Concept  

Content:
The API version is v1, kind is service and we will give a name to our service.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 24
Type: Concept  

Content:
We will call it backend.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 25
Type: Concept  

Content:
Under specification we have type and ports.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 26
Type: Concept  

Content:
The type is cluster IP.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 27
Type: Concept  

Content:
In fact cluster IP is the default type.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 28
Type: Concept  

Content:
So even if you didn't specify it, it will automatically assume the type to be cluster IP.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 29
Type: Concept  

Content:
Under ports we have a target port and port.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 30
Type: Concept  

Content:
The target port is the port where the backend is exposed, which in this case is 80, and the port is where the service is exposed, which is 80 as well.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
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
To link the service to a set of ports, we use selector.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 32
Type: Best Practice  

Content:
We will refer to the pod definition file and copy the labels from it and move it under selector, and that should be it.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 33
Type: Implementation Step  

Content:
We can now create the service using the kube control create command and then check its status using the Kube control Get Services command.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 34
Type: Concept  

Content:
The service can be accessed by other pods using the cluster IP or the service name.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 041_Services - ClusterIP
- File: 041_Services - ClusterIP.txt
- Topic: Services - ClusterIP
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
