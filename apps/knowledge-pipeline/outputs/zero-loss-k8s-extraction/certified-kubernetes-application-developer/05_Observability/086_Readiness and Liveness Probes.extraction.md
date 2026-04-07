# Extraction: certified-kubernetes-application-developer / 05_Observability / 086_Readiness and Liveness Probes

---

## Entry 1
Type: Concept  

Content:
-: Hello, and welcome to this section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
In this section, we learn about observability in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
We will discuss about readiness and liveness probes, logging and monitoring concepts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Let us start with readiness probes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
We discuss about pod lifecycle in detail in another lecture, however, as a prerequisite for this lecture, we will quickly recap a few different stages in the life cycle of a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
A pod has a pod status, and some conditions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
The pod status tells us where the pod is in its lifecycle.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
When a pod is first created, it is in a pending state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Architecture  

Content:
This is when the scheduler tries to figure out where to place the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Architecture  

Content:
If the scheduler cannot find the node to place the pod, it remains in a pending state.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
To find out why it's stuck in a pending state, run the kubectl describe pod command and it will tell you exactly why.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Once the pod is scheduled, it goes into a container creating status where the images required for the application are pulled and the container starts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Once all the containers in a pod starts, it goes into a running state where it continues to be until the program completes successfully or is terminated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
You can see the pod status in the output of the kubectl get pods command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So remember, at any point in time, the pod status can only be one of these values, and only gives us a high-level summary of a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
However, at times, you may want additional information.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Conditions complement pod status.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
It is an array of true or false values that tell us the state of a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
When a pod is scheduled on a node, the pod scheduled condition is set to true.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
When the pod is initialized, its value is set to true.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Exam Tip  

Content:
We know that a pod has multiple containers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
When all the containers in the pod are ready, the container's ready condition is set to true.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And finally, the pod itself is considered to be ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
To see the state of pod conditions, run the kubectl describe pod command and look for the conditions section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
You can also see the ready state of the pod in the output of the kubectl get pods command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
And that is the condition we are interested in for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
The ready conditions indicate that the application inside the pod is running and is ready to accept user traffic.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
What does that really mean?

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
The containers could be running different kinds of applications in them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
It could be a simple script that performs the job.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
It could be a database service or a large web server serving front end users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
The script may take a few milliseconds to get ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
The database service may take a few seconds to power up.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Some web servers could take several minutes to warm up.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
If you try to run an instance of a Jenkins server, you will notice that it takes about 10 to 15 seconds for the server to initialize before a user can access the web UI.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Even after the web UI is initialized, it takes a few seconds for the server to warm up and be ready to serve users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
During this wait period, if you look at the state of the pod, it continues to indicate that the pod is ready, which is not very true.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So why is that happening and how does Kubernetes know whether the application inside the container is actually running or not?

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
But before we get into that discussion, why does it matter if the state is reported incorrectly?

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
Let's look at a simple scenario where you create a pod and expose it to external users using a service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
The service will route traffic to the pod immediately.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
The service relies on the pod's ready condition to route traffic.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
By default, Kubernetes assumes that as soon as the container is created, it is ready to serve user traffic.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So it sets the value after ready condition for each container to true.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
But if the application within the container took longer to get ready, the service is unaware of it and sends traffic through as a container is already in a ready state, causing users to hit a pod that isn't yet running a live application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
What we need here is a way to tie the ready condition to the actual state of the application inside the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
As a developer of the application, you know better what it means for the application to be ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
There are different ways that you can define if an application inside a container is actually ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
You can set up different kinds of tests or probes, which is the appropriate term.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Architecture  

Content:
In case of a web application, it could be when the API server is up and running.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Architecture  

Content:
So you could run an HTTP test to see if the API server responds.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
In case of a database, you may test to see if a particular TCP socket is listening.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Or you may simply execute a command within the container to run a custom script that would exit successfully if the application is ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
So how do you configure that test?

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
In the pod definition file, add a new field called readiness probe and use the HTTP get option.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
Specify the port and the ready API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
Now when the container is created, Kubernetes does not immediately set the ready condition on the container to true.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Instead, it performs a test to see if the API responds positively.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
Until then, the service does not forward any traffic to the pod as it sees that the pod is not ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
There are different ways a probe can be configured.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
For HTTP, use the HTTP get option with the path and the port.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
For TCP, use the TCP socket option with the port.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
And for executing a command, specify the exec option with the command and options in an array format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
There are some additional options as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
If you know that your application will take a minimum of say 10 seconds to warm up, you can add an additional delay to the probe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
If you'd like to specify how often to probe, you can do that using the period seconds option.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
By default, if the application is not not ready after three attempts, the probe will stop.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Troubleshooting  

Content:
If you'd like to make more attempts, use the failure threshold option.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
We will look through more options in the documentation walkthrough.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
Finally, let us look at how readiness probes are useful in a multi-pod setup.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Exam Tip  

Content:
Say you have a replica set or deployment with multiple pods and a service serving traffic to all the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
There are two pods already serving users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
Say you were to add an additional pod and let's say the pod takes a minute to warm up, without the readiness probe configured correctly, the service would immediately start routing traffic to the new pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
That will result in service disruption to at least some of the users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
Instead, if the pods were configured with the correct readiness probe, the service will continue to serve traffic only to the older pods and wait until the new pod is ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
Once ready, the traffic will be routed to the new pod as well, ensuring no users are affected.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 78
Type: Concept  

Content:
Head over and practice what you learned in the coding exercises section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 05_Observability
- Lecture: 086_Readiness and Liveness Probes
- File: 086_Readiness and Liveness Probes.txt
- Topic: Readiness and Liveness Probes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
