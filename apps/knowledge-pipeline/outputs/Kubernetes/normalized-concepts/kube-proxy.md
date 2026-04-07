# Normalized Concept: Kube Proxy

- Concept Key: kube-proxy
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 786

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
- So the first question is, inspect the environment and identify authorization modes configured on the cluster.
- So etc kubernetes manifests kube api server.yaml.
- And inspect the permissions granted to the user.
- If you were to access the API directly through curl as shown here, then you will not be allowed access except for certain APIs like version, as you have not specified any authentication mechanisms.
- That way you don't have to specify those in the curl command.
- So here are two terms that kind of sound the same.
- Let's quickly recap the different kinds of services to make the orange pod accessible to the blue pod.

## 7. kubectl / command usage
- So let's try the command again to create a deployment called nginx in the blue namespace.
- So you have to authenticate to the API using your certificate files by passing them in the command line like this.
- The kube control proxy command launches a proxy service locally on port 8001, and uses credentials and certificates from your kube config file to access the cluster.
- That way you don't have to specify those in the curl command.
- So you have to authenticate to the API using your certificate files by passing them in the command line.
- The kube control proxy command launches a proxy service locally on port 8001, and uses credentials and certificates from your kubeconfig file to access the cluster.
- So we're going do a kubectl get roles.
- So let's do a kubectl describe, role, kube-proxy dash N kube-system.
- So you have kubectl describe role findings, kube-proxy in the default, sorry, in the kube system namespace.
- Let's do a kubectl config view.

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
- That way you don't have to specify those in the curl command.
- As a matter of fact, they don't exist at all.
- If you don't see these entries, you must also check the verbosity level of the process as well.
- Its real name is Kube API server, but some call it Kubernetes because for a lot of people who don't really know what goes under the hoods of Kubernetes?
- Then you don't have to worry about adding or removing monitoring agents from these nodes when there are changes in your cluster, as the Daemonset will take care of that for you.

## 10. Troubleshooting angle
- But there is an issue.
- So investigate and fix the issue.
- So that's fixed.
- Yep, so that should be the fix to this.
- Now the kube scheduler is a system component part of the Kubernetes control plane, so its name must be prefixed with the keyword system.
- It is again a system component, so its name must be prefixed with the keyword system and finally kube proxy.

## 11. CKA / CKAD relevance
- And private keys are usually with extension ".key" or with a "-key" in the file names, for example, server.key or server-key.pem.
- For example, an administrator interacting with the Kubernetes cluster through the Kube control utility, or while accessing the Kubernetes API directly must establish secure TLS connection.
- For example, the Kube API server communicates with the ETCD server.
- The Kubernetes API is grouped into multiple such groups based on their purpose, such as one for APIs, one for health, one for metrics and logs, etc. the version API is for viewing the version of the cluster.
- The Kubernetes API is grouped into multiple such groups based on their purpose, such as one for APIs, one for health, one for metrics and logs, etc. the version API is for viewing the version of the cluster as we just saw.
- Etcd server can be deployed as a cluster across multiple servers as in a high availability environment.
- We made sure multiple copies of our applications are made available across various different worker nodes.
- Daemonsets are like replica sets, as in, it helps you deploy multiple instances of pods, but it runs one copy of your pod on each node in your cluster.

## 12. Source Contributions
- Matched Global Concepts:
  - TLS in Kubernetes (match score: 2, notes: 75)
  - Lab Solution - Role-Based Access Controls (match score: 1, notes: 139)
  - API Groups (match score: 1, notes: 106)
  - Service Networking (match score: 1, notes: 89)
  - Solution Role Based Access Controls (match score: 1, notes: 150)
  - Lab Solution - Service Networking (optional) (match score: 1, notes: 53)
  - TLS in Kubernetes - Certificate Creation (match score: 1, notes: 133)
  - DaemonSets (match score: 1, notes: 41)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 41 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 401 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 142 note entries
  - certified-kubernetes-application-developer / 09_Security: 202 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 8 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 13 | Type Exam Tip
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 148_TLS in Kubernetes.extraction.md | Entry 20 | Type Exam Tip

