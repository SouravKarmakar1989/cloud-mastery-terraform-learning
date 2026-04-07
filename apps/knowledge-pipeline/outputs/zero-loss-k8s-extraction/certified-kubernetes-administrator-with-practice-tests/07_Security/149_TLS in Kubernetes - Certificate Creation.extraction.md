# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 149_TLS in Kubernetes - Certificate Creation

---

## Entry 1
Type: Concept  

Content:
In this lecture, we'll look at how to generate the certificates for the cluster to generate certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
There are different tools available such as easy RSA, OpenSSL or SSL etc. or many others.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
In this lecture we will use OpenSSL tool to generate certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
This is where we left off.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
We will start with the CA certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
First we create a private key using the OpenSSL command OpenSSL RSA dash out CA key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
Then we use the OpenSSL request command along with the key we just created to generate a certificate signing request.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
The certificate signing request is like a certificate with all of your details, but with no signature.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
In the certificate signing request, we specify the name of the component the certificate is for in the common name or CN field.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
In this case, since we are creating a certificate for the Kubernetes CA, we name it Kubernetes CA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Finally, we sign the certificate using the OpenSSL x509 command and by specifying the certificate signing request we generated in the previous command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
Since this is for the CA itself, it is self-signed by the CA using its own private key that it generated in the first step going forward.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
For all other certificates, we will use the CA key pair to sign them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
The CA now has its private key and root certificate file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Great.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Let's now look at generating the client certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
We start with the admin user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
We follow the same process where we create a private key for the admin user using the OpenSSL command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
We then generate a CSR and that is where we specify the name of the admin user which is kube admin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
A quick note about the name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
It doesn't really have to be kube admin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
It could be anything.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 23
Type: Implementation Step  

Content:
But remember this is the name that kube control client authenticates with.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And when you run the kube control command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So in the audit logs and elsewhere This is the name that you will see, so provide a relevant name in this field.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Finally, generate a signed certificate using the OpenSSL zero nine command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
But this time you specify the CA certificate and the CA key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
You're signing your certificate with the CA key pair.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
That makes this a valid certificate within your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
The signed certificate is then output to admin file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
That is the certificate that the admin user will use to authenticate to Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
If you look at it, this whole process of generating a key and a certificate pair is similar to creating a user account for a new user, the certificate is the validated user ID and the key is like the password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
It's just that it's much more secure than a simple username and password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So this is for the admin user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
How do you differentiate this user from any other users?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
The user account needs to be identified as an admin user and not just another basic user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
You do that by adding the group details for the user in the certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
In this case, a group named System Masters exist on Kubernetes with administrative privileges.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
We will discuss about groups later, but for now it's important to know that you must mention this information in your certificate signing request.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
You can do this by adding group details with the OU parameter while generating a certificate signing request.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Once it's signed, we now have our certificate for the admin user with admin privileges.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Architecture  

Content:
We follow the same process to generate client certificates for all other components that access the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Architecture  

Content:
The kube scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Troubleshooting  

Content:
Now the kube scheduler is a system component part of the Kubernetes control plane, so its name must be prefixed with the keyword system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Architecture  

Content:
The same with kube controller manager.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Troubleshooting  

Content:
It is again a system component, so its name must be prefixed with the keyword system and finally kube proxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
So far we have created CA certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Architecture  

Content:
Then all of the client certificates including the admin, user scheduler, controller manager and kube proxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Architecture  

Content:
We will follow the same procedure to create the remaining three client certificates for API servers and Cubelets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
When we create the server certificates for them, so we will set them aside for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Now what do you do with these certificates?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Take the admin certificate for instance to manage the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
You can use this certificate instead of a username and password.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Architecture  

Content:
In a Rest API call you make to the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
You specify the key, the certificate, and the CA certificate as options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
That's one simple way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
The other way is to move all of these parameters into a configuration file called kube config.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Architecture  

Content:
Within that, specify the API server endpoint, details, the certificates to use, etc. that is what most of the Kubernetes clients use.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
We will look at kube config in depth in one of the upcoming lectures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
Okay, so we're now left with the server side certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
But before we proceed, one more thing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
Remember, in the prerequisite lecture, we mentioned that for clients to validate the certificates sent by the server and vice versa, they all need a copy of the certificate authorities public certificate, the one that we said is already installed within the user's browsers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
In case of a web application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
Similarly, in Kubernetes, for these various components to verify each other, they all need a copy of the CA's root certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
So whenever you configure a server or a client with certificates, you will need to specify the CA root certificate as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
Let's look at the server side certificates now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Architecture  

Content:
Let's start with the etcd server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Architecture  

Content:
We follow the same procedure as before to generate a certificate for etcd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Architecture  

Content:
We will name it etcd server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Exam Tip  

Content:
Etcd server can be deployed as a cluster across multiple servers as in a high availability environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
In that case, to secure communication between the different members in the cluster, we must generate additional peer certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Architecture  

Content:
Once the certificates are generated, specify them while starting the etcd server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Architecture  

Content:
There are key and cert file options where you specify the etcd server keys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
There are other options available for specifying the peer certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Architecture  

Content:
And finally, as we discussed earlier, it requires the CA root certificate to verify that the clients connecting to the etcd server are valid.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Architecture  

Content:
Let's talk about the kube API server now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Architecture  

Content:
We generate a certificate for the API server like before.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Architecture  

Content:
But wait, the API server is the most popular of all components within the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Architecture  

Content:
Everyone talks to the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Architecture  

Content:
Every operation goes through the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Architecture  

Content:
Anything moves within the cluster, the API server knows about it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
You need information.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Architecture  

Content:
You talk to the API server and so it goes by many names and aliases within the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Warning/Pitfall  

Content:
Its real name is Kube API server, but some call it Kubernetes because for a lot of people who don't really know what goes under the hoods of Kubernetes?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Architecture  

Content:
The kube API server is Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
Others like to call it Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
While some refer to it as Kubernetes default SVC and some like to call it by its full name Kubernetes default svc dot cluster dot local.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Architecture  

Content:
Finally, it is also referred to in some places simply by its IP address, the IP address of the host running the kube API server, or the pod running it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Architecture  

Content:
So all of these names must be present in the certificate generated for the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Architecture  

Content:
Only then those referring to the cube API server by these names will be able to establish a valid connection.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
So we use the same set of commands as earlier to generate a key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Architecture  

Content:
In the certificate signing request you specify the name kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
But how do you specify all the alternate names?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Implementation Step  

Content:
For that you must create an open SSL config file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Implementation Step  

Content:
Create an OpenSSL conf file and specify the alternate names in the.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
Altnames section of the file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Architecture  

Content:
Include all the DNS names the API server goes by as well as the IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
Pass this config file as an option while generating the certificate signing request.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
Finally, sign the certificate using the CA certificate and key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Architecture  

Content:
You then have the API server certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
It is time to look at where we are going to specify these keys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Architecture  

Content:
Remember to consider the API client certificates that are used by the API server while communicating as a client to the etcd and Kubelet servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Architecture  

Content:
The location of these certificates are passed in to the kube API server's executable or service configuration file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Implementation Step  

Content:
First, the CA file needs to be passed in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
Remember, every component needs the CA certificate to verify its clients.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Architecture  

Content:
Then we provide the API server certificates under the TLS cert options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Architecture  

Content:
We then specify the client certificates used by kube API server to connect to the etcd server again with the CA file, and finally the kube API server client certificates to connect to the Kubelets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Architecture  

Content:
Next comes the Kubelet server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Architecture  

Content:
The Kubelet server is an https API server that runs on each node responsible for managing the node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Architecture  

Content:
That's who the API server talks to to monitor the node, as well as send information regarding what pods to schedule on this node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
As such, you need a key certificate pair for each node in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
Now what do you name these certificates?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
Are they all going to be named Cubelets?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
No, they will be named after their nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
Node zero one, node zero two and node zero three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Architecture  

Content:
Once the certificates are created, use them in the kubelet config file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Architecture  

Content:
As always, you specify the root certificate and then provide the Kubelet node certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
You must do this for each node in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Architecture  

Content:
We also talked about a set of client certificates that will be used by the Kubelet to communicate with the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Architecture  

Content:
These are used by the Kubelet to authenticate into the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
They need to be generated as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
What do you name these certificates?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Architecture  

Content:
The API server needs to know which node is authenticating and give it the right set of permissions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
So it requires the nodes to have the right names in the right format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Architecture  

Content:
Since the nodes are system components like the kube scheduler and the controller manager we talked about earlier, the format starts with the system keyword followed by node and then the node name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
In this case node one to node zero three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Architecture  

Content:
And how would the API server give it the right set of permissions?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
Remember we specified a group name for the admin user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
So the admin user gets administrative privileges.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
Similarly, the nodes must be added to a group named system nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
Once the certificates are generated, they go into the kube config files as we discussed earlier.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
Well that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 133
Type: Implementation Step  

Content:
In the next lecture we will see how you can view certificate information and how certificates are configured by the Kube ADM tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 149_TLS in Kubernetes - Certificate Creation
- File: 149_TLS in Kubernetes - Certificate Creation.txt
- Topic: TLS in Kubernetes - Certificate Creation
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
