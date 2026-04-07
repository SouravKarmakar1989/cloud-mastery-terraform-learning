# Normalized Concept: Ingress

- Concept Key: ingress
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1094

## 1. Definition
- -: Okay, so let's go through this lab on the Ingress controller.
- So explore the setup.
- So let's look at the nodes.
- There's a single node.
- Let's check all namespaces.
- Let's look at the Ingress controller which is usually in kube-system namespace.
- Let me see.
- Nope, it's in the Ingress namespace, which is, sorry, it's given here, so it's Ingress-NGINX.
- And yeah, well, so we see the Ingress controller and the other parts right here.
- So if you wanna get pods -a command, and we see all the parts and we see the Ingress controller here and we see that as part of the Ingress-NGINX namespace.

## 2. First-Principles Mental Model
- So we have deployed Ingress controller resources and applications.
- So let's first look at the environment.
- Let's look at the deployments.
- So there are no deployments.
- So there are deployments in other namespaces.
- So there are deployments in the appspace, The Ingress-NGINX space, the kube-system space.
- Okay, so which namespace is the Ingress controller deployed in?
- Now, what is the name of the Ingress controller deployment?
- So the Ingress controller deployment, this is the name of the deployment.
- So we can also verify that by doing a: get deploy in the Ingress-NGINX namespace.

## 3. Why This Exists
- So that's three applications.
- So it's set to star.
- So that's in the appspace namespace.
- Just so the wear path is configured to the wear service, that's the wear service.
- So we know that if the requirement, if it does not match any of these is going to go to the default backend.
- Now view the applications by appending the wear and watch to the URL that you opened.
- You're requested to change the URLs at which the applications are made available.
- So all we have to do is replace this with stream, and let's save that.
- So that's successful.
- Now a user is trying to view the Eat URL on the Ingress service, which paid would he see?

## 4. Internal Working
- So we have deployed Ingress controller resources and applications.
- So let's first look at the environment.
- Let's look at the deployments.
- So there are no deployments.
- So there are deployments in other namespaces.
- So there are deployments in the appspace, The Ingress-NGINX space, the kube-system space.
- Okay, so which namespace is the Ingress controller deployed in?
- Now, what is the name of the Ingress controller deployment?
- So the Ingress controller deployment, this is the name of the deployment.
- So we can also verify that by doing a: get deploy in the Ingress-NGINX namespace.
- Now, which namespace are the applications deployed in?
- How many applications are deployed in the appspace-namespace?

## 5. Key Objects / Fields / Relationships
- -: Okay, so let's go through this lab on the Ingress controller.
- So we have deployed Ingress controller resources and applications.
- So let's look at the nodes.
- There's a single node.
- Let's look at the deployments.
- So there are no deployments.
- Let's check all namespaces.
- So there are deployments in other namespaces.
- So there are deployments in the appspace, The Ingress-NGINX space, the kube-system space.
- Let's look at the Ingress controller which is usually in kube-system namespace.

## 6. YAML Deep Dive
- So I inspect the new deployments in the appspace namespace.
- So annotations go in metadata section here, and we are gonna set the rewrite target.
- Line 36 looks like a YAML issue.
- So if you look here, the namespace is not properly specified.
- All right, and, and also there are some specifications given here.
- You can also specify the port.
- So that's kind of the easiest way to do that.
- So let's clear my screen and we're going to specify the port.
- We'll name it Ingress and then we've specified these.
- We can also specify the type, so we'll say --type, going to be NodePort, that what's given here.

## 7. kubectl / command usage
- So if you wanna get pods -a command, and we see all the parts and we see the Ingress controller here and we see that as part of the Ingress-NGINX namespace.
- So we'll do a kubectl get Ingress and we'll look at all namespaces.
- So we have a command for that already: kubectl edit Ingress, the name of the Ingress resource in the appspace.
- Okay, so let's do kubectl create ingress.
- And so we do have an imperative command for that.
- So kubectl create Ingress, the name and then the role.
- So we'll do a kubectl create ConfigMap in this and the name should be as given here and generic configuration, and the Namespace is Ingress space.
- So we're going to create a service using the expose command.
- So we have the expose command and then we have the deployment, the deployment name.
- If you want a name for the service, you can use --name.

## 8. Real-world scenarios
- -: Okay, so let's go through this lab on the Ingress controller.
- So we have deployed Ingress controller resources and applications.
- Let's look at the deployments.
- So there are no deployments.
- So there are deployments in other namespaces.
- So there are deployments in the appspace, The Ingress-NGINX space, the kube-system space.
- Okay, so which namespace is the Ingress controller deployed in?
- Now, what is the name of the Ingress controller deployment?
- So the Ingress controller deployment, this is the name of the deployment.
- So we can also verify that by doing a: get deploy in the Ingress-NGINX namespace.

## 9. Pitfalls and misunderstandings
- So there's nothing called eat here, but we don't know if it is there in another space.
- And we don't have any certs for now, so let's just get rid of this.
- So if you look at this, right, the watch, wear or even the pay service, they're just available at this, they don't have a /watch or /wear at the end.
- We don't need the certificate stuff, so we'll remove that.
- Then we need to add the annotations, so the annotations for the rewrite target, because as we discussed earlier we don't want it to go to a wear and watch URL and then this is, so to prevent the redirect, SSL redirect we have to add the false, the...
- For example, we do not want the users to have to type in the IP address every time.
- Now, you don't want your users to have to remember port number either.
- But now you don't want your developers to implement it in their applications, as they would do it in different ways, and it's an additional burden for them to develop additional code to handle that.
- As I mentioned, you do not have an ingress controller on Kubernetes by default, so you must deploy one.
- So if it's a single backend then you don't really have any rules.

## 10. Troubleshooting angle
- And if you look at it, it gives us a 404 not found error.
- So we see a 404 error page.
- So it's immediately replaced, if we refresh the watch path, now we get 404 error.
- So it doesn't, there's nothing, so it's a 404 error.
- So there's a 404 error Now due to increased demand, your business decides to take on an adventure.
- But you see that it's still it's not working as expected, still gives the 404 error.
- So that's why the error.
- There are just, there are some issues.
- So it looks like there are some issues.
- So there's, there's an issue.

## 11. CKA / CKAD relevance
- So we're going to, there are multiple examples. and let's just speak the simplest one, right?
- So that's going to be useful in the exam.
- So we can have multiple rules like this.
- In this example, a port of 30080 is allocated for the service.
- For example, a video streaming service.
- Out of these, GCE and nginx are currently being supported and maintained by the Kubernetes project, and in this lecture we will use nginx as an example.
- For example, if the user visits where my online store.
- For example, you create one rule for traffic originating from each domain or hostname.
- And just in case you didn't know, you could get different domain names to reach your cluster by adding multiple DNS entries, all pointing to the same ingress controller service on your Kubernetes cluster.
- For example, within rule one, you can handle the where path to route the traffic to the cloud application, and a watch path to route the traffic to the video streaming application.

## 12. Source Contributions
- Matched Global Concepts:
  - Solution_ Ingress Networking - 1 (match score: 1, notes: 200)
  - Solution_ Ingress Networking - 2 (match score: 1, notes: 156)
  - Ingress Networking (match score: 1, notes: 192)
  - Network Policies (match score: 1, notes: 69)
  - Solution - Network Policies (optional) (match score: 1, notes: 161)
  - Solution_ API Versions_Deprecations (match score: 1, notes: 82)
  - Mock Exam -2 (Solution) (match score: 1, notes: 138)
  - Kubernetes on GCP (GKE) (match score: 1, notes: 96)
- Course/Section Perspective Coverage:
  - certified-kubernetes-application-developer / 07_Services & Networking: 778 note entries
  - certified-kubernetes-application-developer / 09_Security: 82 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 138 note entries
  - learn-kubernetes / 09_Kubernetes on Cloud: 96 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 2 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 4 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 7 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 10 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 11 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 16 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 19 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-024_section_concept_map.md | 118_Solution_ Ingress Networking - 1.extraction.md | Entry 20 | Type Implementation Step

