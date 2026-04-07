# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 238_Introduction to Gateway API (2025 updates)

---

## Entry 1
Type: Concept  

Content:
Let's now look at an introduction to gateway API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
Earlier when we spoke about ingress, we spoke about two services sharing the same ingress resource.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
What if each service was managed by different teams or even completely different organizations or businesses?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
What if the web service was managed by team A and the video service was managed by team B?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
In such case, the underlying ingress resource is still a single resource, which can only be managed by one team at a time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So in a multi-tenant environment, ingress can pose a challenge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
They would need to coordinate between handling the same ingress resource and might lead to conflicts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Ingress lacks sufficient support for multi-tenancy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Another limitation are the options for rules.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Ingress only supports HTTP based rules such as host matching or path matching.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Others like TCP, UDP routing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
Traffic splitting, header manipulation, authentication, rate limiting, and others aren't currently supported.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
These are all configured by the controllers, and these configurations are passed through to the controllers using annotations like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
So here you can see some nginx configurations pass through such as SSL redirect, etc. as such, you'll see real complex annotations specified in different ingress rules such as to configure course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
We have some nginx specification configuration here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Exam Tip  

Content:
And in the second example we're using traffic controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
And so we have some traffic related configuration here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
The challenge here as you can see, is that these configurations are very specific to the underlying controllers nginx and traffic respectively.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And Kubernetes itself is not aware of these settings.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So it can't validate if they are right or wrong.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
These configuration are merely passed to the underlying controllers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So we have different configurations for different controllers for the same use case.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And these configurations can now only be used with these specific controllers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And that's where gateway APIs come in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Gateway API is an official Kubernetes project focused on layer four and layer seven routing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
This project represents the next generation of Kubernetes ingress, load balancing, and Service Mesh APIs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Now, one of the challenges we discussed with ingress was the lack of support for multi-tenancy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So we discussed that with different teams accessing the same infrastructure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
How do you provide the flexibility needed by the users while maintaining control by the owners of the infrastructure?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
This is where gateway API introduces three separate objects that are managed by three separate personas.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
The infrastructure providers configure the gateway class.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
The gateway class defines what the underlying network infrastructure would be, such as the nginx traffic or other load balancers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
The cluster operators would then configure the gateway, which are instances of the gateway class.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
And then we have the HTTP routes created by the application developers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Now unlike ingress where we only had HTTP routes, here we have TCP route and gRPC route and others.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
So let's look at how each of these are created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
First we have the gateway class.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
It has the API gateway networking I o v1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
The gateway class.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Exam Tip  

Content:
The name is example class and the controller name is Gateway Controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
Now remember that like ingress, we must also deploy a controller for gateway.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
We will talk about that in a bit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
But note that that name is what you put here under controller name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
Next we have gateway object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
It has the API version set to gateway network I o v1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Exam Tip  

Content:
Kind is gateway, name is example gateway and it has the gateway class specified, which is the gateway class we created above.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Exam Tip  

Content:
And then we have the HTTP listeners configured with the HTTP and port 80 And finally we have the escape route rule, which is again gateway networking.io v1 as the API version kind is HTTP route name is example HTTP route is the example gateway we defined.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Exam Tip  

Content:
It matches requests coming in with the hostname or example.com, and a rule is configured that has a path login and the back end service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Exam Tip  

Content:
It refers to is the example service which is the service on the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Exam Tip  

Content:
In this example, the HTTP traffic from gateway example gateway with the host header set to w-w-w-what example.com and the request path specified as login will be routed to the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Exam Tip  

Content:
Example svc on port 8080.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So the HTTP route that we saw is a layer seven protocol.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Some of the additional route options available are TLS route, TCP route, UDP route, gRPC route, etc..

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So back to a few limitations that we saw with ingress.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
Let's see how those are configured in gateway API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So earlier we saw that with ingress the basic TLS configuration um goes in the TLS section right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
And then this is the ingress way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
But to ensure all traffic uses Https well we want to redirect http to https.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
We need to use the nginx specific annotation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
So these annotations won't work with other ingress controllers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So the gateway API approach is much more declarative and structured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
Everything is defined in the proper spec, no annotations needed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
The listeners section clearly shows we are setting up an Https endpoint on port 403.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
The TLS configuration is explicit with the mod terminate showing we are terminating TLS at the gateway.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
The certificate refs directly reference our TLS secret allowed routes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Specifies which kinds of routes can attach to this listener, in this case HTTP routes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Exam Tip  

Content:
Here's another example.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
Through nginx specific annotations, we're saying, hey, this is um, a Canary deployment and, uh, send 20% of the traffic here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
The remaining 80% of traffic automatically goes to the primary ingress, which is another ingress service that may exist.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
But this isn't obvious from looking at this configuration alone, and it only works with nginx.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
Other controllers might not understand these annotations because these are specific to nginx.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
So the gateway API tells the complete story in one clear configuration, so everything is visible in one place, no hidden primary configuration needed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
We can see both services app v1 and v2 right there in the backend refs section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
The traffic split is explicitly defined 80% goes to v1, 20% goes to v2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
No annotations needed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
This is a native feature, so this will work the same way across any gateway API implementation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
Now these configurations work with any controller and these are not specific to ingress or anything.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Exam Tip  

Content:
Here's just another example.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So earlier we saw the complex controller specific annotations needed for advanced configurations like course setting.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
Now with GitHub API we can configure these centrally.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
No annotations needed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
Everything is defined in this spec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
Course headers are explicitly defined using the response header modifier filter.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
The configuration is more readable and self-documenting.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
And this will work consistently across any gateway API implementation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So speaking about gateway API implementation, most controllers have now implemented gateway API or are on the way to implement it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
Amazon Ex Azure Application gateway for containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
Contour.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
Egress.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
Envoy gateway.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
Google Kubernetes engine HAProxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
Ingress controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
Istio.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
Nginx.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
Gateway.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
Fabric.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
Traffic proxy are already GA with the implementation and others are on their way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
Well, that's all for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 101
Type: Concept  

Content:
Head over to the labs and practice working with gateway API controllers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 238_Introduction to Gateway API (2025 updates)
- File: 238_Introduction to Gateway API (2025 updates).txt
- Topic: Introduction to Gateway API (2025 updates)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
