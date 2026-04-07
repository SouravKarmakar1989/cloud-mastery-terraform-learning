# Extraction: certified-kubernetes-application-developer / 07_Services & Networking / 111_Network Policies

---

## Entry 1
Type: Implementation Step  

Content:
So let us first get our networking and security basics right.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
And I'm sorry if this is too basic, but I just wanted to spend a minute on this to make sure we're all on the same page.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Exam Tip  

Content:
Before we begin, we will start with a simple example of a traffic flowing through a web app and database server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So you have a web server serving front end to users and app server serving back end API's and a database server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
The user sends in a request to the web server at port 80.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
The web server then sends a request to the API server at port 5000.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Architecture  

Content:
In the backend, the API server then fetches data from the database server at port 3306, and then sends the data back to the user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
A very simple setup.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
So there are two types of traffic here ingress and egress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Exam Tip  

Content:
For example, for a web server, the incoming traffic from the users is an ingress traffic and the outgoing request to the app server is egress traffic and that is denoted by the straight arrow.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
When you define ingress and egress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
Remember you're only looking at the direction in which the traffic originated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Warning/Pitfall  

Content:
The response back to the user, denoted by the dotted lines, do not really matter.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Architecture  

Content:
Similarly, in case of the back end API server, it receives ingress traffic from the web server on port 5000 and has egress traffic to port 3006 to the database server, and from the database servers perspective, it receives ingress traffic on port 3006 from the API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Architecture  

Content:
If we were to list the rules required to get this working, we would have an ingress rule that is required to accept HTTP traffic on port 80 on the web server and egress rule to allow traffic from the web server to port 5000 on the API server, and ingress rule to accept traffic on port 5000 on the API server and then egress rule to allow traffic to port 3306 on the database server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
And finally, an ingress rule on the database server to accept traffic on port 3306.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
So that's the basic of traffic flow and rules.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
Let us now look at network security in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
So we have a cluster with a set of nodes hosting a set of pods and services.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
Each node has an IP address and so does each pod as well as service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Concept  

Content:
One of the prerequisite for networking in Kubernetes is whatever solution you implement.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Best Practice  

Content:
The pods should be able to communicate with each other without having to configure any additional settings like routes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Exam Tip  

Content:
For example, in this network solution, all pods are on a virtual private network that spans across the nodes in the Kubernetes cluster, and they can all by default reach each other using the IPS or pod names or services Cells configured for that purpose.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Implementation Step  

Content:
Kubernetes is configured by default with an all allow rule that allows traffic from any pod to any other pod or services within the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
Let us now bring back our earlier discussion and see how it fits into Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Architecture  

Content:
For each component in the application, we deploy a pod one for the front end web server, for the API server, and one for the database.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Implementation Step  

Content:
We create services to enable communication between the pods as well as to the end user, based on what we discussed in the previous slide.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
By default, all the three pods can communicate with each other within the Kubernetes cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Warning/Pitfall  

Content:
What if we do not want the front end web server to be able to communicate with the database server directly?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Exam Tip  

Content:
Say for example, your security teams and audits require you to prevent that from happening.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Architecture  

Content:
That is where you would implement a network policy to allow traffic to the DB server only from the API server and network policy is another object in the Kubernetes namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Just like pods, replica sets, or services, you link a network policy to one or more pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
You can define rules within the network policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
In this case, I would say only allow ingress traffic from the API pod on port 3306.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Implementation Step  

Content:
Once this policy is created, it blocks all other traffic to the pod and only allows traffic that matches the specified rule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
Again, this is only applicable to the pod on which the network policy is applied.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
So how do you apply or link a network policy to a pod?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
We use the same technique that was used before to link replica sets or services to pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
Labels and selectors.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
We label the pod and use the same labels on the port selector field in the network policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Implementation Step  

Content:
And then we build our rule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
Under policy types specify whether the rule is to allow ingress or egress, traffic, or both.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
In our case, we only want to allow ingress traffic to the DB pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
So we add ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
Next we specify the ingress rule that allows traffic from the API pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
And you specify the API pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Again using labels and selectors.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And finally the port to allow traffic on which is 3306.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
Let us put all that together.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
We start with a blank object definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
And as usual we have API version kind metadata and spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
The API version is networking.io v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
The kind is network policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
We will name the policy db policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
And then under the specs section we will first move the pod selector to apply this policy to the DB pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
Then we will move the rule we created in the previous slide under it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Concept  

Content:
And that's it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Implementation Step  

Content:
We have our first network policy ready.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
Run the cube control.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 60
Type: Implementation Step  

Content:
Create command to create the policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 61
Type: Concept  

Content:
Remember that network policies are enforced by the network solution implemented on Kubernetes cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
And not all network solutions support network policies.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Concept  

Content:
A few of them that are supported are cube, router, calico, Romana, and WaveNet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
If you used flannel as the networking solution, it does not support network policies as of this recording.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 65
Type: Concept  

Content:
Always refer to the Network Solutions documentation to see support for network policies.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Implementation Step  

Content:
Also remember, even in a cluster configured with a solution that does not support network policies, you can still create the policies, but they will just not be enforced.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 67
Type: Troubleshooting  

Content:
You will not get an error message saying the network solution does not support network policies.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
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
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 69
Type: Concept  

Content:
Walk through the documentation and head over to the Coding Challenges to Practice network policies.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 111_Network Policies
- File: 111_Network Policies.txt
- Topic: Network Policies
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
