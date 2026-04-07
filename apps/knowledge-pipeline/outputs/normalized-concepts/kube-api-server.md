# Normalized Concept: Kube API Server

- Concept Key: kube-api-server
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1158

## 1. Definition
- Instructor: Okay, so in this video, we're going to look into encrypting secret data at rest.
- So if you go to the Kubernetes documentation pages and under Tasks, you have Administer a Cluster and Encrypting Secret Data at Rest, you have these following documents.
- I'm gonna follow this, but also kind of try and explain what we are trying to do.
- So this is a single node cluster.
- All right, so this basically uses, it is built with the kubeadm tool and has containerd.
- I'm just gonna maximize this and we'll just work on the terminal.
- Okay, so I'm gonna call it key1 and supersecret.
- So that's my secret object.
- So if I now do a get secret, I get to see my secret object.
- And if I do a describe secret, my-secret, I get to see the secret name and the data.

## 2. First-Principles Mental Model
- So the first thing, first things first, I'm going to start up a Kubernetes playground.
- All right, so first things first, I'm gonna first create a secret object.
- So I'm going to do a kubectl create secret, and I want a generic secret, so I'll do that, and I'll probably create a secret from literal, so I'm just going to copy this command.
- So my secret object is created.
- Okay, so that's the first thing to know that the secrets object stored in the secret configuration as you see it here is just Base64 encoded.
- So remember not to create your secret definition files and push it to GitHub or something because anyone could just pick this up and run this command and see the secret, right?
- So that's the first step, but I wanna make it clear that the scope of this video is not really relevant to this encoding here.
- What we're focusing on is how the data is stored in the etcd server, so that's the focus.
- So let's first look at how this data is stored in the etcd server.
- It uses the ETCDCTL_API version three.

## 3. Why This Exists
- Instructor: Okay, so in this video, we're going to look into encrypting secret data at rest.
- So if you go to the Kubernetes documentation pages and under Tasks, you have Administer a Cluster and Encrypting Secret Data at Rest, you have these following documents.
- I'm gonna follow this, but also kind of try and explain what we are trying to do.
- So the first thing, first things first, I'm going to start up a Kubernetes playground.
- So I'm going to do a kubectl create secret, and I want a generic secret, so I'll do that, and I'll probably create a secret from literal, so I'm just going to copy this command.
- So that's my secret object.
- So if I now do a get secret, I get to see my secret object.
- And if I do a describe secret, my-secret, I get to see the secret name and the data.
- Okay and I get to see the data here.
- And I get to the, the secret.

## 4. Internal Working
- So the first thing, first things first, I'm going to start up a Kubernetes playground.
- All right, so first things first, I'm gonna first create a secret object.
- So I'm going to do a kubectl create secret, and I want a generic secret, so I'll do that, and I'll probably create a secret from literal, so I'm just going to copy this command.
- So my secret object is created.
- Okay, so that's the first thing to know that the secrets object stored in the secret configuration as you see it here is just Base64 encoded.
- So remember not to create your secret definition files and push it to GitHub or something because anyone could just pick this up and run this command and see the secret, right?
- So that's the first step, but I wanna make it clear that the scope of this video is not really relevant to this encoding here.
- What we're focusing on is how the data is stored in the etcd server, so that's the focus.
- So let's first look at how this data is stored in the etcd server.
- It uses the ETCDCTL_API version three.
- It runs the etcdctl command, passing the CA certificates for authentication, and we're gonna get this particular secret.
- So the way that it's stored in etcd is it's stored in registry/secrets/default and this is the secret name.

## 5. Key Objects / Fields / Relationships
- Instructor: Okay, so in this video, we're going to look into encrypting secret data at rest.
- So if you go to the Kubernetes documentation pages and under Tasks, you have Administer a Cluster and Encrypting Secret Data at Rest, you have these following documents.
- So this is a single node cluster.
- All right, so this basically uses, it is built with the kubeadm tool and has containerd.
- All right, so first things first, I'm gonna first create a secret object.
- So I'm going to do a kubectl create secret, and I want a generic secret, so I'll do that, and I'll probably create a secret from literal, so I'm just going to copy this command.
- Okay, so I'm gonna call it key1 and supersecret.
- So that's my secret object.
- So my secret object is created.
- So if I now do a get secret, I get to see my secret object.

## 6. YAML Deep Dive
- I'm gonna follow this, but also kind of try and explain what we are trying to do.
- If I wanna see a little bit more, I do a dash o yaml and I'm gonna do a get secret.
- Now if you look here, so this is key1, and this is kind of the encoded format of the secret.
- If I just run this command, you can see that it kind of gives me kind of a jumbled information, but you can kind of see the secret there as is, right?
- We can also kind of verify this because this is a kubeadm setup, it uses the var /manifest etc/ kubernetes/manifests, yeah, etc/kubernetes/manifests, and here you have the kube-apiserver.
- So this is what it is, so you have the API version, you have the kind, it's encryption configuration, and then you have resources.
- So under Resources, you specify the targets.
- So we're gonna create a very simple version of this file, which is this, and this, as you can see, we have specified that all the secrets are gonna be encrypted and we're gonna use the aescbc encryption provider.
- So I'll call it enc.yaml and I'm gonna paste this, okay, should have copied the secret value first.
- So now I'm gonna edit the kube-apiserver manifest file and then make these changes.

## 7. kubectl / command usage
- All right, so this basically uses, it is built with the kubeadm tool and has containerd.
- So I'm going to do a kubectl create secret, and I want a generic secret, so I'll do that, and I'll probably create a secret from literal, so I'm just going to copy this command.
- So remember not to create your secret definition files and push it to GitHub or something because anyone could just pick this up and run this command and see the secret, right?
- Okay, so for that, if you go to the bottom of this, there is this command.
- It runs the etcdctl command, passing the CA certificates for authentication, and we're gonna get this particular secret.
- So let me first see if we have the etcdctl command line.
- So you can either ssh into the pod and then run the etcdctl command from within that.
- Now, if the client command line utility is not available, you have different options to install it on different systems.
- So if you do kubectl get pods dash kube-system, I have the etcd control plane here, right?
- So I'm gonna copy this command.

## 8. Real-world scenarios
- So if you go to the Kubernetes documentation pages and under Tasks, you have Administer a Cluster and Encrypting Secret Data at Rest, you have these following documents.
- So this is a single node cluster.
- So that's the first step, but I wanna make it clear that the scope of this video is not really relevant to this encoding here.
- So we're not really focusing on this part right here.
- Now, if the client command line utility is not available, you have different options to install it on different systems.
- So you have pods and deployments and secrets and services.
- So you need not necessarily encrypt and save all the data about pods and deployments.
- So if you really want to encrypt the data in etcd, then one of these should be at the top.
- So let's just do this real quick.
- So anything that's available here is gonna be available here.

## 9. Pitfalls and misunderstandings
- So we don't have that, so the first step is to get that installed.
- Yup, so if you do not have the etcd, so remember that the etcd server is running in a pod.
- And here, you don't see the encryption option that we've talked about here.
- So we don't have that.
- So if you do not have the ETCD on, so so remember that the ETCD server is running in a pod.
- And here you don't see the encryption option that we have talked about here.
- So the value was top secret and I don't I no longer see that here.
- And we see, don't see errors anymore so let's check.
- And we see, we don't see those errors anymore.
- You don't really need to use the cube control command line instead.

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
- Okay, so I have it installed on my machine using the package etcd-client.
- You can provide multiple keys, keys and secrets, and this secret is what will be used for the encryption by the encryption algorithm.
- Okay, so I have it installed on my machine using the ETCD, the, the package ETCD client.
- You can provide multiple keys, keys and secrets.
- So as we discussed, the Kube API Server has multiple names.
- Let's look at an example of creating a pod.
- If there are multiple pods that the service is directing traffic to, then there would be multiple ports here.
- So, let's say for example, it's set to app and FE, for front end or something.
- Moreover, having multiple nodes helps in sharing load as well.
- Think of it this way when you have multiple nodes and multiple masters in your cluster, etcd stores all that information on all the nodes in the cluster in a distributed manner.

## 12. Source Contributions
- Matched Global Concepts:
  - Demo_ Encrypting Secret Data at Rest (match score: 2, notes: 435)
  - Lab Solution - View Certification Details (match score: 2, notes: 227)
  - Kube-API Server (match score: 2, notes: 46)
  - Solution - Persistent Volume and Persistent Volume Claims (Optional) (match score: 2, notes: 201)
  - Solution - Services (optional) (match score: 1, notes: 97)
  - Recap - Kubernetes Architecture (match score: 1, notes: 66)
  - Lab Solution - Service Networking (optional) (match score: 1, notes: 53)
  - Liveness Probes (match score: 1, notes: 33)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 46 note entries
  - certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management: 203 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 227 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 53 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 163 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 232 note entries
  - certified-kubernetes-application-developer / 05_Observability: 33 note entries
  - certified-kubernetes-application-developer / 08_State Persistence: 201 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 4 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 8 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 9 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 12 | Type Implementation Step
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-005_section_concept_map.md | 112_Demo_ Encrypting Secret Data at Rest.extraction.md | Entry 20 | Type Concept

