# Extraction: certified-kubernetes-application-developer / 09_Security / 138_Kubernetes Security Primitives

---

## Entry 1
Type: Concept  

Content:
In this lecture we look at the security primitives in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
Kubernetes being the go to platform for hosting production grid applications, security is of prime concern.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
In this lecture we look at the various security primitives in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
At a high level, before diving deeper into those in the upcoming lectures, let's begin with the hosts that form the cluster itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
Of course, all access to these hosts must be secured root access disabled, password based authentication disabled, and only SSH key based authentication to be made available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Concept  

Content:
And of course, any other measures you need to take to secure your physical or virtual infrastructure that hosts Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Concept  

Content:
Of course, if that is compromised, everything is compromised.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
Our focus in this lecture is more on Kubernetes related security.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
What are the risks and what measures do you need to take to secure the cluster?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Architecture  

Content:
As we have seen already, the kube API server is at the center of all operations within Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
We interact with it through the kube control utility or by accessing the API directly.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
And through that you can perform almost any operation on the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Architecture  

Content:
So that's the first line of defense controlling access to the API server itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
We need to make two types of decisions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
Who can access the cluster and what can they do.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Architecture  

Content:
Who can access the API server is defined by the authentication mechanisms.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Architecture  

Content:
There are different ways that you can authenticate to the API server certificates, or even integration with external authentication providers like Ldap.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
Finally, for machines we create service accounts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
We will look at these in more detail in the upcoming lectures.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Once they gain access to the cluster, what can they do is defined by authorization mechanisms.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Authorization is implemented using role based access controls, where users are associated to groups with specific permissions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
In addition, there are other authorization modules like the attribute based access Control node, Authorizers, webhooks, etc..

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Again, we look at these in more detail in the upcoming lectures.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Architecture  

Content:
All communication with the cluster between the various components such as the etcd cluster, the kube controller, manager, scheduler, API server, as well as those running on the worker nodes such as the Kubelet and the kube proxy, is secured using TLS encryption.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
We have a section entirely for this, where we discuss and practice how to set up certificates between the various components.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
What about communication between applications within the cluster?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
By default, all pods can access all other pods within the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
Now you can restrict access between them using network policies.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
We will look at how exactly that is done later in the network policies section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
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
So that was a high level overview of the various security primitives in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Concept  

Content:
We will now look at these in much more detail going forward.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 138_Kubernetes Security Primitives
- File: 138_Kubernetes Security Primitives.txt
- Topic: Kubernetes Security Primitives
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
