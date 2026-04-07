# Normalized Concept: Gateway API

- Concept Key: gateway-api
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 2231

## 1. Definition
- Let's now look at an introduction to gateway API.
- Earlier when we spoke about ingress, we spoke about two services sharing the same ingress resource.
- What if each service was managed by different teams or even completely different organizations or businesses?
- What if the web service was managed by team A and the video service was managed by team B?
- In such case, the underlying ingress resource is still a single resource, which can only be managed by one team at a time.
- So in a multi-tenant environment, ingress can pose a challenge.
- They would need to coordinate between handling the same ingress resource and might lead to conflicts.
- Ingress lacks sufficient support for multi-tenancy.
- Another limitation are the options for rules.
- Configuration.

## 2. First-Principles Mental Model
- Traffic splitting, header manipulation, authentication, rate limiting, and others aren't currently supported.
- These are all configured by the controllers, and these configurations are passed through to the controllers using annotations like this.
- So here you can see some nginx configurations pass through such as SSL redirect, etc. as such, you'll see real complex annotations specified in different ingress rules such as to configure course.
- This project represents the next generation of Kubernetes ingress, load balancing, and Service Mesh APIs.
- The infrastructure providers configure the gateway class.
- The cluster operators would then configure the gateway, which are instances of the gateway class.
- And then we have the HTTP routes created by the application developers.
- So let's look at how each of these are created.
- First we have the gateway class.
- Now remember that like ingress, we must also deploy a controller for gateway.

## 3. Why This Exists
- Let's now look at an introduction to gateway API.
- They would need to coordinate between handling the same ingress resource and might lead to conflicts.
- These are all configured by the controllers, and these configurations are passed through to the controllers using annotations like this.
- So here you can see some nginx configurations pass through such as SSL redirect, etc. as such, you'll see real complex annotations specified in different ingress rules such as to configure course.
- The challenge here as you can see, is that these configurations are very specific to the underlying controllers nginx and traffic respectively.
- These configuration are merely passed to the underlying controllers.
- It has the API version set to gateway network I o v1.
- It refers to is the example service which is the service on the cluster.
- In this example, the HTTP traffic from gateway example gateway with the host header set to w-w-w-what example.com and the request path specified as login will be routed to the service.
- So back to a few limitations that we saw with ingress.

## 4. Internal Working
- Traffic splitting, header manipulation, authentication, rate limiting, and others aren't currently supported.
- These are all configured by the controllers, and these configurations are passed through to the controllers using annotations like this.
- So here you can see some nginx configurations pass through such as SSL redirect, etc. as such, you'll see real complex annotations specified in different ingress rules such as to configure course.
- This project represents the next generation of Kubernetes ingress, load balancing, and Service Mesh APIs.
- The infrastructure providers configure the gateway class.
- The cluster operators would then configure the gateway, which are instances of the gateway class.
- And then we have the HTTP routes created by the application developers.
- So let's look at how each of these are created.
- First we have the gateway class.
- Now remember that like ingress, we must also deploy a controller for gateway.
- Next we have gateway object.
- Let's see how those are configured in gateway API.

## 5. Key Objects / Fields / Relationships
- Let's now look at an introduction to gateway API.
- Earlier when we spoke about ingress, we spoke about two services sharing the same ingress resource.
- What if each service was managed by different teams or even completely different organizations or businesses?
- What if the web service was managed by team A and the video service was managed by team B?
- In such case, the underlying ingress resource is still a single resource, which can only be managed by one team at a time.
- So in a multi-tenant environment, ingress can pose a challenge.
- They would need to coordinate between handling the same ingress resource and might lead to conflicts.
- Ingress lacks sufficient support for multi-tenancy.
- Ingress only supports HTTP based rules such as host matching or path matching.
- These are all configured by the controllers, and these configurations are passed through to the controllers using annotations like this.

## 6. YAML Deep Dive
- So here you can see some nginx configurations pass through such as SSL redirect, etc. as such, you'll see real complex annotations specified in different ingress rules such as to configure course.
- We have some nginx specification configuration here.
- The challenge here as you can see, is that these configurations are very specific to the underlying controllers nginx and traffic respectively.
- And these configurations can now only be used with these specific controllers.
- Kind is gateway, name is example gateway and it has the gateway class specified, which is the gateway class we created above.
- And then we have the HTTP listeners configured with the HTTP and port 80 And finally we have the escape route rule, which is again gateway networking.io v1 as the API version kind is HTTP route name is example HTTP route is the example gateway we ...
- In this example, the HTTP traffic from gateway example gateway with the host header set to w-w-w-what example.com and the request path specified as login will be routed to the service.
- We need to use the nginx specific annotation.
- Everything is defined in the proper spec, no annotations needed.
- Specifies which kinds of routes can attach to this listener, in this case HTTP routes.

## 7. kubectl / command usage
- And it should run the following command to simulate writing logs.
- And then we have to add a sidecar container name log agent that also uses the BusyBox image and runs the command that's listed here.
- And then what this should do is basically run this command.
- So we have to change the command of the container.
- So that will overwrite the default command of the BusyBox container or the image.
- And then it's going to run this command.
- And then the command that should run.
- So I'll do a kubectl get deploy dash n ingress dash s.
- And we'll do a kubectl get ingress class.
- So to do that what I'm going to do is I'm going to do kubectl create deployment.

## 8. Real-world scenarios
- So here you can see some nginx configurations pass through such as SSL redirect, etc. as such, you'll see real complex annotations specified in different ingress rules such as to configure course.
- And in the second example we're using traffic controller.
- The cluster operators would then configure the gateway, which are instances of the gateway class.
- The name is example class and the controller name is Gateway Controller.
- Now remember that like ingress, we must also deploy a controller for gateway.
- Kind is gateway, name is example gateway and it has the gateway class specified, which is the gateway class we created above.
- And then we have the HTTP listeners configured with the HTTP and port 80 And finally we have the escape route rule, which is again gateway networking.io v1 as the API version kind is HTTP route name is example HTTP route is the example gateway we ...
- It matches requests coming in with the hostname or example.com, and a rule is configured that has a path login and the back end service.
- It refers to is the example service which is the service on the cluster.
- In this example, the HTTP traffic from gateway example gateway with the host header set to w-w-w-what example.com and the request path specified as login will be routed to the service.

## 9. Pitfalls and misunderstandings
- We don't need that.
- And let me just copy the whole thing and just delete what I don't need.
- But since this is a scratch data and we don't actually need the data to persist, we just need it to be available during the lifetime of the pod.
- And I don't know why it always moves over I don't want it to do that.
- Now we don't need to do this because this is the default one.
- I don't think there's going to be a full example.
- But we don't want to test.
- Do not delete any existing policies, so we want to find one of the policies.
- So I don't think this is the one that we want.
- And it's going to allow traffic from the database namespace, which is not what we want, because we do not want traffic coming from the databases in the database namespace.

## 10. Troubleshooting angle
- Let's apply this and hope there's no errors.
- You got to use a path type prefix route request center path slash.
- You can see it's going to use path type prefix.
- It's going to be under TLS issue a certificate.
- And it looks like there's an error.
- Make sure that it's recreated restarted automatically in case of failures.
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.

## 11. CKA / CKAD relevance
- And in the second example we're using traffic controller.
- The name is example class and the controller name is Gateway Controller.
- Kind is gateway, name is example gateway and it has the gateway class specified, which is the gateway class we created above.
- And then we have the HTTP listeners configured with the HTTP and port 80 And finally we have the escape route rule, which is again gateway networking.io v1 as the API version kind is HTTP route name is example HTTP route is the example gateway we ...
- It matches requests coming in with the hostname or example.com, and a rule is configured that has a path login and the back end service.
- It refers to is the example service which is the service on the cluster.
- In this example, the HTTP traffic from gateway example gateway with the host header set to w-w-w-what example.com and the request path specified as login will be routed to the service.
- Example svc on port 8080.
- Here's another example.
- Here's just another example.

## 12. Source Contributions
- Matched Global Concepts:
  - Introduction to Gateway API (2025 updates) (match score: 2, notes: 101)
  - Mock Exam - 2 - Solution _ (Optional) (match score: 1, notes: 624)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 1, notes: 485)
  - Lab Solution - Application Failure _ (Optional) (match score: 1, notes: 300)
  - Solution - Mock Exam -1 (Optional) (match score: 1, notes: 344)
  - Solution - Rolling Updates and Rollbacks (match score: 1, notes: 156)
  - Solution - Services (match score: 1, notes: 124)
  - Solution - Services (optional) (match score: 1, notes: 97)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 101 note entries
  - certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting: 300 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 1453 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 97 note entries
  - learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments: 156 note entries
  - learn-kubernetes / 07_Services: 124 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 8 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 13 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 14 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 15 | Type Implementation Step
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 17 | Type Exam Tip
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 18 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-009_section_concept_map.md | 238_Introduction to Gateway API (2025 updates).extraction.md | Entry 20 | Type Concept

