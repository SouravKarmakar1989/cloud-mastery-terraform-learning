# Extraction: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 035_Services - Loadbalancer

---

## Entry 1
Type: Concept  

Content:
Let us now look at another type of service known as the load balancer type.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 2
Type: Concept  

Content:
So we have seen the node port service that helps us make an external facing application available on a port on the worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 3
Type: Concept  

Content:
So let's turn our focus to the front end applications which are the voting app and the result app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 4
Type: Concept  

Content:
Now we know that these pods are hosted on the worker nodes in a cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So let's say we have a four node cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 6
Type: Implementation Step  

Content:
And to make the applications accessible to external users we create the services of type node port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 7
Type: Concept  

Content:
Now the services with type node port help in receiving traffic on the ports on the nodes and routing the traffic to the respective pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
But what URL would you give your end users to access the applications?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 9
Type: Concept  

Content:
You could access any of these two applications using IP of any of the nodes and the port the service is exposed on.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So that would be for IP and port combinations for the voting app and for IP and port combination for the result app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So note that even if your pods are only hosted on two of the nodes, they will still be accessible on the IPS of all the nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 12
Type: Implementation Step  

Content:
Say the pods for the voting app are only deployed on the nodes with IP 70 and 71.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
There would still be accessible on the ports of all the nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
So that's how a service is configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 15
Type: Concept  

Content:
So you would share these URLs to your users to access the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 16
Type: Concept  

Content:
But that's not what the end users want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 17
Type: Exam Tip  

Content:
They need a single URL like example voting app.com or the example app to access the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So how do you achieve that?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 19
Type: Implementation Step  

Content:
Now one way to achieve this is to create a new VM for load balancer purpose and install and configure a suitable load balancer on it like HAProxy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 20
Type: Implementation Step  

Content:
Or nginx etc. then configure the load balancer to route traffic to the underlying nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 21
Type: Implementation Step  

Content:
Now setting all of that external load balancing and then maintaining and managing that can be a tedious task.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 22
Type: Concept  

Content:
However, if we were on a supported cloud platform like Google Cloud or AWS or Azure, I could leverage the native load balancer of that cloud platform.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 23
Type: Concept  

Content:
Kubernetes has support for integrating with the native load balancers of certain cloud providers, and configuring and configuring that for us.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 24
Type: Concept  

Content:
So all you need to do is set the service type for the front end services to load balancer instead of Nodeport.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 25
Type: Concept  

Content:
Now remember that this only works with supported cloud platforms.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 26
Type: Concept  

Content:
And so GCP, AWS and Azure are definitely supported.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
So if you set the type of service to load balancer in an unsupported environment like VirtualBox or you know any other environments, then it would have the same effect as setting it to Nodeport where you know the services are exposed on a high end port on the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Uh, there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
It just won't do any kind of, uh, external load balancer configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Implementation Step  

Content:
So later on, um, when we walk through, uh, the demos of deploying our application on cloud platforms, um, we will see this in action.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 32
Type: Concept  

Content:
Right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Concept  

Content:
So that's it for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 34
Type: Implementation Step  

Content:
I will see you in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 035_Services - Loadbalancer
- File: 035_Services - Loadbalancer.txt
- Topic: Services - Loadbalancer
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
