# Extraction: certified-kubernetes-application-developer / 07_Services & Networking / 115_Ingress Networking

---

## Entry 1
Type: Concept  

Content:
In this lecture we will discuss ingress in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Concept  

Content:
One of the common questions that students reach out usually is regarding services and ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Comparison  

Content:
What's the difference between the two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Concept  

Content:
And when to use what.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Concept  

Content:
So we're going to briefly revisit services and work our way towards ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Concept  

Content:
We will start with a simple scenario.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Implementation Step  

Content:
You're deploying an application on Kubernetes for a company that has an online store selling products.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Concept  

Content:
Your application will be available at, say, My Online store.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Implementation Step  

Content:
You build the application into a Docker image and deploy it on Kubernetes cluster as a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Implementation Step  

Content:
In a deployment, your application needs a database.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Implementation Step  

Content:
So you deploy a MySQL database as a pod and create a service of type cluster IP called MySQL service to make it accessible to our application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Concept  

Content:
Your application is now working to make the application accessible to the outside world.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Implementation Step  

Content:
You create another service, this time of type node port and make your application available on a high port on the nodes notes in the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Exam Tip  

Content:
In this example, a port of 30080 is allocated for the service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Concept  

Content:
The users can now access your application using the URL http colon slash slash IP of any of your nodes, followed by port 30080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Concept  

Content:
That setup works and users are able to access the application whenever traffic increases.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Concept  

Content:
We increase the number of replicas of the pod to handle the additional traffic, and the service takes care of splitting traffic between the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Implementation Step  

Content:
However, if you have deployed a production grade application before, you know that there are many more things involved in addition to simply splitting the traffic between the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Warning/Pitfall  

Content:
For example, we do not want the users to have to type in the IP address every time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Implementation Step  

Content:
So you configure your DNS server to point to the IP of the nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Concept  

Content:
Your users can now access your application using the URL.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Concept  

Content:
My online store and port 30080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Concept  

Content:
080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Warning/Pitfall  

Content:
Now, you don't want your users to have to remember port number either.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 25
Type: Concept  

Content:
However, service node ports can only allocate high numbered ports which are greater than 30,000.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Implementation Step  

Content:
So you then bring in an additional layer between the DNS server and your cluster, like a proxy server that proxies requests on port 80 to port 30080 on your nodes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Implementation Step  

Content:
You then point your DNS to this server, and users can now access your application by simply visiting my online store.com.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Concept  

Content:
Now this is if your application is hosted on prem in your data center.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Implementation Step  

Content:
Let's take a step back and see what you could do if you were on a public cloud environment like Google Cloud Platform.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Concept  

Content:
In that case, instead of creating a service of type node port for your web application, you could set it to type load balancer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Concept  

Content:
When you do that, Kubernetes would still do everything that it has to do for a node port, which is to provision a high port for the service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 32
Type: Concept  

Content:
But in addition to that, Kubernetes also sends a request to Google Cloud Platform to provision a network load balancer for this service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Implementation Step  

Content:
On receiving the request, GCP would then automatically deploy a load balancer configured to route traffic to the service ports on all nodes and return its information to Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Concept  

Content:
The load balancer has an external IP that can be provided to users to access the application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Concept  

Content:
In this case, we set the DNS to point to this IP and users access the application using the URL.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 36
Type: Concept  

Content:
My online store.com.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 37
Type: Concept  

Content:
Perfect.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Concept  

Content:
Your company's business grows and you now have new services for your customers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Exam Tip  

Content:
For example, a video streaming service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Concept  

Content:
Now you want your users to be able to access your new video streaming service by going to my online store.com.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Concept  

Content:
Watch your developers develop the new video streaming application as a completely different application, as it has nothing to do with the existing one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Implementation Step  

Content:
However, to share the cluster's resources, you deploy the new application as a separate deployment within the same cluster, you create a service called Video Service of type Load balancer Kubernetes provisions port 382 for this service and also provisions a network load balancer on the cloud.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Concept  

Content:
The new load balancer has a new IP.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Concept  

Content:
Remember, you must pay for each of these load balancers, and having many such load balancers can inversely affect your cloud bill.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 45
Type: Concept  

Content:
So how do you direct traffic between each of these load balancers based on the URL that the user types in?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Concept  

Content:
You need yet another proxy or load balancer that can redirect traffic based on URLs to the different services.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Implementation Step  

Content:
Now every time you introduce a new service, you have to reconfigure the load balancer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Concept  

Content:
And finally, you also need to enable SSL for your applications so your users can access your application using Https.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 49
Type: Implementation Step  

Content:
Now where do you configure that?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 50
Type: Concept  

Content:
It can be done at different levels, either at the application level itself or at the load balancer level, or at the proxy server level.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Warning/Pitfall  

Content:
But now you don't want your developers to implement it in their applications, as they would do it in different ways, and it's an additional burden for them to develop additional code to handle that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 52
Type: Implementation Step  

Content:
You want it to be configured in one place with minimal maintenance.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Concept  

Content:
Now that's a lot of different configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 54
Type: Concept  

Content:
And all of these becomes difficult to manage when your application scales.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 55
Type: Concept  

Content:
It requires involving different individuals in different teams.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Implementation Step  

Content:
You need to configure your firewall rules for each new service, and it's expensive as well as for each service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Concept  

Content:
And new cloud native load balancer needs to be provisioned.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Implementation Step  

Content:
Wouldn't it be nice if you could manage all of that within the Kubernetes cluster, and have all that configuration as just another Kubernetes definition file that lives along with the rest of your application deployment files?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Concept  

Content:
That's where ingress comes in.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 60
Type: Implementation Step  

Content:
Ingress helps your users access your application using a single, externally accessible URL that you can configure to route traffic to different services within your cluster based on the URL path.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 61
Type: Concept  

Content:
At the same time, implement SSL security as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 62
Type: Implementation Step  

Content:
Think of ingress as a layer seven load balancer built into the Kubernetes cluster that can be configured using native Kubernetes primitives, just like any other object that we have been working within Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Concept  

Content:
Now remember, even with ingress, you still need to expose it to make it accessible outside the cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 64
Type: Concept  

Content:
So you still have to either publish it as a node port or with a cloud native load balancer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 65
Type: Concept  

Content:
But that is just a one time configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Concept  

Content:
Going forward, you're going to perform all your load balancing, SSL, and URL based routing configurations on the ingress controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 67
Type: Concept  

Content:
So how does it work?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 68
Type: Concept  

Content:
What is it?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 69
Type: Concept  

Content:
Where is it?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Implementation Step  

Content:
How can you see it and how can you configure it and how does it load balance?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Concept  

Content:
How does it implement SSL without ingress?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 72
Type: Concept  

Content:
How would you do all of these?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Implementation Step  

Content:
Well I would use a reverse proxy or a load balancing solution like nginx or HAProxy or traffic, and I would deploy them on my Kubernetes cluster and configure them to route traffic to other services.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 74
Type: Concept  

Content:
The configuration involves defining URL routes, configuring SSL certificates.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 75
Type: Implementation Step  

Content:
Ingress is implemented by Kubernetes in kind of the same way you first deploy a supported solution, which happens to be any of these listed here, and then specify a set of rules to configure ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 76
Type: Implementation Step  

Content:
The solution you deploy is called as an ingress controller, and the set of rules you configure are called as ingress resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 77
Type: Implementation Step  

Content:
Ingress resources are created using definition files like the ones we have been using to create pods, deployments, and services earlier in this course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Concept  

Content:
Now remember, a Kubernetes cluster does not come with an ingress controller by default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 79
Type: Concept  

Content:
If you set up a cluster following the demos in this course, you won't have an ingress controller built into it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 80
Type: Implementation Step  

Content:
So if you simply create ingress resources and expect them to work, they won't.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 81
Type: Concept  

Content:
Now let's look at each of these in a bit more detail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 82
Type: Warning/Pitfall  

Content:
As I mentioned, you do not have an ingress controller on Kubernetes by default, so you must deploy one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 83
Type: Implementation Step  

Content:
What do you deploy?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 84
Type: Concept  

Content:
There are a number of solutions available for ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 85
Type: Concept  

Content:
A few of them being GCE, which is Google's Layer seven HTTP Load Balancer, nginx, contour, HAProxy, traffic and Istio.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 86
Type: Exam Tip  

Content:
Out of these, GCE and nginx are currently being supported and maintained by the Kubernetes project, and in this lecture we will use nginx as an example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 87
Type: Concept  

Content:
These ingress controllers are not just another load balancer or nginx server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 88
Type: Concept  

Content:
The load balancer components are just a part of it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 89
Type: Implementation Step  

Content:
Ingress controllers have additional intelligence built into them to monitor the Kubernetes cluster for new definitions or ingress resources, and configure the nginx server accordingly, and nginx controller is deployed as just another deployment in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 90
Type: Implementation Step  

Content:
So we start with a deployment definition file named nginx ingress controller with one replica and a simple pod definition template.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 91
Type: Concept  

Content:
We will label it nginx ingress and the image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 92
Type: Concept  

Content:
Use these nginx ingress controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 93
Type: Concept  

Content:
With the right version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 94
Type: Concept  

Content:
This is a special build of index.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 95
Type: Concept  

Content:
Built specifically to be used as an ingress controller in Kubernetes, so it has its own set of requirements within the image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 96
Type: Concept  

Content:
Within the image, the nginx program is stored at location nginx ingress controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 97
Type: Concept  

Content:
So you must pass that as the command to start with nginx controller service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 98
Type: Implementation Step  

Content:
If you have worked with nginx before, you know that it has a set of configuration options such as a path to store the logs, keepalive threshold, SSL settings, session timeout, etc. in order to decouple these configuration data from nginx controller image, you must create a config map object and pass that in.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 99
Type: Concept  

Content:
Now remember the config map object need not have any entries at this point.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 100
Type: Concept  

Content:
A blank object will do, but creating one makes it easy for you to modify a configuration setting.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
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
In the future.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 102
Type: Implementation Step  

Content:
You will just have to add it in to this config map and not have to worry about modifying the nginx next configuration files.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 103
Type: Implementation Step  

Content:
You must also pass in two environment variables that carry the pod's name and namespace it is deployed to.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 104
Type: Concept  

Content:
The nginx service requires these to read the configuration data within the pod, and finally specify the ports used by the ingress controller, which happens to be 80 and 443.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 105
Type: Implementation Step  

Content:
We then need a service to expose the ingress controller to the external world.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 106
Type: Implementation Step  

Content:
So we create a service of type node port with the nginx ingress label selector to link the service to the deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 107
Type: Implementation Step  

Content:
As mentioned before, the ingress controllers have additional intelligence built into them to monitor the Kubernetes cluster for ingress resources and configure the underlying nginx server when something is changed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 108
Type: Concept  

Content:
But for the ingress controller to do this, it requires a service account with the right set of permissions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 109
Type: Implementation Step  

Content:
For that, we create a service account with the correct roles and role bindings.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 110
Type: Implementation Step  

Content:
So to summarize, with the deployment of the nginx ingress image, a service to expose it, a config map to feed nginx configuration data, and a service account.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 111
Type: Best Practice  

Content:
With the right permissions to access all of these objects, we should be ready with an ingress controller in its simplest form.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 112
Type: Implementation Step  

Content:
Now on to the next part of creating ingress resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 113
Type: Concept  

Content:
An ingress resource is a set of rules and configurations applied on the ingress controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 114
Type: Implementation Step  

Content:
You can configure rules to say simply forward all incoming traffic to a single application, or route traffic to different applications based on the URL.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 115
Type: Implementation Step  

Content:
So if user goes to my online store, then route to one app, or if the user visits the watch URL, then route to the video app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 116
Type: Concept  

Content:
Or you could route user based on the domain name itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 117
Type: Exam Tip  

Content:
For example, if the user visits where my online store.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 118
Type: Implementation Step  

Content:
Com then route to the web app or route to the video app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 119
Type: Implementation Step  

Content:
Let us look at how to configure these in a bit more detail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 120
Type: Implementation Step  

Content:
The ingress resource is created with a Kubernetes definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 121
Type: Concept  

Content:
In this case, ingress dot YAML.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 122
Type: Concept  

Content:
As with any other object, we have API version kind metadata and spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 123
Type: Concept  

Content:
The API version is networking.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 124
Type: Concept  

Content:
IO v1 kind is ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 125
Type: Concept  

Content:
We will name it ingress where and under spec we have default backend.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 126
Type: Concept  

Content:
So the traffic is of course routed to the application services and not pods directly.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 127
Type: Concept  

Content:
The default backend section defines where the traffic will be routed to.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 128
Type: Warning/Pitfall  

Content:
So if it's a single backend then you don't really have any rules.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 129
Type: Concept  

Content:
You can simply specify the service name and port of the backend where service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 130
Type: Implementation Step  

Content:
Create the ingress resource by running the kubectl create command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 131
Type: Implementation Step  

Content:
View the created ingress by running the kubectl get ingress command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 132
Type: Implementation Step  

Content:
The new ingress is now created and routes all incoming traffic directly to the where service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 133
Type: Concept  

Content:
You use rules when you want to route traffic based on different conditions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 134
Type: Exam Tip  

Content:
For example, you create one rule for traffic originating from each domain or hostname.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 135
Type: Concept  

Content:
That means when users reach your cluster using the domain my online store.com, you can handle that traffic using rule one when users reach your reach a cluster using domain name where my online store.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 136
Type: Concept  

Content:
You can handle that traffic using a separate rule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 137
Type: Concept  

Content:
Use rule three to handle traffic from watch my online store.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
Com and say use a fourth rule to handle everything else.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Exam Tip  

Content:
And just in case you didn't know, you could get different domain names to reach your cluster by adding multiple DNS entries, all pointing to the same ingress controller service on your Kubernetes cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 140
Type: Concept  

Content:
Now, within each rule, you can handle different paths.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 141
Type: Exam Tip  

Content:
For example, within rule one, you can handle the where path to route the traffic to the cloud application, and a watch path to route the traffic to the video streaming application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 142
Type: Implementation Step  

Content:
And a third path that routes anything other than the first two to a 404 not found page.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 143
Type: Concept  

Content:
Similarly, the second rule handles all traffic from where my online.com.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 144
Type: Concept  

Content:
You can have path definition within this rule to route traffic based on different paths.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 145
Type: Exam Tip  

Content:
For example, say you have different applications and services within the apparel section for the shopping or returns or support when a user goes to my online store.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 146
Type: Concept  

Content:
By default there is the shopping page, but if they go to exchange or support URL, there is different back end services.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 147
Type: Concept  

Content:
The same goes for rule three where you route traffic to Watch.mandolin.com.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 148
Type: Concept  

Content:
To the video streaming application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 149
Type: Concept  

Content:
But you can have additional paths in it, such as movies or TV.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 150
Type: Troubleshooting  

Content:
And finally, anything other than the ones listed here will go to the fourth rule that will simply show a 404 not found error page.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 151
Type: Concept  

Content:
So remember, you have rules at the top for each host or domain name, and within each rule you have different paths to route traffic based on the URL.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 152
Type: Implementation Step  

Content:
Now let's look at how we configure ingress resources in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 153
Type: Concept  

Content:
We will start where we left off.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 154
Type: Concept  

Content:
We start with a similar definition file this time under spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 155
Type: Concept  

Content:
We start with a set of rules.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 156
Type: Concept  

Content:
Now our requirement here is to handle all traffic coming to my online com and route them based on the URL path.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 157
Type: Concept  

Content:
So we just need a single rule for this since we are only handling traffic to a single domain name, which is my online store in this case.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 158
Type: Concept  

Content:
Under rules, we have one item, which is an HTTP rule in which we specify different paths.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 159
Type: Exam Tip  

Content:
So paths is an array of multiple items, one path for each URL.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 160
Type: Exam Tip  

Content:
Then we move the back end we used in the first example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 161
Type: Implementation Step  

Content:
Under the first path, the backend specification remains the same.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 162
Type: Concept  

Content:
It has a service name and port.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 163
Type: Implementation Step  

Content:
Similarly, we create a similar backend entry to the second URL path for the watch service to route all traffic coming in through slash watch URL to the watch service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 164
Type: Implementation Step  

Content:
Create the ingress resource using the kubectl create command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 165
Type: Implementation Step  

Content:
Once created, view additional details about the ingress resource by running the kubectl describe ingress command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 166
Type: Concept  

Content:
We.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 167
Type: Implementation Step  

Content:
You now see two backend URLs under the rules and the back end service they are pointing to just as we created it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 168
Type: Concept  

Content:
Now if you look closely in the output of this command, you see that there is something about a default backend. end.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 169
Type: Concept  

Content:
What might that be?

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 170
Type: Implementation Step  

Content:
If a user tries to access a URL that does not match any of these rules, then the user is directed to the service specified as a default back end.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 171
Type: Implementation Step  

Content:
In this case, it happens to be a service named default HTTP backend, so you must remember to deploy such a service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 172
Type: Warning/Pitfall  

Content:
Now back in your application, say a user visits the URL, my online store or com slash listen or slash eat and you don't have an audio streaming or a food delivery service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 173
Type: Concept  

Content:
You might want to show them a nice message.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 174
Type: Troubleshooting  

Content:
You can do this by configuring a default back end service to display this 404 not found error page.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 175
Type: Concept  

Content:
The third type of configuration is using domain names or host names.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 176
Type: Concept  

Content:
We start by creating a similar definition file for ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 177
Type: Implementation Step  

Content:
Now that we have two domain names, we create two rules, one for each domain.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 178
Type: Concept  

Content:
To split traffic by domain name, we use the host field.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 179
Type: Concept  

Content:
The host field in each rule matches the specified value within the domain name used in the request URL, and routes traffic to the appropriate backend.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 180
Type: Concept  

Content:
In this case, note that we only have a single backend path for each rule, which is fine.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 181
Type: Concept  

Content:
All traffic from these domain names will be routed to the appropriate backend, irrespective of the URL path used.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 182
Type: Exam Tip  

Content:
You can still have multiple path specifications in each of these to handle different URL paths.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 183
Type: Comparison  

Content:
Now let's compare the two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 184
Type: Concept  

Content:
Splitting traffic by URL had just one rule, and we split the traffic with two paths to split traffic by hostname, we used two rules and one path specification in each rule.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 185
Type: Concept  

Content:
Well that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 186
Type: Concept  

Content:
Let us now head over to the practice test section and practice working on ingress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 187
Type: Concept  

Content:
There are two types of labs in this section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 188
Type: Implementation Step  

Content:
The first one is where an ingress controller resources and applications are already deployed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 189
Type: Concept  

Content:
And you basically view and walk through the environment, gather data and answer questions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 190
Type: Implementation Step  

Content:
Towards the end, you would create or modify ingress resources based on needs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 191
Type: Implementation Step  

Content:
In the second practice test, you will be deploying an ingress controller and resources from scratch.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 192
Type: Implementation Step  

Content:
Good luck and hope you enjoy the labs and I will see you in the next one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 07_Services & Networking
- Lecture: 115_Ingress Networking
- File: 115_Ingress Networking.txt
- Topic: Ingress Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
