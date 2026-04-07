# Extraction: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 033_Services

---

## Entry 1
Type: Concept  

Content:
In this lecture we will discuss about Kubernetes services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 2
Type: Concept  

Content:
Kubernetes services enable communication between various components within and outside of the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 3
Type: Concept  

Content:
Kubernetes services helps us connect applications together with other applications or users.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 4
Type: Exam Tip  

Content:
For example, our application has groups of pods running various sections, such as a group for serving a front end load to users, another group for running back end processes, and a third group connecting to an external data source.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 5
Type: Concept  

Content:
It is services that enable connectivity between these groups of pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 6
Type: Concept  

Content:
Services enable the front end application to be made available to end users.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 7
Type: Concept  

Content:
It helps communication between backend and frontend pods and helps in establishing connectivity to an external data source.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 8
Type: Concept  

Content:
Thus, services enable loose coupling between microservices in our application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 9
Type: Concept  

Content:
Let's take a look at one use case of services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 10
Type: Concept  

Content:
So far we talked about how pods communicate with each other through internal networking.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 11
Type: Concept  

Content:
Let's look at some other aspects of networking in this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 12
Type: Concept  

Content:
Let's start with external communication.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 13
Type: Implementation Step  

Content:
So we deployed our pod having a web application running on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 14
Type: Concept  

Content:
How do we as an external user access the web page?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 15
Type: Implementation Step  

Content:
First of all let's look at the existing setup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 16
Type: Concept  

Content:
The Kubernetes node has an IP address and that is 192.168.1.2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 17
Type: Concept  

Content:
My laptop is on the same network as well, so it has an IP address 192.168.1.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 18
Type: Concept  

Content:
The internal Pod network is in the range 10.244.0.0, and the pod has an IP 10.244.0.2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 19
Type: Concept  

Content:
Clearly I cannot ping or access the pod at address 244.0.2 as it's in a separate network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 20
Type: Concept  

Content:
So what are the options to see the web page?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 21
Type: Implementation Step  

Content:
First, if we were to SSH into the Kubernetes node at 192.168.1.2, from the node, we would be able to access the pods web page by doing a curl, or if the node has a GUI, we would fire up a browser and see the web page in a browser following the HTTP 10.244.0.2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
But this is from inside the Kubernetes node, and that's not what I really want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
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
I want to be able to access the web server from my own laptop, without having to SSH into the node, and simply by accessing the IP of the Kubernetes node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 24
Type: Concept  

Content:
So we need something in the middle to help us map requests to the node from our laptop, through the node to the pod running the web container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 25
Type: Concept  

Content:
This is where the Kubernetes service comes into play.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 26
Type: Implementation Step  

Content:
The Kubernetes service is an object just like pods, replica sets, or deployments that we worked with before.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 27
Type: Concept  

Content:
One of its use cases is to listen to a port on the node, and forward requests on that port to a port on the pod running the web application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 28
Type: Concept  

Content:
This type of service is known as a node port service, because the service listens to a port on the node and forward requests to the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 29
Type: Concept  

Content:
There are other kinds of services available which we will now discuss.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 30
Type: Implementation Step  

Content:
The first one is what we discussed already.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 31
Type: Concept  

Content:
Node port where the service makes an internal pod accessible on a port on the node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 32
Type: Implementation Step  

Content:
The second is cluster IP and in this case the service creates a virtual IP inside the cluster to enable communication between different services, such as a set of front end servers to a set of back end backend servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 33
Type: Concept  

Content:
The third type is a load balancer, where it provisions a load balancer for our application in supported cloud providers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 34
Type: Exam Tip  

Content:
A good example of that would be to distribute load across the different web servers in your front end tier.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 35
Type: Concept  

Content:
We will now look at each of these in a bit more detail along with some demos.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 36
Type: Concept  

Content:
In this lecture we will discuss about the Nodeport Kubernetes service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 37
Type: Concept  

Content:
Getting back to Nodeport a few slides back, we discussed about external access to the application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 38
Type: Concept  

Content:
We said that a service can help us by mapping a port on the node to a port on the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 39
Type: Concept  

Content:
Let's take a closer look at the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 40
Type: Concept  

Content:
If you look at it, there are three ports involved.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 41
Type: Concept  

Content:
The port on the pod where the actual web server is running is 80, and it is referred to as the target port because that is where the service forwards the request to the second port is the port on the service itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 42
Type: Concept  

Content:
It is simply referred to as the port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 43
Type: Concept  

Content:
Remember these terms are from the viewpoint of the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 44
Type: Concept  

Content:
The service is in fact like a virtual server inside the node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 45
Type: Concept  

Content:
Inside the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 46
Type: Concept  

Content:
It has its own IP address, and that IP address is called the cluster IP of the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 47
Type: Concept  

Content:
And finally we have the port on the node itself which we use to access the web server externally.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 48
Type: Concept  

Content:
And that is known as the node port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 49
Type: Concept  

Content:
As you can see it is set to 30,008.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 50
Type: Concept  

Content:
That is because node ports can only be in a valid range, which by default is from 30,000 to 32,767.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 51
Type: Implementation Step  

Content:
Let's now look at how to create the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 52
Type: Implementation Step  

Content:
Just like how we created a deployment replica set or pod in the past.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 53
Type: Implementation Step  

Content:
We will use a definition file to create a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 54
Type: Concept  

Content:
The high level structure of the file remains the same as before.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 55
Type: Concept  

Content:
We have the API version kind, metadata and spec sections.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 56
Type: Concept  

Content:
The API version is going to be v1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 57
Type: Concept  

Content:
The kind is of course service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 58
Type: Concept  

Content:
The metadata will have a name and that will be the name of the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 59
Type: Warning/Pitfall  

Content:
It can have labels, but we don't need that for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 60
Type: Implementation Step  

Content:
Next we have spec and as always, this is the most crucial part of the file as this is where we will be defining the actual services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 61
Type: Concept  

Content:
And this is the part of a definition file that differs between different objects in the spec section of a service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 62
Type: Concept  

Content:
We have type and ports.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 63
Type: Concept  

Content:
The type refers to the type of service we are creating.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 64
Type: Concept  

Content:
As discussed before, it could be cluster, IP node, port or load balancer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 65
Type: Concept  

Content:
In this case, since we are creating a node port, we will set it as node port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 66
Type: Implementation Step  

Content:
The next part of a spec is ports.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 67
Type: Concept  

Content:
This is where we input information regarding what we discussed on the left side of the screen.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 68
Type: Implementation Step  

Content:
The first type of port is the target port, which we will set to 80.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 69
Type: Implementation Step  

Content:
The next one is simply port, which is the port on the service object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 70
Type: Concept  

Content:
And we will set that to 80 as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 71
Type: Concept  

Content:
The third is node port, which we will set to 30,008 or any number in the valid range.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 72
Type: Concept  

Content:
Remember that out of these the only mandatory field is port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 73
Type: Warning/Pitfall  

Content:
If you don't provide a target port, it is assumed to be the same as port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 74
Type: Warning/Pitfall  

Content:
And if you don't provide a node port, a free port in the valid range between 30,000 and 32,767 is automatically allocated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 75
Type: Implementation Step  

Content:
Also note that ports is an array, so note the dash under the ports section that indicate the first element in the array.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Exam Tip  

Content:
You can have multiple such port mappings within a single service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 77
Type: Concept  

Content:
So we have all the information in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 78
Type: Concept  

Content:
But something is really missing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 79
Type: Concept  

Content:
There is nothing here in the definition file that connects the service to the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 80
Type: Concept  

Content:
We have simply specified the target port, but we didn't mention the target port on which pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 81
Type: Concept  

Content:
There could be hundreds of other pods with web services running on port 80.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 82
Type: Concept  

Content:
So how do we do that?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 83
Type: Concept  

Content:
As we did with the replica sets previously, and a technique that you will see very often in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 84
Type: Concept  

Content:
We will use labels and selectors to link these together.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 85
Type: Implementation Step  

Content:
We know that the pod was created with a label.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 86
Type: Concept  

Content:
We need to bring that label into the service definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 87
Type: Concept  

Content:
So we have a new property in the specs section and that is called selector.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 88
Type: Implementation Step  

Content:
Just like in a replica set and deployment definition, files under the selector provide a list of labels to identify the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 89
Type: Implementation Step  

Content:
For this, refer to the pod definition file used to create the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 90
Type: Concept  

Content:
Pull the labels from the pod definition file and place it under the selector section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 91
Type: Concept  

Content:
This links the service to the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 92
Type: Implementation Step  

Content:
Once done, create the service using the kube control.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 93
Type: Implementation Step  

Content:
Create command and input the service definition file and there you have the service created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 94
Type: Implementation Step  

Content:
To see the created service, run the kube control.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 95
Type: Concept  

Content:
Get service's command that lists the service, the cluster IP and the mapped ports.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 96
Type: Implementation Step  

Content:
The type is node port as we created and the port on the node is set to 30,008, because that's the port that we specified in the definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 97
Type: Concept  

Content:
We can now use this port to access the web service using Curl or a web browser.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 98
Type: Concept  

Content:
So curl to 1921681.2, which is the IP of the node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 99
Type: Implementation Step  

Content:
And then I use the port 30,008 to access the web server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 100
Type: Concept  

Content:
So far we talked about a service mapped to a single pod, but that's not the case all the time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 101
Type: Exam Tip  

Content:
What do you do when you have multiple pods in a production environment?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 102
Type: Exam Tip  

Content:
You have multiple instances of your web application running for high availability and load balancing purposes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 103
Type: Exam Tip  

Content:
In this case, we have multiple similar pods running our web application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 104
Type: Concept  

Content:
They all have the same labels with a key app and set to a value of my app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 105
Type: Concept  

Content:
The same label is used as a selector during the creation of the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 106
Type: Implementation Step  

Content:
So when the service is created, it looks for a matching pod with the label and finds three of them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 107
Type: Implementation Step  

Content:
The service then automatically selects all the three pods as endpoints to forward the external requests coming from the user.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 108
Type: Warning/Pitfall  

Content:
You don't have to do any additional configuration to make this happen.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 109
Type: Concept  

Content:
And if you're wondering what algorithm it uses to balance the load across the three different pods, it uses a random algorithm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 110
Type: Concept  

Content:
Thus, the service acts as a built in load balancer to distribute load across different pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 111
Type: Exam Tip  

Content:
And finally, let's look at what happens when the pods are distributed across multiple nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 112
Type: Concept  

Content:
In this case, we have the web application on pods on separate nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 113
Type: Implementation Step  

Content:
When we create a service without us having to do any additional configuration, Kubernetes automatically creates a service that spans across all the nodes in the cluster and maps the target port to the same node port on all the nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 114
Type: Concept  

Content:
This way, you can access your application using the IP of any node in the cluster and using the same port number, which in this case is 30,008.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 115
Type: Concept  

Content:
As you can see, using the IP of any of these nodes, and I'm trying to curl to the same port and the same port is made available on all the nodes part of the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 116
Type: Exam Tip  

Content:
To summarize, in any case, whether it be a single pod on a single node, multiple pods on a single node, or multiple pods on multiple nodes, the service is created exactly the same without you having to do any additional steps during the service creation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 117
Type: Concept  

Content:
When pods are removed or added, the service is automatically updated, making it highly flexible and adaptive.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 118
Type: Implementation Step  

Content:
Once created, you won't typically have to make any additional configuration changes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 119
Type: Concept  

Content:
That's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 120
Type: Implementation Step  

Content:
Head over to the demo and I will see you in the next lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 033_Services
- File: 033_Services.txt
- Topic: Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
