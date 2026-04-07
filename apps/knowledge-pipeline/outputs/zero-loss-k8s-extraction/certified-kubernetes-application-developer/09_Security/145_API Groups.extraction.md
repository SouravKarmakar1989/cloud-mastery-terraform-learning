# Extraction: certified-kubernetes-application-developer / 09_Security / 145_API Groups

---

## Entry 1
Type: Concept  

Content:
Before we head into authorization, it is necessary to understand about API groups in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
But first, what is the Kubernetes API?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
We learned about the kube API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
Whatever operations we have done so far with the cluster, we've been interacting with the API server one way or the other, either through the kube control utility or directly via Rest.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Concept  

Content:
Say we want to check the version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Architecture  

Content:
We can access the API server at the master nodes address, followed by the port, which is 6443 by default, and the API version it returns the version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Similarly, to get the list of pods, you would access the url api slash v1 slash pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
Our focus in this lecture is about these API paths, the version and the API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Exam Tip  

Content:
The Kubernetes API is grouped into multiple such groups based on their purpose, such as one for APIs, one for health, one for metrics and logs, etc. the version API is for viewing the version of the cluster as we just saw.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
The metrics and health API are used to monitor the health of the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
The logs are used for integrating with third party logging applications.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
In this video, we will focus on the APIs responsible for the cluster functionality.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
These APIs are categorized into two the core group and the named group.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
The core group is where all core functionality exists, such as namespaces, pods, replication controllers, events and points, nodes, bindings, persistent volumes, persistent volume claims, Configmaps secrets, services, etc. the named group APIs are more organized and going forward.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
All the newer features are going to be made available through these named groups.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
It has groups under it for apps, extensions, networking, storage, authentication, authorization, etc. shown here are just a few.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
Within apps you have. deployments, replica sets, stateful sets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
Within networking you have network policies, certificates, have the certificate signing request that we talked about earlier in this section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
So the ones at the top are API groups and the ones at the bottom are resources in those groups.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
Each resource in this has a set of actions associated with them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Implementation Step  

Content:
Things that you can do with these resources such as list the deployments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
Get information about one of these deployments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Implementation Step  

Content:
Create a deployment, delete a deployment, update a deployment watch a deployment, etc. these are known as verbs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
The Kubernetes API reference page can tell you what the API group is for each object.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 25
Type: Implementation Step  

Content:
Select an object and the first section in the documentation page shows its group details.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
We want core is just v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
You can also view these on your Kubernetes cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Architecture  

Content:
Access your kube API server at port 643 without any path, and it will list you the available API groups, and then within the named API groups, it returns all the supported resource groups.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Concept  

Content:
A quick note on accessing the cluster API like that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
If you were to access the API directly through curl as shown here, then you will not be allowed access except for certain APIs like version, as you have not specified any authentication mechanisms.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Implementation Step  

Content:
So you have to authenticate to the API using your certificate files by passing them in the command line.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Concept  

Content:
An alternate option is to start a kube control proxy client.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Concept  

Content:
The kube control proxy command launches a proxy service locally on port 8001, and uses credentials and certificates from your kubeconfig file to access the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Warning/Pitfall  

Content:
That way you don't have to specify those in the curl command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 36
Type: Architecture  

Content:
Now you can access the kube control proxy service at port 8001, and the proxy will use the credentials from kube config file to forward your request to the kube API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
This will list all available APIs at root.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
So here are two terms that kind of sound the same.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Concept  

Content:
The kube proxy and kube control proxy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
Well they are not the same.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
We discussed about kube proxy earlier in this course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
It is used to enable connectivity between pods and services across different nodes in the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
We discussed about kube proxy in much more detail later in this course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Architecture  

Content:
Whereas kube control proxy is an HTTP proxy service created by kube control utility to access the kube API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
So what to take away from this?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
All resources in Kubernetes are grouped into different API groups.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
At the top level you have core API group and named API group.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Concept  

Content:
Under the named API group you have one for each section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
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
Under this API groups, you have the different resources and each resource has a set of associated actions known as verbs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
In the next section on authorization, we can see how we use these to allow or deny access to users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 52
Type: Implementation Step  

Content:
I will see you in the next.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 145_API Groups
- File: 145_API Groups.txt
- Topic: API Groups
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
