# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 145_Authentication

---

## Entry 1
Type: Implementation Step  

Content:
Hello and welcome to this lecture on authentication in a Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Exam Tip  

Content:
As we have seen already, the Kubernetes cluster consists of multiple nodes physical or virtual, and various components that work together.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
You have users, like administrators that access the cluster to perform administrative tasks, the developers that access the cluster to test or deploy applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
We have end users who access the applications deployed on the cluster, and we have third party applications accessing the cluster for integration purposes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
Throughout this section, we will discuss how to secure our cluster by securing the communication between internal components and securing management access to the cluster through authentication and authorization mechanisms.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
In this lecture, our focus is on securing access to the Kubernetes cluster with authentication mechanisms.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
So we talked about the different users that may be accessing the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Implementation Step  

Content:
Security of end users who access the applications deployed on the cluster is managed by the applications themselves internally.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So we will take them out of our discussion.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Our focus is on users access to the Kubernetes cluster for administrative purposes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
So we are left with two types of users humans, such as the administrators and developers, and robots, such as other processes or services or applications that require access to the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
Kubernetes does not manage user accounts natively.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
It relies on an external source, like a file with user details or certificates, or a third party identity service like Ldap to manage these users.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
And so you cannot create users in a Kubernetes cluster or view the list of users like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
However, in case of service accounts, Kubernetes can manage them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
You can create and manage service accounts using the Kubernetes API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
We have a section on service accounts exclusively where we discuss and practice more about service accounts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
For this lecture we will focus on users in Kubernetes, all user access is managed by the API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
Whether you're accessing the cluster through kube control tool or the API directly.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Architecture  

Content:
All of these requests go through the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Architecture  

Content:
The kube API server authenticates the requests before processing it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Architecture  

Content:
So how does the kube API server authenticate?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
There are different authentication mechanisms that can be configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
You can have usernames and tokens in a static token file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
Or you can authenticate using certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Implementation Step  

Content:
And another option is to connect to third party authentication protocols like Ldap, Kerberos, etc..

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
We will look at some of these next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
Let's start with static password and token files as it is the easiest to understand.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
In the CSV file with the user details that we saw, we can optionally have a fourth column with the group details to assign users to specific groups.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Similarly, instead of a static password file, you can have a static token file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
Here, instead of password, is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
Specify a token.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Architecture  

Content:
Pass the token file as an option token auth file to the cube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
While authenticating, specify the token as an authorization bearer token.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Peer requests like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
That's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 37
Type: Best Practice  

Content:
Remember that this authentication mechanism that stores usernames, passwords, and tokens in clear text in a static file is not a recommended approach as it is insecure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
But I thought this was the easiest way to understand the basics of authentication in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
Going forward, we will look at other authentication mechanisms.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
I also want to point out that if you were trying this out in a cube ADM setup, you must also consider volume mounts to pass in the auth file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
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
Details about this are available in the article that follows, and remember to set up authorization for the new users.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
We will discuss about authorization later in this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Implementation Step  

Content:
In the upcoming lectures, we will discuss about certificate based authentication and how the various components within Kubernetes cluster are secured using certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 145_Authentication
- File: 145_Authentication.txt
- Topic: Authentication
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
