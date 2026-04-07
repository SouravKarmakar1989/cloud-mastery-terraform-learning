# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 169_Service Accounts

---

## Entry 1
Type: Concept  

Content:
Let's now look at service accounts and Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So there are two types of accounts in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
A user account and a service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
As you might already know, the user account is used by humans and the service accounts are used by machines.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
A user account could be for an administrator accessing the cluster to perform administrative tasks, so a developer accessing the cluster to deploy applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
A service account could be an account used by an application to interact with the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Exam Tip  

Content:
For example, a monitoring application like Prometheus uses a service account to poll the Kubernetes API for performance metrics.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
An automated build tool like Jenkins uses service accounts to deploy applications on Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Exam Tip  

Content:
The second example I've built a simple Kubernetes dashboard application named my Kubernetes Dashboard.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
It's a simple application built in Python, and all that it does when deployed is retrieve the list of pods on a Kubernetes cluster by sending a request to the Kubernetes API and display it on a web page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
In order for my application to query the Kubernetes API, it has to be authenticated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
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
For that, we use a service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
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
A service account is an identity of a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
A service account is associated with what is known as a token.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
A token is what is used to authenticate a service account into the Kubernetes API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So if you have ever authenticated to an API using a curl command or something that you probably know of, the tokens that are passed through as a bearer token in the header of the call.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
This token is what proves the identity of the service account to the API endpoint.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
Well, think of it this way if the service account was an ID card that we create for a service, the barcode that's usually on the ID cards is the token.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
It's the barcodes that are scanned by the gates to prove the identity of that user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And it is this token that we will input in our Kubernetes dashboard later.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Now let's look at how service accounts and tokens work in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
By default, when a Kubernetes cluster is set up, it creates a service account by the name default in all namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
To list existing service accounts, use the kubectl get service account command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
To see the details of an existing service account, run the kubectl describe service account command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
Whenever a pod is created, the default service account is automatically attached to the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
As you can see in the output of the describe pod command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Here, there's a service account field, and you can see that the service account associated with this pod is named as default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So the service account gets mounted as a projected volume within the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
So think of a projected volume as a dynamic directory created inside the pod by Kubernetes automatically.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So it is mounted at the location.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
VAR run secrets Kubernetes service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Now if you list the contents of this directory, you'll see the token available as a file, and if you look inside the contents of the file, you'll see the actual token itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
The default service account comes with a lot of limitations, so if you have specific access requirements we must create a custom service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So how do we do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
To create a service account run the command cube CTL create service account followed by the service account name which is dashboard Dash S.A. in this case, you can also of course create the service account the declarative way using a YAML file like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So API version is v1, kind is service, account name is dashboard SA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
And to view the service accounts we run the kubectl get service account command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
This will list all the service accounts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
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
And we can see that our newly created service account is listed here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
And to list the details of a create a service account, we run the kubectl describe command and it lists its details.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
As you can see, when you first create a service account, it creates a blank service account with most of its properties set to none.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
So to associate a newly created service account to a pod, we pass the name of the service account using the service account name field in the pod spec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
This time when we describe the pod, we see the dashboard service account associated with it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And if you look inside the mounted directory, you get to see the token file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
Kubernetes automatically creates a short lived token and mounts it inside a projected volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Architecture  

Content:
The Kubelet also automatically rotates this token, and this token is bound to the life of the pod, so it is automatically expired when the pod is deleted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Warning/Pitfall  

Content:
Now, if you don't want a token to be automatically created and mounted inside the pod for the service account, you may add the auto mount Service account token key to false like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
You can define this either at the service account level.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
That way, no pods that use the service account gets the service account token auto mounted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
Or you can define it at the pod definition level so that irrespective of whether this property is set at the service account level, it won't be auto mounted for that pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Now, for the pods or applications hosted within the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
This setup that we've discussed so far works fine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
So the pod is associated to a service account, and as soon as the pod is associated to a service account, Kubernetes automatically creates a token with an expiry date and automatically mounts that within the pod at a particular location, which the application running inside the pod can refer to and read from to make API calls to Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
At times, you might want to create a token that is to be used outside of the cluster, maybe to paste into the Kubernetes dashboard that we had created, or to put it into a CI CD tool or an external monitoring tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
In such cases, you can create a token by running the kubectl create token command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
It creates a token and shares it on screen.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
And this token is not stored in any secret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
By default, all tokens are valid for one hour to extend the validity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Add a duration flag to the command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
Like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
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
If you decode this token using the jq and the base64 utility, you'll see an expiry defined as well as the service account name and other details that are associated with this token.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
This token can then be used as an authentication bearer token while making a Rest call to the Kubernetes API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
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
For example, in this simple example using Curl, you could provide the bearer token as an authorization header while making a Rest call to the Kubernetes API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 64
Type: Implementation Step  

Content:
In case of my custom dashboard application, we can copy and paste the token into the tokens field to authenticate the dashboard application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
So let's summarize what we have learned so far.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
Service accounts are used by other applications or services to interact with Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Tokens are associated to service accounts to prove their identity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
To create a new service account, run the kubectl create service account command followed by the name of the service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
To use the service account from an external application, such as a CI, CD tool or monitoring tools.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
We first create a token and specify the name of the service account associated with that, and it prints the token.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
On screen, you can then copy the token and paste it or use it in the external application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
Now for internal applications or pods that are within the cluster, every namespace has a default service account.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
The default service account is automatically attached to the pod on creation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
To attach a service account to a pod, we use the service account name field, and when a service account is attached to a pod, Kubernetes automatically creates a token and mounts as a projected volume, automatically rotates the token and automatically expires the token when the pod is deleted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 76
Type: Implementation Step  

Content:
Head over to the labs and I'll see you in the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 169_Service Accounts
- File: 169_Service Accounts.txt
- Topic: Service Accounts
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
