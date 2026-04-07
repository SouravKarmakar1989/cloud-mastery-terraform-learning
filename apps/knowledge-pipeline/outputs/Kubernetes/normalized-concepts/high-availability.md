# Normalized Concept: High Availability

- Concept Key: high-availability
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1156

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
- So when you run the the get pods command in the kube system namespace, you can then see the new custom scheduler running.
- Now create the pod using the kubectl create command.
- So if the pod is in a the pending state, then you can look at the logs under the pod describe command.

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
- You don't have to memorize the numbers that we discussed as these are available in the documentation page.
- Now the default scheduler doesn't really need one because if you don't specify a name it sets the name to default scheduler.
- It can have labels, but we don't need that for now.
- If you don't provide a target port, it is assumed to be the same as port.
- And if you don't provide a node port, a free port in the valid range between 30,000 and 32,767 is automatically allocated.
- You don't have to do any additional configuration to make this happen.

## 10. Troubleshooting angle
- Now the kube scheduler is a system component part of the Kubernetes control plane, so its name must be prefixed with the keyword system.
- It is again a system component, so its name must be prefixed with the keyword system and finally kube proxy.
- You could also view the logs of the scheduler in case you run into issues.
- What if for some reason our application crashes and the pod fails, users will no longer be able to access our application?
- That way, if one fails, we still have our application running on the other one.
- Even if you have a single pod, replication controller can help by automatically bringing up a new pod when the existing one fails.
- If you get this wrong, you are likely to get an error that looks like this.
- Even if you have a single pod, the replication controller can help by automatically bringing up a new pod when the existing one fails.
- A high availability configuration is where you have redundancy across every component in the cluster, so as to avoid a single point of failure.
- For example, the controller manager consists of controllers like the replication controller that is constantly watching the state of pots and taking necessary actions like creating a new pot when one fails, etc..

## 11. CKA / CKAD relevance
- Etcd server can be deployed as a cluster across multiple servers as in a high availability environment.
- A multi-node cluster with a single master and multiple worker nodes would help again.
- We look at more details about high availability setup with multiple master nodes later in this section.
- For high performance workloads, rely on SSD backed storage for multiple concurrent Current access.
- Consider network based storage for shared access to volumes across multiple pods.
- Before you go from a certification exam standpoint, there's really nothing much you need to remember from this section.
- In this lecture, we look at deploying multiple schedulers in a Kubernetes cluster.
- You can write your own Kubernetes Scheduler program, package it, and deploy it as the default scheduler, or as an additional scheduler in Kubernetes cluster.
- However, some specific applications that you may choose can use your own custom scheduler, so your Kubernetes cluster can have multiple schedulers at a time.
- Now, when there are multiple schedulers, they must have different names so that we can identify them as separate schedulers.

## 12. Source Contributions
- Matched Global Concepts:
  - TLS in Kubernetes - Certificate Creation (match score: 2, notes: 133)
  - Design a Kubernetes Cluster (match score: 2, notes: 63)
  - Multiple Schedulers (match score: 2, notes: 105)
  - Recap - ReplicaSets (match score: 2, notes: 271)
  - Services (match score: 2, notes: 241)
  - Configure High Availability (match score: 2, notes: 84)
  - Replication Controllers and ReplicaSets (match score: 2, notes: 137)
  - Services - NodePort (match score: 2, notes: 122)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 260 note entries
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 105 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 133 note entries
  - certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster: 147 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 252 note entries
  - learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments: 137 note entries
  - learn-kubernetes / 07_Services: 122 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 6 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 7 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 12 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 18 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 19 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 149_TLS in Kubernetes - Certificate Creation.extraction.md | Entry 20 | Type Concept

