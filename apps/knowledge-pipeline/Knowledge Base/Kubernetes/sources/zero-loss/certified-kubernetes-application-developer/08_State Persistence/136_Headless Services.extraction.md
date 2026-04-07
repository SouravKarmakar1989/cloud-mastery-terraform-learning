# Extraction: certified-kubernetes-application-developer / 08_State Persistence / 136_Headless Services

---

## Entry 1
Type: Concept  

Content:
Presenter: Let us now look at headless services.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
In the previous lecture, we said that, when you create a stateful set, it deploys one pod at a time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Gets an ordinal index, and that each pod has a stable, unique name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Which is mysql-0, -1 and -2.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
And so we can point the slaves, to reach the master at mysql-0.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
But there is something missing here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
From what we know about services, and DNS specifically in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
The way you point one application, within the cluster to another application, is through a service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
So if we had a web server, then to make, the database server accessible, to the web server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
We create a service for the database.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
We name it mysql.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
The service, as we know, acts as a load balancer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
The traffic coming into the service, is balanced across all the pods in the deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
The service has a cluster IP, and a DNS name associated with it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Which usually goes like, mysql.default.service.cluster.local.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So any other application within the environment, like a web server for instance, can now use this DNS name, to reach the mysql database.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Now remember in the previous lecture, we said that since this is a master slave topology, the reads could be served by master or slaves.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
But the writes must only be processed by the master.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
So it is okay for the web server, to read from the mysql service we created, but you can't write to that service, as it's going to load balance the writes, to all pods under the service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And that's not what we want for our mysql cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So you wanna point the web server, to the master database server only.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
But how do you do that?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So what's one way to reach the master pod directly?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
If you know the IP address of the master pod, you can configure that in the web server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
But as we know, IP addresses are dynamic, and can change if the pod is recreated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So we can't use that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
We also learned that each pod, can be reached through its DNS address, but the pod's DNS address is created, from its IP address, something like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So we can't use that either.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
What we need is a service that, does not load balance requests, but gives us a DNS entry to reach each pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And that's what a headless service is.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
A headless service is created like a normal service, but it does not have an IP of its own.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Like a cluster IP, for a normal service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
It does not perform any load balancing.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
All it does is create DNS entries, for each pod using the pod name and a subdomain.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
So when you create a headless service, say with the name mysql-h each pod gets a DNS record created, in the form, pod name.the name of the headless service .namespace followed by the cluster domain.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
In this case, each pod gets pod name.headless service, which happens to be the, mysql-0.mysql-h .default.service.cluster.local.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
The web application can now point to the DNS entry, for the master mysql server at, mysql-0.msql-h.defalult .svc.cluster.local.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Best Practice  

Content:
And that should always work.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
That DNS entry will always point, to the master pod in the mysql deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
To create a headless service, create a service definition file, as we did while creating services.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Use the API version v1, kind service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Name it mysql-h, for headless service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
Specify the ports, the selector to select the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
What differentiates a headless service, from a normal service, is setting cluster IP to none.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
Creating the service, using this definition file, now creates a headless service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
When the headless service is created, the DNS entries are created for pods, only if the two conditions are met, while creating the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Under the spec section of a pod definition file, you have two optional fields, host name and subdomain.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
You must specify the subdomain to a value, the same as the name of the service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
When you do that, it creates a DNS record, for the name of the service to point, to the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
However it still doesn't create, A records for individual pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
For that, you must specify the host name option, in the pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
Only then does it create a DNS record, with a pod name as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
So those are two properties that, are required on the pod for a headless service, to create a DNS record for the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Exam Tip  

Content:
Here I have shown an example of a pod definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Now let's see how this works.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
When you deploy the pod as part of a deployment, by default if there is no host name, or subdomain specified the deployment does not, add a host name or subdomain to the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
So the headless service does not create, A records for the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
If we specified the host name or subdomain, in the pod template section, like we did for the pod in the previous slide, then it assigns the same host name and subdomain for all the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
Because a deployment simply duplicates, all the properties for the same pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
And that results in creating DNS A records for all pods, but with the same name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Mysql-pod.msql-h .default.service.cluster.local But all the pods now have the same host name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So this doesn't help us meet our requirement, of addressing the pods separately, with separate DNS records.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
And that is yet another way, how a stateful set, differs from a deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Warning/Pitfall  

Content:
When creating a stateful set, you do not need to specify a subdomain or host name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
The stateful set automatically assigns, the right host name for each pod, based on the pod name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And it automatically assigns the right subdomain based on the headless service name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
But wait, how does a stateful set know, which headless service we are using?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
There could be many headless services, created for different applications.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
How would it know which is the headless service, we created for this application?

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
When creating a stateful set, you must specify the service name explicitly, using the service name option, in the stateful set definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
That's how it knows what subdomain to assign to the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Implementation Step  

Content:
The stateful set takes the names, that we specified and adds that, as a subdomain property, when the pod is created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
All pods now get a separate DNS record created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 08_State Persistence
- Lecture: 136_Headless Services
- File: 136_Headless Services.txt
- Topic: Headless Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
