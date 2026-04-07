# Normalized Concept: Coredns

- Concept Key: coredns
- Matched Global Concept Blocks: 2
- Source-backed Note Entries Used: 279

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
- We then point these pods to the DNS server by adding an entry into their Etsy resolv.conf file, specifying that the Nameserver is at the IP address of the DNS server, which happens to be 1.96.0.1.
- This is kind of how Kubernetes does it, except that it does not create similar entries for pods to map pod name to its IP address, as we have seen in the previous lecture.
- For example, say a pod tries to reach w-w-w-what google.com, it is forwarded to the nameserver specified in the DNS pods.
- For that, you need to specify the full FQDN of the pod.

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
- If you try to manually look up the web service using Nslookup or the Host Web Service command, it will return the fully qualified domain name of the web service, which happens to be Web Service default SVC cluster local.

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
- Now you don't have to configure this yourself.

## 10. Troubleshooting angle
- So that fails.
- So the issue is with the name.
- The ones highlighted in orange plugins are configured for handling errors, reporting, health monitoring, metrics, cache, etc. the plugin that makes core DNS work with Kubernetes is the Kubernetes plugin, and that is where the top level domain name...

## 11. CKA / CKAD relevance
- So there are multiple applications, so that's fine.
- So let's do a kubectl get svc because that's in the default namespace, and we see that there are multiple services.
- With the Kubernetes plugin, there are multiple options.
- For example, say a pod tries to reach w-w-w-what google.com, it is forwarded to the nameserver specified in the DNS pods.

## 12. Source Contributions
- Matched Global Concepts:
  - Lab Solution - Explore DNS (optional) (match score: 1, notes: 209)
  - CoreDNS in Kubernetes (match score: 1, notes: 70)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 279 note entries
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

