# Extraction: certified-kubernetes-application-developer / 09_Security / 146_Authorization

---

## Entry 1
Type: Implementation Step  

Content:
So far we talked about authentication.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
We saw how someone can gain access to a cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Concept  

Content:
We saw different ways that someone, a human or a machine can get access to the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Once they gain access, what can they do?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
That's what authorization defines.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Implementation Step  

Content:
First of all, why do you need authorization in your cluster?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
As an administrator of the cluster, we were able to perform all sorts of operations in it, such as viewing various objects like pods and nodes and deployments, creating or deleting objects such as adding or deleting pods or even nodes in the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
As an admin, we're able to perform any operation, but soon we will have others accessing the cluster as well, such as the other administrators, developers, testers, or other applications like monitoring applications or continuous delivery applications like Jenkins, etc. so we will be creating accounts for them to access the cluster by creating usernames and passwords or tokens or signed TLS certificates or service accounts, as we saw in the previous lectures.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
But we don't want all of them to have the same level of access as us.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Warning/Pitfall  

Content:
For example, we don't want the developers to have access to modify our cluster configuration, like adding or deleting nodes or the storage or networking configurations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
We can allow them to view but not modify, but they could have access to deploying applications.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
The same goes with service accounts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
We only want to provide the external application the minimum level of access to perform its required operations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
When we share our cluster between different organizations or teams by logically partitioning it using namespaces, we want to restrict access to the users to their namespaces alone.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
That is what authorization can help you.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Within the cluster, there are different authorization mechanisms supported by Kubernetes, such as node authorizer, attribute based access control, role based access control, and webhook.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Let us go through these now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Architecture  

Content:
We know that the cube API server is accessed by users like us for management purposes, as well as the Cubelets or nodes within the cluster for management purposes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Architecture  

Content:
Within the cluster, the Cubelet accesses the API server to read information about services, endpoints, nodes, and pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Architecture  

Content:
The Cubelet also reports to the cube API server with information about the node, such as its status.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
These requests are handled by a special authorizer known as the node authorizer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Troubleshooting  

Content:
In the earlier lectures, when we discussed about certificates, we discussed that the Cubelets should be part of the system nodes group and have a name prefixed with system node, so any requests coming from a user with the name system node and part of the system nodes group is authorized by the node authorizer and are granted these privileges.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
The privileges required for a Cubelet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
So that's access within the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Let's talk about external access to the API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
For instance, a user attribute based authorization is where you associate a user or a group of users with a set of permissions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
In this case, we say the dev user can view, create, and delete pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
You do this by creating a policy file with a set of policies defined in a JSON format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Architecture  

Content:
This way you pass this file into the API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Similarly, we create a policy definition file for each user or group in this file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Now, every time you need to add or make a change in the security, you must edit this policy file manually and restart the kube API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 32
Type: Concept  

Content:
As such, the attribute based access control configurations are difficult to manage.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Implementation Step  

Content:
We will look at role based access controls next.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Role based access controls make these much easier with role based access controls.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Instead of directly associating a user or a group with a set of permissions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
We define a rule in this case for developers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
We create a rule with the set of permissions required for developers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Implementation Step  

Content:
Then we associate all the developers to that role.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Similarly, create a role for security users with the right set of permissions required for them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Then associate the user to that role going forward whenever a change needs to be made to the users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Access.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
We simply modify the role and it reflects on all developers immediately.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Role based access controls provide a more standard approach to managing access within the Kubernetes cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Implementation Step  

Content:
We will look at role based access controls in much more detail in the next lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
For now, let's proceed with the other authorization mechanisms.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Now what if you want to outsource all the authorization mechanisms?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Say you want to manage authorization externally and not through the built in mechanisms that we just discussed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
For instance, Open Policy Agent is a third party tool that helps with admission control and authorization.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 49
Type: Best Practice  

Content:
You can have Kubernetes make an API call to the open policy agent with the information about the user and his access requirements, and have the open policy agent decide if the user should be permitted or not.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Based on that response, the user is granted access.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Now there are two more modes in addition to what we just saw always allow and always deny.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
As the name states, Always allow allows all requests without performing any authorization checks.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Always deny.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Denies all requests.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
So where do you configure these modes?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Concept  

Content:
Which of them are active by default?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Can you have more than one at a time?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Exam Tip  

Content:
How does authorization work if you do have multiple ones configured?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Architecture  

Content:
The modes are set using the authorization mode option on the cube API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Warning/Pitfall  

Content:
If you don't specify this option, it is set to always allow by default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 61
Type: Exam Tip  

Content:
You may provide a comma separated list of multiple modes that you wish to use.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
In this case, I want to set it to node, Rbac and webhook.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Exam Tip  

Content:
When you have multiple modes configured, your request is authorized using each one in the order it is specified.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 64
Type: Exam Tip  

Content:
For example, when a user sends a request, it's first handled by the node authorizer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
The node authorizer handles only node requests, so it denies the request.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
Whenever a module denies a request, it is forwarded to the next one in the chain.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 67
Type: Concept  

Content:
The role based access control module performs its checks and grants.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
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
The user permission.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 69
Type: Concept  

Content:
Authorization is complete and user is given access to the requested object.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Implementation Step  

Content:
So every time a module denies a request, it goes to the next one in the chain, and as soon as a module approves the request, no more checks are done and the user is granted permission.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 72
Type: Concept  

Content:
In the upcoming lectures, we will discuss more about role based access controls.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 146_Authorization
- File: 146_Authorization.txt
- Topic: Authorization
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
