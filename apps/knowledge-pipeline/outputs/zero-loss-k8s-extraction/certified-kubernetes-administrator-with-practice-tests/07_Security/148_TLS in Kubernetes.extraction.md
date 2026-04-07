# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 148_TLS in Kubernetes

---

## Entry 1
Type: Concept  

Content:
In this lecture, we look at securing your Kubernetes cluster with TLS certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
In the previous lecture, we saw what public and private keys are, how a server uses public and private keys to secure connectivity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
We will call them serving certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
We saw what a certificate authority is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
We learned that the CA has its own set of public and private key pairs that it uses to sign server certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
We will call them root certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
We also saw how a server can request a client to verify themselves using client certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
So three types of certificates: server certificates configured on those servers, root certificate configured on the CA servers, and then client certificates configured on the clients.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And a quick note on naming convention before we go forward.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
You're going to see a lot of certificate files in this lecture, and it could be very confusing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So use this technique to know which one is which.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Usually certificates with public keys are named "crt" or "pem" extension, so that's server.crt, or server.pem for server certificates or client.crt, or client.pem for client certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Exam Tip  

Content:
And private keys are usually with extension ".key" or with a "-key" in the file names, for example, server.key or server-key.pem.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So just remember, private keys have the word "key" in them, usually either as an extension or in the name of the certificate, and one that doesn't have the word "key" in them is usually a public key or certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
That's how I remember it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
We will now see how these concepts relate to a Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
The Kubernetes cluster consists of a set of master and worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
Of course, all communication between these nodes need to be secure and must be encrypted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
All interactions between all services and their clients need to be secure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Exam Tip  

Content:
For example, an administrator interacting with the Kubernetes cluster through the Kube control utility, or while accessing the Kubernetes API directly must establish secure TLS connection.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Communication between all the components within the Kubernetes cluster also need to be secured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So the two primary requirements are to have all the various services within the cluster to use server certificates and all clients to use client certificates to verify they are who they say they are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Let's look at the different components within the Kubernetes cluster and identify the various servers and clients and who talks to who.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Let's start with the kube-apiserver.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Architecture  

Content:
As we know already, the API server exposes an ACTPS service that other components as well as external users use to manage the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So it is a server and it requires certificates to secure all communication with its clients.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So we generate a certificate and key pair.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
We call it "apiserver.crt" and "apiserver.key." We will try to stick to this naming convention going forward.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Anything with a ".crt" extension is the certificate and ".key" extension is the private key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Also, remember, these certificate names could be different in different Kubernetes setups depending on who and how the cluster was set up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So these names may be different in yours.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
In this lecture, we will try to use names that help us easily identify the certificate files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Architecture  

Content:
Another server in the cluster is the ETCD server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Architecture  

Content:
The ETCD server stores all information about the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So it requires a pair of certificate and key for itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Architecture  

Content:
We will call it "etcd-x-server.crt" and "etcd-x-server.key." The other server component in the cluster is on the worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Architecture  

Content:
There are the Kubelet services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Architecture  

Content:
They also expose an HTTPS API endpoint that the Kube API server talks to to interact with the worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Again, that requires a certificate and key pair.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Architecture  

Content:
We call it "kubelet.crt" and "kubelet.key." Those are really the server components in the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Let's now look at the client components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Who are the clients who access these services?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Architecture  

Content:
The clients who access the Kube API server are us, the administrators through Kube Control or REST API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Architecture  

Content:
The admin user requires a certificate and key pair to authenticate to the Kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Architecture  

Content:
We will call it "admin.crt," and "admin.key." The scheduler talks to the Kube API server to look for pods that require scheduling and then get the API server to schedule the pods on the right worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Architecture  

Content:
The scheduler is a client that accesses the Kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Architecture  

Content:
As far as the Kube API server is concerned, the scheduler is just another client, like the admin user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Architecture  

Content:
So the scheduler needs to validate its identity using a client TLS certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So it needs its own pair of certificate and keys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Architecture  

Content:
We will call it "scheduler.crt" and "scheduler.key." The Kube Controller Manager is another client that accesses the Kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Architecture  

Content:
So it also requires a certificate for authentication to the Kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
So we create a certificate pair for it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
The last client component is the Kube proxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Architecture  

Content:
The Kube proxy requires a client certificate to authenticate to the Kube API server, and so it requires its own pair of certificate and keys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Architecture  

Content:
We will call them "kube-proxy.crt" and "kube-proxy.key." The servers communicate amongst them as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Exam Tip  

Content:
For example, the Kube API server communicates with the ETCD server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Architecture  

Content:
In fact, of all the components, the Kube API server is the only server that talks to the ETCD server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Architecture  

Content:
So as far as the ETCD server is concerned, the Kube API server is a client, so it needs to authenticate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Architecture  

Content:
The Kube API server can use the same keys that it used earlier for serving its own API service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
The apiserver.crt and the apiserver.key files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Architecture  

Content:
Or you can generate a new pair of certificates specifically for the Kube API server to authenticate to the ETCD server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Architecture  

Content:
The Kube API server also talks to the Kubelet server on each of the individual nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
That's how it monitors the worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
For this, again, it can use the original certificates or generate nuances specifically for this purpose.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
So that's too many certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
Let's try and group them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Architecture  

Content:
There are a set of client certificates mostly used by clients to connect to the Kube API server, and there are a set of server side certificates used by the Kube API server, ETCD server, and Kubelet to authenticate their clients.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
We will now see how to generate these certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
As we know already, we need a certificate authority to sign all of these certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
Kubernetes requires you to have at least one certificate authority for your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
In fact, you can have more than one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Architecture  

Content:
One for all the components in the cluster, and another one specifically for ETCD, in that case, the ETCD server's certificates, and the ETCD server's client certificates, which in this case is the API server client certificate, will be all signed by the ETCD server CA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
For now, we will stick to just one CA for our cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
The CA, as we know, has its own pair of certificates and key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Best Practice  

Content:
We will call it "ca.crt" and "ca.key." That should sum up all the certificates used in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 148_TLS in Kubernetes
- File: 148_TLS in Kubernetes.txt
- Topic: TLS in Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
