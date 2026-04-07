# Normalized Concept: Controller Manager

- Concept Key: controller-manager
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 617

## 1. Definition
- In this lecture, we'll look at how to generate the certificates for the cluster to generate certificates.
- There are different tools available such as easy RSA, OpenSSL or SSL etc. or many others.
- In this lecture we will use OpenSSL tool to generate certificates.
- This is where we left off.
- We will start with the CA certificates.
- The certificate signing request is like a certificate with all of your details, but with no signature.
- In the certificate signing request, we specify the name of the component the certificate is for in the common name or CN field.
- In this case, since we are creating a certificate for the Kubernetes CA, we name it Kubernetes CA.
- Finally, we sign the certificate using the OpenSSL x509 command and by specifying the certificate signing request we generated in the previous command.
- For all other certificates, we will use the CA key pair to sign them.

## 2. First-Principles Mental Model
- First we create a private key using the OpenSSL command OpenSSL RSA dash out CA key.
- Then we use the OpenSSL request command along with the key we just created to generate a certificate signing request.
- Since this is for the CA itself, it is self-signed by the CA using its own private key that it generated in the first step going forward.
- We follow the same process where we create a private key for the admin user using the OpenSSL command.
- We then generate a CSR and that is where we specify the name of the admin user which is kube admin.
- But remember this is the name that kube control client authenticates with.
- The signed certificate is then output to admin file.
- That is the certificate that the admin user will use to authenticate to Kubernetes cluster.
- We follow the same process to generate client certificates for all other components that access the kube API server.
- The kube scheduler.

## 3. Why This Exists
- In this lecture, we'll look at how to generate the certificates for the cluster to generate certificates.
- In this lecture we will use OpenSSL tool to generate certificates.
- Then we use the OpenSSL request command along with the key we just created to generate a certificate signing request.
- For all other certificates, we will use the CA key pair to sign them.
- It doesn't really have to be kube admin.
- The signed certificate is then output to admin file.
- That is the certificate that the admin user will use to authenticate to Kubernetes cluster.
- If you look at it, this whole process of generating a key and a certificate pair is similar to creating a user account for a new user, the certificate is the validated user ID and the key is like the password.
- The user account needs to be identified as an admin user and not just another basic user.
- We will discuss about groups later, but for now it's important to know that you must mention this information in your certificate signing request.

## 4. Internal Working
- First we create a private key using the OpenSSL command OpenSSL RSA dash out CA key.
- Then we use the OpenSSL request command along with the key we just created to generate a certificate signing request.
- Since this is for the CA itself, it is self-signed by the CA using its own private key that it generated in the first step going forward.
- We follow the same process where we create a private key for the admin user using the OpenSSL command.
- We then generate a CSR and that is where we specify the name of the admin user which is kube admin.
- But remember this is the name that kube control client authenticates with.
- The signed certificate is then output to admin file.
- That is the certificate that the admin user will use to authenticate to Kubernetes cluster.
- We follow the same process to generate client certificates for all other components that access the kube API server.
- The kube scheduler.
- The same with kube controller manager.
- So far we have created CA certificates.

## 5. Key Objects / Fields / Relationships
- In this lecture, we'll look at how to generate the certificates for the cluster to generate certificates.
- In this lecture we will use OpenSSL tool to generate certificates.
- We will start with the CA certificates.
- Then we use the OpenSSL request command along with the key we just created to generate a certificate signing request.
- The certificate signing request is like a certificate with all of your details, but with no signature.
- In the certificate signing request, we specify the name of the component the certificate is for in the common name or CN field.
- In this case, since we are creating a certificate for the Kubernetes CA, we name it Kubernetes CA.
- Finally, we sign the certificate using the OpenSSL x509 command and by specifying the certificate signing request we generated in the previous command.
- For all other certificates, we will use the CA key pair to sign them.
- The CA now has its private key and root certificate file.

## 6. YAML Deep Dive
- In the certificate signing request, we specify the name of the component the certificate is for in the common name or CN field.
- Finally, we sign the certificate using the OpenSSL x509 command and by specifying the certificate signing request we generated in the previous command.
- We then generate a CSR and that is where we specify the name of the admin user which is kube admin.
- But this time you specify the CA certificate and the CA key.
- You specify the key, the certificate, and the CA certificate as options.
- Within that, specify the API server endpoint, details, the certificates to use, etc. that is what most of the Kubernetes clients use.
- So whenever you configure a server or a client with certificates, you will need to specify the CA root certificate as well.
- Once the certificates are generated, specify them while starting the etcd server.
- There are key and cert file options where you specify the etcd server keys.
- There are other options available for specifying the peer certificates.

## 7. kubectl / command usage
- First we create a private key using the OpenSSL command OpenSSL RSA dash out CA key.
- Then we use the OpenSSL request command along with the key we just created to generate a certificate signing request.
- Finally, we sign the certificate using the OpenSSL x509 command and by specifying the certificate signing request we generated in the previous command.
- We follow the same process where we create a private key for the admin user using the OpenSSL command.
- And when you run the kube control command.
- Finally, generate a signed certificate using the OpenSSL zero nine command.
- So we use the same set of commands as earlier to generate a key.
- Keep these commands handy while you look for information.
- So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.

## 8. Real-world scenarios
- In this lecture, we'll look at how to generate the certificates for the cluster to generate certificates.
- There are different tools available such as easy RSA, OpenSSL or SSL etc. or many others.
- It doesn't really have to be kube admin.
- That makes this a valid certificate within your cluster.
- That is the certificate that the admin user will use to authenticate to Kubernetes cluster.
- Take the admin certificate for instance to manage the cluster.
- Etcd server can be deployed as a cluster across multiple servers as in a high availability environment.
- In that case, to secure communication between the different members in the cluster, we must generate additional peer certificates.
- There are other options available for specifying the peer certificates.
- But wait, the API server is the most popular of all components within the cluster.

## 9. Pitfalls and misunderstandings
- Its real name is Kube API server, but some call it Kubernetes because for a lot of people who don't really know what goes under the hoods of Kubernetes?
- So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.
- We don't see anything useful here in the events.
- So in case any of your controllers don't seem to work or exist, this would be a good starting point to look at.
- You don't really need to use the cube control command line instead.
- If you bootstrapped your cluster using kube admin tool, Then you don't need to know this, but if you are setting up the hard way, then the cube API server is available as a binary in the Kubernetes release page.
- You don't have to understand all of the options right now, but I think having a high level understanding on some of these now will make it easier later when we configure the whole cluster and all of its components from scratch.

## 10. Troubleshooting angle
- Now the kube scheduler is a system component part of the Kubernetes control plane, so its name must be prefixed with the keyword system.
- It is again a system component, so its name must be prefixed with the keyword system and finally kube proxy.
- -: Okay, so in this video we're going to work on troubleshooting control plane failure.
- We tried deploying an application, but it's not working troubleshoot and fix the issue.
- And then it says fail to start container kube-scheduler error response from daemon, OCI runtime create failed, starting container process kube-scheduler, executable file not found.
- And we're gonna save that and we'll see if we have we'll see the status of the pod and its in a creating container config error state.
- Okay, even though the deployment was scaled to two the number of pods does not seem to increase investigate and fix the issue.
- So here it says crash loop back off terminated error.
- So we're going to edit the controller manager manifest file to fix that issue.
- A high availability configuration is where you have redundancy across every component in the cluster, so as to avoid a single point of failure.

## 11. CKA / CKAD relevance
- Etcd server can be deployed as a cluster across multiple servers as in a high availability environment.
- And private keys are usually with extension ".key" or with a "-key" in the file names, for example, server.key or server-key.pem.
- For example, an administrator interacting with the Kubernetes cluster through the Kube control utility, or while accessing the Kubernetes API directly must establish secure TLS connection.
- For example, the Kube API server communicates with the ETCD server.
- Finally, the etcd server listens on port 2379 if you have multiple master nodes.
- So we look at volume mounts here and we can see there are multiple volume mounts.
- For example, a container or pod on the worker node crashes.
- Similarly, since the kube API server is not available, you cannot access the cluster externally through kube control tool or through API for management purposes, which is why you must consider multiple master nodes in a high availability configura...
- The application, of course, which we already have multiple copies in the form of replica sets and services.
- Running multiple instances of the same components?

## 12. Source Contributions
- Matched Global Concepts:
  - TLS in Kubernetes - Certificate Creation (match score: 2, notes: 133)
  - TLS in Kubernetes (match score: 2, notes: 75)
  - Cluster Networking (match score: 2, notes: 31)
  - Lab Solution - Control Plane Failure _ (Optional) (match score: 2, notes: 144)
  - Configure High Availability (match score: 2, notes: 84)
  - Kubernetes Security Primitives (match score: 2, notes: 63)
  - Kube Controller Manager (match score: 2, notes: 41)
  - Kube-API Server (match score: 2, notes: 46)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 87 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 240 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 31 note entries
  - certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster: 84 note entries
  - certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting: 144 note entries
  - certified-kubernetes-application-developer / 09_Security: 31 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 6 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 7 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 12 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 18 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 19 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 20 | Type Concept

