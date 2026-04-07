# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 082_(2025 Updates)Admission Controllers

---

## Entry 1
Type: Concept  

Content:
In this lecture we will learn about admission controllers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
So we've been running commands from our command line using the kubectl utility to perform various kinds of operations on our Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
And we know every time we send a request say to create a pod, the request goes to the API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Architecture  

Content:
And then the pod is created and the information is finally persisted in the etcd database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Architecture  

Content:
When the request hits the API server, we've learned that it goes through an authentication process, and this is usually done through certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
If the request was sent through kubectl, we know the kube config file has the certificates configured, and the authentication process is responsible for identifying the user who sent the request and making sure the user is valid.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
And then the request goes through an authorization process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Concept  

Content:
And this is when we check if the user has permission to perform that operation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
And we have learned that this is achieved through role based access controls.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Implementation Step  

Content:
So in this case, if the user was assigned this particular role of a developer, the user is allowed to list, get, create, update or delete pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Concept  

Content:
And so if the request that came in matched any of these conditions, in this case it does.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Implementation Step  

Content:
As the request is to create a pod it is allowed to go through.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Concept  

Content:
Otherwise it's rejected.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
So that's authorization with role based access control.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Implementation Step  

Content:
Now with role based access control, you could place in different kinds of restrictions, such as to allow or deny those with a particular role to say, create, list or delete different kinds of objects like pods, deployments or services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
We could even restrict access to specific resource names such as, say, a developer can only work on pods named blue or orange, or restrict access within a namespace alone.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Implementation Step  

Content:
Now, as you can see, most of these rules that you can create with role based access control is at the Kubernetes API level.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Concept  

Content:
And what user is allowed access to what kind of API operations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
And it does not go beyond that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Concept  

Content:
But what if you want to do more than just define what kind of access a user has to an object?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Warning/Pitfall  

Content:
For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Concept  

Content:
Only allow images from a specific internal registry, or to enforce that, we must never use the latest tag for any images.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Exam Tip  

Content:
Or say for example, you'd like to say if the container is running as the root user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Warning/Pitfall  

Content:
Then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So these are some of the things that you can't achieve with the existing role based access controls.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Concept  

Content:
And that is where admission controllers comes in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
Admission controllers help us implement better security measures to enforce how a cluster is used.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Implementation Step  

Content:
Apart from simply validating configuration, admission controllers can do a lot more, such as change the request itself or perform additional operations before the pod gets created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Exam Tip  

Content:
We will go over some examples in the upcoming slides.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Implementation Step  

Content:
There are a number of admission controllers that come pre-built with Kubernetes, such as always pull images that ensures that every time a pod is created, the images are always pulled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Architecture  

Content:
The default storage class admission controller that observes the creation of PVCs and automatically adds the default storage class to them if one is not specified, the event rate limit admission controller can help set a limit on the requests with the the API server can handle at a time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Architecture  

Content:
To prevent the API server from flooding with requests, the namespace exists.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Warning/Pitfall  

Content:
Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Exam Tip  

Content:
So let's take that as an example and look at it in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
The namespace exists.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
Admission controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
Say we want to create a pod in a namespace called blue that doesn't exist.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Troubleshooting  

Content:
If I run this command, it would throw an error that says the namespace blue is not found.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Implementation Step  

Content:
What's happening here is that my request gets authenticated, then authorized, and it then goes through the admission controllers, The namespace exists.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
That mission controller handles the request and checks if the namespace is available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Concept  

Content:
If it is not, the request is rejected.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Concept  

Content:
The namespace exists.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Concept  

Content:
Is a built in admission controller that is enabled by default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
There is another admission controller that is not enabled by default, and that is called as the namespace auto provision admission controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 45
Type: Implementation Step  

Content:
This will automatically create the namespace if it does not exist.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
We will see how it can be enabled in a minute.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Architecture  

Content:
First, to see a list of admission controllers enabled by default, run the kube API server command and grep for enable admission plugins.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Now here you will see a list of admission controllers that are enabled by default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
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
The ones that are highlighted in green.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 50
Type: Implementation Step  

Content:
Note that if you're running this in a cube ADM based setup, then you must run this command within the cube API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Implementation Step  

Content:
Server control plane pod using the kubectl exec command first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 52
Type: Concept  

Content:
Like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Architecture  

Content:
To add an admission controller, update the enable admission plugins flag on the kube API server service to add the new admission controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 54
Type: Architecture  

Content:
So if you're in a kube EDM based setup, then update the flag within the kube API server manifest file as shown here on the right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Architecture  

Content:
So the one on the left is if you're updating the kube API server service, and the one on the right is if the API server is running as a pod in a cube based setup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
Similarly, to disable admission controller plugins, you could use the disable admission plugins flag.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Implementation Step  

Content:
Once updated, the next time we run the command to provision a pod in a namespace that does not exist yet, the request goes through authentication, then authorization, and then the namespace auto provision controller, at which point it realizes that the namespace doesn't exist, so it creates namespace automatically and the request goes through successfully to create the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
If you list the namespaces now, you'll see that the namespace is automatically created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Exam Tip  

Content:
So that's one example of how an admission controller works.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 60
Type: Concept  

Content:
It can not only validate and reject requests from users, it can also perform operations in the backend or change the request itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Note that the namespace, auto provision, and namespace exists.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 62
Type: Warning/Pitfall  

Content:
Admission controllers are deprecated and is now replaced by the namespace lifecycle admission controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
The namespace lifecycle admission controller will make sure that requests to a non-existent namespace is rejected, and that the default namespaces such as default kube system and kube public cannot be deleted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
Well, that's it for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 65
Type: Implementation Step  

Content:
Head over to the labs and practice our working with admission controllers, and I will see you in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 082_(2025 Updates)Admission Controllers
- File: 082_(2025 Updates)Admission Controllers.txt
- Topic: (2025 Updates)Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
