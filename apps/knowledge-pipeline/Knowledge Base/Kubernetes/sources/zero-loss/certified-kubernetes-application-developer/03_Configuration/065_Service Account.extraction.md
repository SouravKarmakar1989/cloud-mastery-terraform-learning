# Extraction: certified-kubernetes-application-developer / 03_Configuration / 065_Service Account

---

## Entry 1
Type: Concept  

Content:
Instructor: Hello and welcome to this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
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
In this lecture, we will talk about service accounts in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
The concept of service accounts is linked to other security-related concepts in Kubernetes, such as authentication, authorization, role-based access controls, et cetera.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Exam Tip  

Content:
However, as part of the Kubernetes for the application developers exam curriculum, you only need to know how to work with service accounts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
We have detailed sections covering the other concepts and security in the Kubernetes administrators course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So there are two types of accounts in Kubernetes, a user account and a service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
As you might already know, the user account is used by humans, and service accounts are used by machines.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
A user account could be for an administrator accessing the cluster to perform administrative tasks, or a developer accessing the cluster to deploy applications, et cetera.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
A service account could be an account used by an application to interact with the Kubernetes cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
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
For example, a monitoring application like Prometheus uses a service account to pull the Kubernetes API for performance metrics.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
An automated build tool like Jenkins uses service accounts to deploy applications on the Kubernetes cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Exam Tip  

Content:
Let's take an example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
I've built a simple Kubernetes dashboard application named My Kubernetes Dashboard.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
It's a simple application built in Python and all that it does when deployed is retrieve the list of pods on a Kubernetes cluster by sending a request to the Kubernetes API and display it on a webpage.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
In order for my application to query the Kubernetes API, it has to be authenticated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
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
For that, we use a service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
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
To create a service account, run the command kubectl create serviceaccount, followed by the account name, which is dashboard-sa in this case.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
To view the service accounts, run the kubectl get serviceaccount command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
This will list all the service accounts.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
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
When the service account is created, it also creates a token automatically.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
The service account token is what must be used by the external application while authenticating to the Kubernetes API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
The token, however, is stored as a secret object.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
In this case, it's named dashboard-sa-token-kbbdm.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
So when a service account is created, it first creates the service account object, and then generates a token for the service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
It then creates a secret object and stores that token inside the secret object.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
The secret object is then linked to the service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
To view the token, view the secret object by running the command kubectl describe secret.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
This token can then be used as an authentication bearer token while making a REST call to the Kubernetes API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
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
For example, in this simple example using cURL, you could provide the bearer token as an authorization header while making a REST call to the Kubernetes API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
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
In case of my custom dashboard application, copy and paste the token into the tokens field to authenticate the dashboard application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
So that's how you create a new service account and use it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
You can create a service account, assign the write permissions using role-based access control mechanisms, and export your service account tokens, and use it to configure your third-party application to authenticate to the Kubernetes API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
But what if your third-party application is hosted on the Kubernetes cluster itself?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Exam Tip  

Content:
For example, we can have our custom Kubernetes dashboard application, or the Prometheus application deployed on the Kubernetes cluster itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
In that case, this whole process of exporting the service account token and configuring the third-party application to use it can be made simple by automatically mounting the service token secret as a volume inside the pod hosting the third-party application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
That way, the token to access the Kubernetes API is already placed inside the pod and can be easily read by the application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Warning/Pitfall  

Content:
You don't have to provide it manually.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
If you go back and look at the list of service accounts, you will see that there is a default service account that exists already.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
For every namespace in Kubernetes, a service account named default is automatically created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
Each namespace has its own default service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
Whenever a pod is created, the default service account and its token are automatically mounted to that pod as a volume mount.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Exam Tip  

Content:
For example, we have a simple pod definition file that creates a pod using my custom Kubernetes dashboard image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
We haven't specified any secrets or volume mounts in the definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
However, when the pod is created, if you look at the details of the pod, by running the kubectl describe pod command, you see that a volume is automatically created from the secret named default token, which is in fact the secret containing the token for this default service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
The secret token is mounted at location var/run/secrets/kubernetes.io/serviceaccount inside the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So from inside the pod, if you run the ls command to list the contents of the directory, you will see the secret mounted as three separate files.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
The one with the actual token is the file named token.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
If you view contents of that file, you will see the token to be used for accessing the Kubernetes API Now remember that the default service account is very much restricted.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
It only has permission to run basic Kubernetes API queries.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
If you'd like to use a different service account such as the one we just created, modify the pod definition file to include a service account field and specify the name of the new service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Remember, you cannot edit the service account of an existing pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
You must delete and recreate the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
However, in case of a deployment, you will be able to edit the service account as any changes to the pod definition file will automatically trigger a new rollout for the deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
So the deployment will take care of deleting and recreating new pods with the right service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
When you look at the pod details now, you see that the new service account is being used.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So remember, Kubernetes automatically mounts the default service account if you haven't explicitly specified any.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
You may choose not to mount a service account automatically by setting the automountServiceAccountToken field to false in the pod spec section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Let's now discuss some of the changes that were made in releases version 1.22 and 1.24 of Kubernetes that changed the way service accounts secrets and tokens worked.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Now, as we discussed in the previous video, every namespace has a default service account, and that service account has a secret object with a token associated with it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
When a pod is created, it automatically associates the service account to the pod and mounts the token to a well-known location within the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
In this case, it's under var/run/secrets/kubernetes.io/serviceaccount.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
This makes the token accessible to a process that's running within the pod, and that enables that process to query the Kubernetes API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
Now, if you list the contents of the directory inside the pod, you will see the secret mounted as three separate files.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
The one with the actual token is the file named token.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
So if you list the contents of that file, you'll see the token to be used for accessing the Kubernetes API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
So all of that remains same.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
This is exactly what we discussed in the previous video.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
Now let's take that token that we just saw, and if you decode this token using this command, or you could just copy and paste this token in the JWT website at jwt.io, you'll see that it has no expiry date defined in the payload section here on the right.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
So this is a token that does not have an expiry date set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Troubleshooting  

Content:
So this excerpt from the Kubernetes Enhancement Proposal for creating bound service account tokens describes this form of JWT to be having some security and scalability related issues.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So the current implementation of JWT is not bound to any audience and is not time bound as we just saw.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
There was no expiry date for the token.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
So the JWT is valid as long as the service account exists.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Troubleshooting  

Content:
Moreover, each JWT requires a separate secret object per service account, which results in scalability issues.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
And as such, in version 1.22, the TokenRequestAPI was introduced as part of the Kubernetes Enhancement Proposal 1205 that aimed to introduce a mechanism for provisioning Kubernetes service account tokens that are more secure and scalable via an API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
So tokens generated by the token request API are audience bound, they're time bound and object bound, and hence are more secure.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Implementation Step  

Content:
Now, since version 1.22, when a new pod is created, it no longer relies on the service account secret token that we just saw.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
Instead, a token with a defined lifetime is generated through the TokenRequestAPI by the service account admission controller when the pod is created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
And this token is then mount as a projected volume onto the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So in the past, if you look at this space here, you'd see the secret that's part of the service account mount as a secret object.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
But now as you can see, it's a projected volume that actually communicates with the token controller API, TokenRequestAPI, and it gets a token for the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
Now with version 1.24, another enhancement was made as part of the Kubernetes Enhancement Proposal 2799, which dealt with the reduction of secret-based service account tokens.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
So in the past, when a service account was created, it automatically created a secret with a token that has no expiry and is not bound to any audience.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Implementation Step  

Content:
This was then automatically mount as a volume to any pod that uses that service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
And that's what we just saw.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
But in version 1.22, that was changed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Implementation Step  

Content:
The automatic mounting of the secret object to the pod was changed, and instead it then moved to the TokenRequestAPI.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Implementation Step  

Content:
So with version 1.24, a change was made where when you create a service account, it no longer automatically creates a secret or a token access secret.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Implementation Step  

Content:
So you must run the command kubectl create token, followed by the name of the service account to generate a token for that service account if you needed one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
And it will then print that token on screen.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Implementation Step  

Content:
Now, if you copy that token, and then if you try to decode this token, this time, you'll see that it has an expiry date defined.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
And if you haven't specified any time limit, then it's usually one hour from the time that you run the command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
You can also pass in additional options to the command to increase the expiry of the token.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Implementation Step  

Content:
So now post version 1.24, if you would still like to create secrets the old way with non-expiring token, then you could still do that by creating a secret object with the type set to kubernetes.io/service-account-token and the name of the service account specified within annotations in the metadata section like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
So this is how the secret object will be associated with that particular service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
So when you do this, just make sure that you have the service account created first and then create a secret object.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Implementation Step  

Content:
Otherwise, the secret object will not be created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Implementation Step  

Content:
So this will create a non-expiring token in a secret object and associated with that service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Best Practice  

Content:
Now, you have to be sure if you really wanna do that because as per the Kubernetes documentation pages on service account token secrets, it says you should only create service account token secrets if you can't use the TokenRequestAPI to obtain a token.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Implementation Step  

Content:
So that's either the kubectl create token command we just talked about, or it talks to the TokenRequestAPI to generate that token, or it's the automated token creation that happens on pods when they're created post version 1.22.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Best Practice  

Content:
And also, you should only create service account token request if the security exposure of persisting and non-expiring token credential is acceptable to you.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Best Practice  

Content:
Now, the TokenRequestAPI is recommended instead of using the service account token secret objects as they are more secure and have a bounded lifetime unlike the service account token secrets that have no expiry.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
Well, that's all for now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
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
To read more about these changes, refer to the Kubernetes Enhancement Proposals that are listed here, as well as the documentation pages on service accounts and secrets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
All right, thank you very much.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 065_Service Account
- File: 065_Service Account.txt
- Topic: Service Account
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
