# Normalized Concept: Authentication

- Concept Key: authentication
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 874

## 1. Definition
- In this lecture, we look at securing your Kubernetes cluster with TLS certificates.
- In the previous lecture, we saw what public and private keys are, how a server uses public and private keys to secure connectivity.
- We will call them serving certificates.
- We saw what a certificate authority is.
- We learned that the CA has its own set of public and private key pairs that it uses to sign server certificates.
- We will call them root certificates.
- We also saw how a server can request a client to verify themselves using client certificates.
- And a quick note on naming convention before we go forward.
- You're going to see a lot of certificate files in this lecture, and it could be very confusing.
- So use this technique to know which one is which.

## 2. First-Principles Mental Model
- So three types of certificates: server certificates configured on those servers, root certificate configured on the CA servers, and then client certificates configured on the clients.
- As we know already, the API server exposes an ACTPS service that other components as well as external users use to manage the Kubernetes cluster.
- Another server in the cluster is the ETCD server.
- The ETCD server stores all information about the cluster.
- We will call it "etcd-x-server.crt" and "etcd-x-server.key." The other server component in the cluster is on the worker nodes.
- There are the Kubelet services.
- They also expose an HTTPS API endpoint that the Kube API server talks to to interact with the worker nodes.
- We call it "kubelet.crt" and "kubelet.key." Those are really the server components in the Kubernetes cluster.
- The clients who access the Kube API server are us, the administrators through Kube Control or REST API.
- The admin user requires a certificate and key pair to authenticate to the Kube API server.

## 3. Why This Exists
- In the previous lecture, we saw what public and private keys are, how a server uses public and private keys to secure connectivity.
- We learned that the CA has its own set of public and private key pairs that it uses to sign server certificates.
- We also saw how a server can request a client to verify themselves using client certificates.
- You're going to see a lot of certificate files in this lecture, and it could be very confusing.
- So use this technique to know which one is which.
- Usually certificates with public keys are named "crt" or "pem" extension, so that's server.crt, or server.pem for server certificates or client.crt, or client.pem for client certificates.
- We will now see how these concepts relate to a Kubernetes cluster.
- Of course, all communication between these nodes need to be secure and must be encrypted.
- All interactions between all services and their clients need to be secure.
- Communication between all the components within the Kubernetes cluster also need to be secured.

## 4. Internal Working
- So three types of certificates: server certificates configured on those servers, root certificate configured on the CA servers, and then client certificates configured on the clients.
- As we know already, the API server exposes an ACTPS service that other components as well as external users use to manage the Kubernetes cluster.
- Another server in the cluster is the ETCD server.
- The ETCD server stores all information about the cluster.
- We will call it "etcd-x-server.crt" and "etcd-x-server.key." The other server component in the cluster is on the worker nodes.
- There are the Kubelet services.
- They also expose an HTTPS API endpoint that the Kube API server talks to to interact with the worker nodes.
- We call it "kubelet.crt" and "kubelet.key." Those are really the server components in the Kubernetes cluster.
- The clients who access the Kube API server are us, the administrators through Kube Control or REST API.
- The admin user requires a certificate and key pair to authenticate to the Kube API server.
- We will call it "admin.crt," and "admin.key." The scheduler talks to the Kube API server to look for pods that require scheduling and then get the API server to schedule the pods on the right worker nodes.
- The scheduler is a client that accesses the Kube API server.

## 5. Key Objects / Fields / Relationships
- In this lecture, we look at securing your Kubernetes cluster with TLS certificates.
- We will call them serving certificates.
- We saw what a certificate authority is.
- We learned that the CA has its own set of public and private key pairs that it uses to sign server certificates.
- We will call them root certificates.
- We also saw how a server can request a client to verify themselves using client certificates.
- So three types of certificates: server certificates configured on those servers, root certificate configured on the CA servers, and then client certificates configured on the clients.
- You're going to see a lot of certificate files in this lecture, and it could be very confusing.
- Usually certificates with public keys are named "crt" or "pem" extension, so that's server.crt, or server.pem for server certificates or client.crt, or client.pem for client certificates.
- So just remember, private keys have the word "key" in them, usually either as an extension or in the name of the certificate, and one that doesn't have the word "key" in them is usually a public key or certificate.

## 6. YAML Deep Dive
- Or you can generate a new pair of certificates specifically for the Kube API server to authenticate to the ETCD server.
- For this, again, it can use the original certificates or generate nuances specifically for this purpose.
- One for all the components in the cluster, and another one specifically for ETCD, in that case, the ETCD server's certificates, and the ETCD server's client certificates, which in this case is the API server client certificate, will be all signed ...
- So let's look at the manifest files for the kube-api server.
- So we know that they are under etc/kubernetes/manifest and we have the kube-apiserver.
- So for this we're going to look at the ETCD Server manifest file.
- Okay, so it says the connection to the server was refused, did you specify the right host or port?
- So let's look at the ETCD manifest files.
- So that's /etc/kubernetes/manifests/etcd.yml.
- Now inspect the kube-api server logs and identify the root cause and fix the issue.

## 7. kubectl / command usage
- So that command is gonna give us this information.
- And let's run it through the same command but we're just going to replace it with the ETCD Server Certificate.
- So let's run the same command.
- Okay, so kubectl suddenly stops responding to your commands after a change window.
- And once you fix the issue, wait for some time for kubectl to respond.
- Let's do a kubectl get something, get pods and let's see what's happening.
- So apparently none of the Kubernetes commands are working.
- So let's see, let's first, so if this happens, this means that the kubectl utility is not able to communicate with the Kube API Server.
- But you can't do that with the kubectl command because the kubectl command cannot communicate with the Kube API Server.
- Okay, so now we have the kubectl utility back and the node is now ready.

## 8. Real-world scenarios
- In this lecture, we look at securing your Kubernetes cluster with TLS certificates.
- And private keys are usually with extension ".key" or with a "-key" in the file names, for example, server.key or server-key.pem.
- We will now see how these concepts relate to a Kubernetes cluster.
- The Kubernetes cluster consists of a set of master and worker nodes.
- For example, an administrator interacting with the Kubernetes cluster through the Kube control utility, or while accessing the Kubernetes API directly must establish secure TLS connection.
- Communication between all the components within the Kubernetes cluster also need to be secured.
- So the two primary requirements are to have all the various services within the cluster to use server certificates and all clients to use client certificates to verify they are who they say they are.
- Let's look at the different components within the Kubernetes cluster and identify the various servers and clients and who talks to who.
- As we know already, the API server exposes an ACTPS service that other components as well as external users use to manage the Kubernetes cluster.
- Also, remember, these certificate names could be different in different Kubernetes setups depending on who and how the cluster was set up.

## 9. Pitfalls and misunderstandings
- And we see, don't see errors anymore so let's check.
- And we see, we don't see those errors anymore.
- For example, when a pod creation request comes in, you'd like to review the configuration file and look at the image name and say that you do not want to allow images from a public Docker Hub registry.
- Or say for example, you'd like to say if the container is running as the root user, then you do not want to allow that request or allow certain capabilities only, or to enforce that the metadata always contains labels.
- Admission controller rejects requests to namespaces that do not exist, and there are many more admission controllers available.
- Admission controllers are deprecated and is now replaced by namespace lifecycle admission controller.
- However, we don't see NamespaceAutoProvision in this list.
- And if you don't wanna go into vi we can always just grep for this.
- Now the reason this ultimately failed and it threw that error was because Kubernetes has a NamespaceExist admission controller enabled which rejects requests and namespaces that do not exist.
- And this next question is just pointing out that the namespace exists in the namespace auto provision and mission controllers are deprecated and are now replaced by the namespace lifecycle admission controller.

## 10. Troubleshooting angle
- So the issuer is Kubernetes, but the subject, which is what this certificate is issued to, is the common name for that is kube-apiserver.
- Now, what is the name of the CA who issued the Kube API Server Certificate?
- If you at here you have the issuer and the name is Kubernetes.
- So Kubernetes is the CA who issued the Kube API Server Certificate.
- And here we can see the issuer is etcd-ca.
- Now, how long from the issue date is the Kube API Server Certificate valid for?
- How long from the issue date is the Root CA Certificate valid for?
- Someone recently modified this particular file, so you're asked to investigate and fix the issue.
- And once you fix the issue, wait for some time for kubectl to respond.
- So let's quickly check the logs of that container and we see that it has this error, error while dialing tcp 127.0.0.1:2379.

## 11. CKA / CKAD relevance
- And private keys are usually with extension ".key" or with a "-key" in the file names, for example, server.key or server-key.pem.
- For example, an administrator interacting with the Kubernetes cluster through the Kube control utility, or while accessing the Kubernetes API directly must establish secure TLS connection.
- For example, the Kube API server communicates with the ETCD server.
- So as we discussed, the Kube API Server has multiple names.
- As we have seen already, the Kubernetes cluster consists of multiple nodes physical or virtual, and various components that work together.
- We will go over some examples in the upcoming slides.
- So let's take that as an example and look at it in a bit more detail.
- So that's one example of how an admission controller works.
- The Kubernetes API is grouped into multiple such groups based on their purpose, such as one for APIs, one for health, one for metrics and logs, etc. the version API is for viewing the version of the cluster.
- The Kubernetes API is grouped into multiple such groups based on their purpose, such as one for APIs, one for health, one for metrics and logs, etc. the version API is for viewing the version of the cluster as we just saw.

## 12. Source Contributions
- Matched Global Concepts:
  - TLS in Kubernetes (match score: 2, notes: 75)
  - Lab Solution - View Certification Details (match score: 2, notes: 227)
  - Kubernetes Security Primitives (match score: 2, notes: 63)
  - Authentication (match score: 2, notes: 88)
  - Admission Controllers (match score: 2, notes: 66)
  - Solution_ Admission Controllers (match score: 2, notes: 68)
  - API Groups (match score: 2, notes: 106)
  - Service Accounts (match score: 2, notes: 181)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 507 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 105 note entries
  - certified-kubernetes-application-developer / 09_Security: 262 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 13 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 20 | Type Exam Tip

