# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 150_View Certificate Details

---

## Entry 1
Type: Concept  

Content:
In this lecture, we see how we can view certificates in an existing cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So you join a new team to help them manage their Kubernetes environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
You're a new administrator to this team.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Troubleshooting  

Content:
You've been told that there are multiple issues related to certificates in the environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So you're asked to perform a health check of all the certificates in the entire cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
What do you do?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
First of all, it's important to know how the cluster was set up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
There are different solutions available for deploying a Kubernetes cluster, and they use different methods to generate and manage certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
If you were to deploy a Kubernetes cluster from scratch, you generate all the certificates by yourself as we did in the previous lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
Or else, if you were to rely on an automated provisioning tool like kube ADM, it takes care of automatically generating and configuring the cluster for you while you deploy all the components as native services on the nodes in the hard way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
The kubectl tool deploys these as pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So it's important to know where to look at to view the right information.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Exam Tip  

Content:
In this lecture, we're going to look at a cluster provisioned by kube ADM as an example.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
In order to perform a health check, start by identifying all the certificates used in the system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
I've created a sample Excel spreadsheet for you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Check out the resources linked at the end of this lecture to access it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Troubleshooting  

Content:
So the idea is to create a list of certificate files used, their paths, the names configured on them, the alternate names configured, if any, the organization the certificate account belongs to the issuer of the certificate and the expiration date on the certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So how do you get these?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Start with certificate files used for this in an environment set up by Kube ADM.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Architecture  

Content:
Look for the kube API server definition file under slash Kubernetes manifests folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Architecture  

Content:
The command used to start the API server has information about all the certificates it uses.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Identify the certificate file used for each purpose and note it down.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Exam Tip  

Content:
Next, take each certificate and look inside it to find more details about that certificate, for example.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Architecture  

Content:
We will start with the API server certificate file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Run the OpenSSL x509 command and provide the certificate file as input to decode the certificate and view details.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Start with the name on the certificate under the subject section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Architecture  

Content:
In this case it's kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
Then the alternate names.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Troubleshooting  

Content:
The kube API server has many, so you must ensure all of them are there, and then check the validity section of the certificate to identify the expiry date and then the issuer of the certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Troubleshooting  

Content:
This should be the CA who issued the certificate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
Kube ADM names the Kubernetes CA as Kubernetes itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Follow the same procedure to identify information about all the other certificates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Things to look for.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Check to make sure you have the right names, the right alternate names.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Troubleshooting  

Content:
Make sure the certificates are part of the correct organization, and most importantly, they are issued by the right issuer and that the certificates are not expired.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
The certificate requirements are listed in detail in the Kubernetes documentation page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Check the references section for the link.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Troubleshooting  

Content:
When you run into issues, you want to start looking at logs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
If you set up the cluster from scratch by yourself and the services are configured as native services in the OS, you want to start looking at the service logs using the operating system's logging functionality.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
In case you set up a cluster with kube ADM, then the various components are deployed as pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So you can look at the logs using the kube control logs command followed by the pod name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Architecture  

Content:
Sometimes if the core components, such as the Kubernetes API server or the etcd server are down, the kube control commands won't function.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
In that case, you have to go one level down to Docker to fetch the logs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
List all the containers using the crystal PS a command, and then view the logs using crystal or logs command followed by the container ID.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 46
Type: Concept  

Content:
Head over to the practice test and practice viewing information about the existing cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 150_View Certificate Details
- File: 150_View Certificate Details.txt
- Topic: View Certificate Details
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
