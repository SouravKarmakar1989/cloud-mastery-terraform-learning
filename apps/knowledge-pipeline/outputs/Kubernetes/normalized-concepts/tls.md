# Normalized Concept: TLS

- Concept Key: tls
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1457

## 1. Definition
- Instructor: So in this video we're going to look at the solution for the lab on viewing certificate details.
- So the first question is to identify the certificate file used for the kube-api server.
- So let's look at the manifest files for the kube-api server.
- So we know that they are under etc/kubernetes/manifest and we have the kube-apiserver.
- And if you look at this file, we know that we need to look for the certificate file used for the kube-api server.
- So these are the files to connect to the ETCD Server.
- These are the kubelet, have the proxy and the certificate for the kube-api server itself are these.
- So we have the certificate file here and the key here.
- So /etc/kubernetes/pki/apiserver.crt, pki/apiserver.crt.
- So that's this one.

## 2. First-Principles Mental Model
- So the first question is to identify the certificate file used for the kube-api server.
- So let's look at the manifest files for the kube-api server.
- And if you look at this file, we know that we need to look for the certificate file used for the kube-api server.
- So these are the files to connect to the ETCD Server.
- These are the kubelet, have the proxy and the certificate for the kube-api server itself are these.
- Okay, so identify the certificate file used to authenticate kube-apiserver as a client to ETCD Server.
- And kube-apiserver connecting to ETCD Server, is connecting to ETCD Server as a client.
- So this is the address of the ETCD Server.
- And then you have the cafile, the certfile and the key.
- Here we're asked to identify the certificate file used to authenticate the kube-apiserver to ETCD.

## 3. Why This Exists
- Instructor: So in this video we're going to look at the solution for the lab on viewing certificate details.
- So the first question is to identify the certificate file used for the kube-api server.
- And if you look at this file, we know that we need to look for the certificate file used for the kube-api server.
- So these are the files to connect to the ETCD Server.
- So that's this one.
- Okay, so identify the certificate file used to authenticate kube-apiserver as a client to ETCD Server.
- And kube-apiserver connecting to ETCD Server, is connecting to ETCD Server as a client.
- Here we're asked to identify the certificate file used to authenticate the kube-apiserver to ETCD.
- So the cert file is this, so that's /etc/kubernetes/pki/apiserver-etcd-client.crt, etcd-client.crt.
- Okay, identify the key used to authenticate the kubeapi-server to the kubelet server.

## 4. Internal Working
- So the first question is to identify the certificate file used for the kube-api server.
- So let's look at the manifest files for the kube-api server.
- And if you look at this file, we know that we need to look for the certificate file used for the kube-api server.
- So these are the files to connect to the ETCD Server.
- These are the kubelet, have the proxy and the certificate for the kube-api server itself are these.
- Okay, so identify the certificate file used to authenticate kube-apiserver as a client to ETCD Server.
- And kube-apiserver connecting to ETCD Server, is connecting to ETCD Server as a client.
- So this is the address of the ETCD Server.
- And then you have the cafile, the certfile and the key.
- Here we're asked to identify the certificate file used to authenticate the kube-apiserver to ETCD.
- So the cert file is this, so that's /etc/kubernetes/pki/apiserver-etcd-client.crt, etcd-client.crt.
- Okay, identify the key used to authenticate the kubeapi-server to the kubelet server.

## 5. Key Objects / Fields / Relationships
- Instructor: So in this video we're going to look at the solution for the lab on viewing certificate details.
- So the first question is to identify the certificate file used for the kube-api server.
- So let's look at the manifest files for the kube-api server.
- So we know that they are under etc/kubernetes/manifest and we have the kube-apiserver.
- And if you look at this file, we know that we need to look for the certificate file used for the kube-api server.
- These are the kubelet, have the proxy and the certificate for the kube-api server itself are these.
- So we have the certificate file here and the key here.
- So /etc/kubernetes/pki/apiserver.crt, pki/apiserver.crt.
- Okay, so identify the certificate file used to authenticate kube-apiserver as a client to ETCD Server.
- So this is the kube-apiserver configuration.

## 6. YAML Deep Dive
- So let's look at the manifest files for the kube-api server.
- So we know that they are under etc/kubernetes/manifest and we have the kube-apiserver.
- So for this we're going to look at the ETCD Server manifest file.
- Okay, so it says the connection to the server was refused, did you specify the right host or port?
- So let's look at the ETCD manifest files.
- So that's /etc/kubernetes/manifests/etcd.yml.
- Now inspect the kube-api server logs and identify the root cause and fix the issue.
- So that's under manifest, kube-api server.
- So here you should be specifying that and not the the Kubernetes CA file.
- So here you can see some nginx configurations pass through such as SSL redirect, etc. as such, you'll see real complex annotations specified in different ingress rules such as to configure course.

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
- Instructor: So in this video we're going to look at the solution for the lab on viewing certificate details.
- So it could be controlplane, kubernetes, kubernetes.default, kubernetes.default.svc, kubernetes.default.svc.cluster.local and this IP addresses as well.
- And we realized that it was a certificate issue somewhere.
- Well, that's all for this lab.
- So here you can see some nginx configurations pass through such as SSL redirect, etc. as such, you'll see real complex annotations specified in different ingress rules such as to configure course.
- And in the second example we're using traffic controller.
- The cluster operators would then configure the gateway, which are instances of the gateway class.
- The name is example class and the controller name is Gateway Controller.
- Now remember that like ingress, we must also deploy a controller for gateway.
- Kind is gateway, name is example gateway and it has the gateway class specified, which is the gateway class we created above.

## 9. Pitfalls and misunderstandings
- And we see, don't see errors anymore so let's check.
- And we see, we don't see those errors anymore.
- Its real name is Kube API server, but some call it Kubernetes because for a lot of people who don't really know what goes under the hoods of Kubernetes?
- When the cluster is set up, we have three nodes that do not have a leader elected.
- Now that it is elected the leader, it sends out notification at regular intervals to other masters, informing them that it is continuing to assume the role of the leader in case the other nodes do not receive a notification from the leader at some...
- So don't worry if you don't fully understand this piece of code.
- We don't need that.
- And let me just copy the whole thing and just delete what I don't need.
- But since this is a scratch data and we don't actually need the data to persist, we just need it to be available during the lifetime of the pod.
- And I don't know why it always moves over I don't want it to do that.

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
- So as we discussed, the Kube API Server has multiple names.
- And in the second example we're using traffic controller.
- The name is example class and the controller name is Gateway Controller.
- Kind is gateway, name is example gateway and it has the gateway class specified, which is the gateway class we created above.
- And then we have the HTTP listeners configured with the HTTP and port 80 And finally we have the escape route rule, which is again gateway networking.io v1 as the API version kind is HTTP route name is example HTTP route is the example gateway we ...
- It matches requests coming in with the hostname or example.com, and a rule is configured that has a path login and the back end service.
- It refers to is the example service which is the service on the cluster.
- In this example, the HTTP traffic from gateway example gateway with the host header set to w-w-w-what example.com and the request path specified as login will be routed to the service.
- Example svc on port 8080.
- Here's another example.

## 12. Source Contributions
- Matched Global Concepts:
  - Lab Solution - View Certification Details (match score: 1, notes: 227)
  - Introduction to Gateway API (2025 updates) (match score: 1, notes: 101)
  - TLS in Kubernetes (match score: 1, notes: 75)
  - TLS in Kubernetes - Certificate Creation (match score: 1, notes: 133)
  - ETCD in HA (match score: 1, notes: 134)
  - Validating and Mutating Admission Controllers (match score: 1, notes: 96)
  - Solution_ Validating and Mutating Admission Controllers (match score: 1, notes: 67)
  - Mock Exam - 2 - Solution _ (Optional) (match score: 1, notes: 624)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 435 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 101 note entries
  - certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster: 134 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 624 note entries
  - certified-kubernetes-application-developer / 09_Security: 163 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 2 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 3 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 5 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 6 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 7 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 11 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 13 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 15 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 16 | Type Implementation Step
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 17 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 18 | Type Architecture
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-007_section_concept_map.md | 153_Lab Solution - View Certification Details.extraction.md | Entry 20 | Type Architecture

