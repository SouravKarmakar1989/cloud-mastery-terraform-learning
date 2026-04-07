# Normalized Concept: DNS

- Concept Key: dns
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1408

## 1. Definition
- -: Okay, in this video we're gonna look at CoreDNS in Kubernetes.
- So let's do set my alias.
- Let's do get pods.
- Dash n kube system.
- We see all the pods in the kube system in space and we see that we have the CoreDNS pods.
- So these are so, so we use CoreDNS as the DNS solution.
- So we see that there are two, so that's the answer to that.
- There are two plots.
- So that's the service that's used for accessing the DNS server.
- So that is kube-DNS.

## 2. First-Principles Mental Model
- So the first question is to identify the DNS solution implemented in this cluster.
- Okay, the next question is how many pods of the DNS server are deployed?
- Now, what is the name of the service created for accessing CoreDNS?
- So the name of the service created for accessing CoreDNS, so let's do a service that is we see in the kube system namespace and we see that there's only one service called KubeDNS.
- So is it pulled from gate when it starts or is it configured as a conflict map object?
- And so if you have volume mounts, then you have volumes.
- So this is where the volumes are configured.
- Okay, so the next question is, what is the name of the config map object created for core file?
- Now, what is the root domain or zone configured for this kubernetes cluster?
- Now we have deployed a set of pods and services in the default and payroll namespaces, to inspect them and go to the next question, right?

## 3. Why This Exists
- So the first question is to identify the DNS solution implemented in this cluster.
- So we see that there are two, so that's the answer to that.
- So that's the service that's used for accessing the DNS server.
- So that is kube-DNS.
- Now, what is the IP of the CoreDNS server that should be configured on the pods to resolve services.
- So that's the IP of this service.
- So that's this one.
- So let's take a closer look at those pods to a describe pod in the kube system namespace.
- But here, if you look at here these are the arguments that are passed to the CoreDNS container.
- So that's etc, CoreDNS, core file.

## 4. Internal Working
- So the first question is to identify the DNS solution implemented in this cluster.
- Okay, the next question is how many pods of the DNS server are deployed?
- Now, what is the name of the service created for accessing CoreDNS?
- So the name of the service created for accessing CoreDNS, so let's do a service that is we see in the kube system namespace and we see that there's only one service called KubeDNS.
- So is it pulled from gate when it starts or is it configured as a conflict map object?
- And so if you have volume mounts, then you have volumes.
- So this is where the volumes are configured.
- Okay, so the next question is, what is the name of the config map object created for core file?
- Now, what is the root domain or zone configured for this kubernetes cluster?
- Now we have deployed a set of pods and services in the default and payroll namespaces, to inspect them and go to the next question, right?
- So there's, there are four pods and then there's also another namespace called payroll.
- And, but first, how do you access the HR application, right?

## 5. Key Objects / Fields / Relationships
- Let's do get pods.
- We see all the pods in the kube system in space and we see that we have the CoreDNS pods.
- Okay, the next question is how many pods of the DNS server are deployed?
- Now, what is the name of the service created for accessing CoreDNS?
- So the name of the service created for accessing CoreDNS, so let's do a service that is we see in the kube system namespace and we see that there's only one service called KubeDNS.
- So that's the service that's used for accessing the DNS server.
- Now, what is the IP of the CoreDNS server that should be configured on the pods to resolve services.
- So all the pods should have the IP of the CoreDNS service.
- So that's the IP of this service.
- Now, where is the configuration file located for configuring the CoreDNS service?

## 6. YAML Deep Dive
- And we can also see this if we do, so let's say we do a kubectl, get pod, and we look at it in the yaml format.
- So this is the spec section.
- Always look at the spec section.
- Now we have deployed a set of pods and services in the default and payroll namespaces, to inspect them and go to the next question, right?
- So that's not, that's not the right kind of convention.
- Ingress is implemented by Kubernetes in kind of the same way you first deploy a supported solution, which happens to be any of these listed here, and then specify a set of rules to configure ingress.
- This is a special build of index.
- Built specifically to be used as an ingress controller in Kubernetes, so it has its own set of requirements within the image.
- The nginx service requires these to read the configuration data within the pod, and finally specify the ports used by the ingress controller, which happens to be 80 and 443.
- In this case, ingress dot YAML.

## 7. kubectl / command usage
- And we can also see this if we do, so let's say we do a kubectl, get pod, and we look at it in the yaml format.
- So you can execute the curl command, or you can test applications also have a UI.
- So let's do a kubectl get svc because that's in the default namespace, and we see that there are multiple services.
- Let's do a kubectl, get pod, payroll.
- So let's do a kubectl describe, svc, webservice.
- So we don't, we don't see a MySQL server here, so let's do a, get, let's do a kubectl, get pods and all namespaces so we can see all the pods.
- So let's do a kubectl describe deployment web app.
- So we're gonna do a exec HR and then give a command.
- And what the command we need to run is nslookup, we'll do a MySQL and it says it's not found, so we know that since the HR app is in the default namespace and MySQL is in the payroll namespace, we should be appending payroll to the name.
- So you must pass that as the command to start with nginx controller service.

## 8. Real-world scenarios
- So the first question is to identify the DNS solution implemented in this cluster.
- Okay, the next question is how many pods of the DNS server are deployed?
- Now, what is the root domain or zone configured for this kubernetes cluster?
- So let's cluster.local.
- Now we have deployed a set of pods and services in the default and payroll namespaces, to inspect them and go to the next question, right?
- So webservice.payroll, you know it works, webservice.payroll.svc.cluster.
- So payroll.svc.cluster.
- So that doesn't work because it should either be, webservice.payroll or it should be webservice.payroll.svc Or it should be webservice.payroll.svc.cluster.local because cluster.local is the root domain, the root zone.
- So you should always, you should either use cluster.local or you shouldn't use anything at all.
- So cluster is something that doesn't work.

## 9. Pitfalls and misunderstandings
- So we don't, we don't see a MySQL server here, so let's do a, get, let's do a kubectl, get pods and all namespaces so we can see all the pods.
- For example, we do not want the users to have to type in the IP address every time.
- Now, you don't want your users to have to remember port number either.
- But now you don't want your developers to implement it in their applications, as they would do it in different ways, and it's an additional burden for them to develop additional code to handle that.
- As I mentioned, you do not have an ingress controller on Kubernetes by default, so you must deploy one.
- So if it's a single backend then you don't really have any rules.
- Now back in your application, say a user visits the URL, my online store or com slash listen or slash eat and you don't have an audio streaming or a food delivery service.
- We don't need that.
- And let me just copy the whole thing and just delete what I don't need.
- But since this is a scratch data and we don't actually need the data to persist, we just need it to be available during the lifetime of the pod.

## 10. Troubleshooting angle
- So that fails.
- So the issue is with the name.
- And finally, anything other than the ones listed here will go to the fourth rule that will simply show a 404 not found error page.
- You can do this by configuring a default back end service to display this 404 not found error page.
- Let's apply this and hope there's no errors.
- You got to use a path type prefix route request center path slash.
- You can see it's going to use path type prefix.
- It's going to be under TLS issue a certificate.
- And it looks like there's an error.
- Make sure that it's recreated restarted automatically in case of failures.

## 11. CKA / CKAD relevance
- So there are multiple applications, so that's fine.
- So let's do a kubectl get svc because that's in the default namespace, and we see that there are multiple services.
- In this example, a port of 30080 is allocated for the service.
- For example, a video streaming service.
- Out of these, GCE and nginx are currently being supported and maintained by the Kubernetes project, and in this lecture we will use nginx as an example.
- For example, if the user visits where my online store.
- For example, you create one rule for traffic originating from each domain or hostname.
- And just in case you didn't know, you could get different domain names to reach your cluster by adding multiple DNS entries, all pointing to the same ingress controller service on your Kubernetes cluster.
- For example, within rule one, you can handle the where path to route the traffic to the cloud application, and a watch path to route the traffic to the video streaming application.
- For example, say you have different applications and services within the apparel section for the shopping or returns or support when a user goes to my online store.

## 12. Source Contributions
- Matched Global Concepts:
  - Lab Solution - Explore DNS (optional) (match score: 1, notes: 209)
  - Ingress (match score: 1, notes: 192)
  - Mock Exam - 2 - Solution _ (Optional) (match score: 1, notes: 624)
  - Prerequisite DNS (match score: 1, notes: 156)
  - DNS in kubernetes (match score: 1, notes: 60)
  - CoreDNS in Kubernetes (match score: 1, notes: 70)
  - Stateful Sets Introduction (match score: 1, notes: 24)
  - Headless Services (match score: 1, notes: 73)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 687 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 624 note entries
  - certified-kubernetes-application-developer / 08_State Persistence: 97 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 2 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 4 | Type Command
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 9 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 12 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 13 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 16 | Type Best Practice
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 17 | Type Best Practice
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-009_section_concept_map.md | 230_Lab Solution - Explore DNS (optional).extraction.md | Entry 20 | Type Concept

