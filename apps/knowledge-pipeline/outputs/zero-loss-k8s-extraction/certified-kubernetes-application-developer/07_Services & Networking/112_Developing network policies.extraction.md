# Extraction: certified-kubernetes-application-developer / 07_Services & Networking / 112_Developing network policies

---

## Entry 1
Type: Concept  

Content:
In this lecture, we will take a look at network policies in more detail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
So here we have the same web API and database pods that we discussed about in the previous lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Implementation Step  

Content:
So first let's be very clear with our requirements.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
Our goal is to protect the database pod so that it does not allow access from any other pod except the API pod, and only on port 3306.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
So let's assume that we are not concerned about the web pod or the API pod for those pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
We are okay for all traffic to go in and out from anywhere.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
However, we want to protect the database pod and only allow traffic from the API pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
So let's get the other things out of our way so we can focus exactly on the required tasks.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Warning/Pitfall  

Content:
So we don't need to worry about the web pod on or its port, as we don't want to allow any traffic from any other sources other than the API port.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So let's get rid of that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Warning/Pitfall  

Content:
We can also forget about the port on the API pod to which the web server connects, as we don't care about that either.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
As we discussed, by default, Kubernetes allows all traffic from all ports to all destinations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
So as the first step, we want to block out everything going in and out of the database pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Implementation Step  

Content:
So we create a network policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
We will call it DB policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
And the first step is to associate this network policy with the pod that we want to protect.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Concept  

Content:
And we do that using labels and selectors.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
So we do that by adding a pod selector field with the match labels option, and by specifying the label on the DB pod, which happens to be set to role DB, and that associates the network policy with the database pod and blocks out all traffic.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
However, we need the API pod to be able to query the database on port 3006.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
So that's what we are going to configure next.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Best Practice  

Content:
First, we need to figure out what type of policies should be defined on this network policy object to meet our requirements.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
So there are two types of policies that we discussed in the previous lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Concept  

Content:
We have ingress and egress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
So do we need ingress or egress here or both.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 25
Type: Concept  

Content:
So you always look at this from the DB ports perspective from the DB pods perspective.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
We want to allow incoming traffic from the API pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So that is incoming.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
So that is ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
The API pod makes database queries and the database pods returns the results.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
So what about the results?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
Do you need a separate rule for the results to go back to the API pod? know because once you allow incoming traffic, the response or reply to that traffic is allowed back automatically.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Warning/Pitfall  

Content:
We don't need a separate rule for that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
So in this case, all we need is an ingress rule to allow traffic from the API pod to the database pod, and that would allow the API pod to connect to the database and run queries, and also retrieve the result of the queries.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Implementation Step  

Content:
So when deciding on what type of rule is to be created, you only need to be concerned about the direction in which the request originates and which is denoted by the straight line here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Warning/Pitfall  

Content:
And you don't need to worry about the response, which is denoted by solid line here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So a single network policy can have an ingress type of rule, an egress type of rule, or both.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
In cases where a pod wants to allow incoming connections as well as wants to make external calls.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
So for now, our use case only requires ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
Policy types.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Implementation Step  

Content:
Now that we have decided on the type of policy, the next step is to define the specifics of that policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Exam Tip  

Content:
If it's ingress, we create a section called ingress within which we can specify multiple rules.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Each rule has a from and ports fields.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
The from field defines the source of traffic that is allowed to pass through to the database pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And here we would use a pod selector and provide the labels of the API pod like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
The ports field defines what port on the database pod is the traffic allowed to go to.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
In this case it's 3306 with the TCP protocol.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
And that's it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Implementation Step  

Content:
This would create a policy that would block all traffic to the pod, except for traffic from the API pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Exam Tip  

Content:
Now, what if there are multiple API pods in the cluster with the same labels, but in different namespaces.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 50
Type: Concept  

Content:
So say here we have different namespaces for dev test and prod environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
And we have the API pod with the same labels in each of these environments.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
The current policy would allow any pod in any namespace with matching labels to reach the database pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Concept  

Content:
We only want to allow the API pod in the prod namespace to reach the database pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 54
Type: Concept  

Content:
So how do we do that?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 55
Type: Concept  

Content:
For this, we add a new selector called as the namespace selector property along with the pod selector property.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Implementation Step  

Content:
Under this, we use match labels again to provide a label set on the namespace, and you must remember that you must have this label set on the namespace first for this to work.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So that's what the namespace selector does.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Concept  

Content:
It helps in defining from what namespace traffic is allowed to reach the database pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Concept  

Content:
Now what if you only have the namespace selector and not the pod selector like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
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
In this case, all pods within the specified namespace will be allowed to reach the database pod, such as the web pod that we had earlier, but pods from outside this namespace won't be allowed to go through.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Let's look at another use case.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 62
Type: Concept  

Content:
Say we have a backup server somewhere outside of the Kubernetes cluster, and we want to allow this server to connect to the database pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
Now, since this backup server is not deployed in our Kubernetes cluster, the pod selector and namespace selector fields that we use to define traffic from won't work because it's not a pod in the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 64
Type: Concept  

Content:
However, we know the IP address of the backup server, and that happens to be 192.168.5.1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 65
Type: Implementation Step  

Content:
We could configure a network policy to allow traffic originating from certain IP addresses.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Concept  

Content:
For this we add a new type of from definition known as the IP block definition.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
IP block allows you to specify a range of IP addresses from which you could allow traffic to hit the database pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 68
Type: Concept  

Content:
So those are three supported selectors under the from section and ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
And these are also applicable to the two section in egress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Concept  

Content:
And we'll see that in a few minutes we have pod selector to select pods by labels.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
We have namespace selector to select namespaces by labels.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 72
Type: Concept  

Content:
And we have the IP block selector to select IP address ranges.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Concept  

Content:
These can be passed in separately as individual rules or together as part of a single rule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Exam Tip  

Content:
In this example, under the from section we have two elements.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 75
Type: Concept  

Content:
So these are two rules.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 76
Type: Implementation Step  

Content:
The first rule has the pod selector and the namespace selector together, and the second rule has the IP block selector.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 77
Type: Concept  

Content:
So this works like an Or operation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Concept  

Content:
Traffic from sources meeting either of these criteria are allowed to pass through.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 79
Type: Implementation Step  

Content:
However, within the first rule we have two selectors.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 80
Type: Concept  

Content:
Part of it that would mean traffic from sources must meet both of these criteria to pass through.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 81
Type: Concept  

Content:
So they have to be originating from pods with matching labels of API pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
And those pods must be in the prod namespace so it works like an and operation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 83
Type: Concept  

Content:
Now what if we were to separate them by adding a dash before the namespace selector?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
Like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 85
Type: Concept  

Content:
Now they are two separate rules.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 86
Type: Implementation Step  

Content:
So this would mean that traffic matching the first rule is allowed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 87
Type: Concept  

Content:
That is, from any pod matching the label API pod in the same namespace and traffic matching.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 88
Type: Concept  

Content:
The second rule is allowed, which is from any pod within the pod namespace that is either from the pod web and of course, along with the backup server, as we have the IP block specification as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
So now we have three separate rules, and almost traffic from anywhere is allowed to the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
So a small change like that can have a big impact.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 91
Type: Concept  

Content:
So it's important to understand how you could put together these rules based on your requirements.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 92
Type: Concept  

Content:
So now let's get rid of all of that and go back to a basic set of rules.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 93
Type: Concept  

Content:
And we'll now look at egress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 94
Type: Exam Tip  

Content:
So say for example instead of the backup server initiating a backup, say we have an agent on the DB pod that pushes backup to the backup server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 95
Type: Concept  

Content:
In that case, the traffic is originating from the database pod to an external backup server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 96
Type: Concept  

Content:
For this, we need to have egress rule defined.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 97
Type: Implementation Step  

Content:
So we first add egress to the policy types.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 98
Type: Implementation Step  

Content:
And then we add a new egress section to define the specifics of the policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 99
Type: Concept  

Content:
So instead of a from we now have two under egress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 100
Type: Comparison  

Content:
So that's the only difference.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 101
Type: Concept  

Content:
Under two we could use any of the selectors such as a pod, a namespace or an IP block selector.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 102
Type: Concept  

Content:
And in this case, since the database server is external, we use IP block selector and provide the Cidr block for the server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 103
Type: Concept  

Content:
The port to which the requests are to be sent to is 80.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 104
Type: Concept  

Content:
So we specify 80 as the port.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 105
Type: Concept  

Content:
So this rule allows traffic originating from the database pod to an external backup server at the specified address.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
Well that's it for now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 107
Type: Concept  

Content:
About network policies and roles.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
Head over to the lab and practice working with network policies yourself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 109
Type: Implementation Step  

Content:
I will see you in the next one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 112_Developing network policies
- File: 112_Developing network policies.txt
- Topic: Developing network policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
