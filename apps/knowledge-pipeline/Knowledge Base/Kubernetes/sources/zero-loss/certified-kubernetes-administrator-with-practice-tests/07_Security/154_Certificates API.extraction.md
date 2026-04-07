# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 154_Certificates API

---

## Entry 1
Type: Concept  

Content:
In this lecture, we look at how to manage certificates and what the certificate API is in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So what have we done so far?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
I, as an administrator of the cluster, in the process of setting up the whole cluster, have set up a CA server and bunch of certificates for various components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
We then started the services using the right certificates and is all up and working.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
I'm the only administrator and user of the cluster and I have my own admin certificate and key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
A new admin comes into my team.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
She needs access to the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
We need to get her a pair of certificate and key pair for her to access the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
She creates her own private key, generates a certificate signing request and sends it to me.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
Since I'm the only admin, I then take the certificate signing request to my CA server, gets it signed by the CA server using the CA server's private key and route certificate, thereby generating a certificate and then sends the certificate back to her.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
She now has her own valid pair of certificate and key that she can use to access the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
The certificates have a validity period.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
It ends after a period of time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Every time it expires, we follow the same process of generating a new CSR and getting it signed by the CA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So we keep rotating the certificate files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So we keep talking about the CA server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
What is the CA server and where is it located in the Kubernetes setup?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
The CA is really just the pair of key and certificate files we have generated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Whoever gains access to these pair of files can sign any certificate for the Kubernetes environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
They can create as many users as they want with whatever privileges they want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So these files need to be protected and stored in a safe environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Say we place them on a server that is fully secure, now that server becomes your CA server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
The certificate key file is safely stored in that server and only on that server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Every time you want to sign a certificate, you can only do it by logging into that server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
As of now, we have the certificates placed on the Kubernetes master node itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So the master node is also RCA server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
The Kubeadm tool does the same thing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
It creates a CA pair of files and stores that on the master node itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So far we have been signing requests manually, but as in when the users increase and your team grows, you need a better automated way to manage the certificates signing requests, as well as to rotate certificates when they expire.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Kubernetes has a built-in certificates API that can do this for you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
With the certificates API, you now send a certificate signing request directly to Kubernetes through an API call.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
This time when the administrator receives a certificate signing request, instead of logging onto the master node and signing the certificate by himself, he creates a Kubernetes API object called CertificateSigningRequest.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
Once the object is created, all CertificateSigningRequest can be seen by administrators of the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
The request can be reviewed and approved easily using Kube control commands.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
This certificate can then be extracted and shared with the user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Let's see how it is done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
A user first creates a key, then generates a certificate signing request using the key with her name on it, then sends the request to the administrator.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
The administrator takes a key and creates a CertificateSigningRequest object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
The CertificateSigningRequest object is created like any other Kubernetes object using a manifest file with the usual fields.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
The kind is CertificateSigningRequest under the spec section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
In the spec section, usages defines how the certificate will be used.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Expiration seconds controls certificate validity signer name tells Kubernetes who is allowed to sign the certificate signing request and what kind of certificate is being requested.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Warning/Pitfall  

Content:
The request field is where you specify the certificate signing request sent by the user, but you don't specify it as plain text.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
Instead, it must be encoded using the base 64 command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
Then move the encoded text into the request field and then submit the request.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
Once the object is created, all CertificateSigningRequests can be seen by administrators by running the Kube control, get csr command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Identify the new request and approve the request by running the Kube control certificate approved command, Kubernetes signs the certificate using the CA key pairs and generates a certificate for the user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
This certificate can then be extracted and shared with the user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
View the certificate by viewing it in a YAML format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
The generated certificate is part of the output, but as before, it is in a base 64 and coded format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
To decode it, take the text and use the base 64 utilities decode option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
This gives the certificate in a plain text format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
This can then be shared with the end user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Now that we have seen how it works, let's see who does all of this for us.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Architecture  

Content:
If you look at the Kubernetes control plane, you see the kube-apiserver, the scheduler, the controller manager, etcd server, et cetera.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
Which of these components is actually responsible for all the certificate related operations?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Architecture  

Content:
All the certificate related operations are carried out by the controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Architecture  

Content:
If you look closely at the controller manager, you will see that it has controllers in it called as CSR-Approving, CSR-Signing, et cetera, that are responsible for carrying out these specific tasks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
We know that if anyone has to sign certificates, they need the CA server's route certificate and private key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Architecture  

Content:
The Controller Manager service configuration has two options where you can specify these.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 62
Type: Implementation Step  

Content:
Head over to the practice test and play around with the certificate's API and we'll see you in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 154_Certificates API
- File: 154_Certificates API.txt
- Topic: Certificates API
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
