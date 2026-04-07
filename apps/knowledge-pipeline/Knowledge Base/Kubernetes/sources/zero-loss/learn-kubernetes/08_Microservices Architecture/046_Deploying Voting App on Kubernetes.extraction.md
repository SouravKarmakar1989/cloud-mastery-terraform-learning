# Extraction: learn-kubernetes / 08_Microservices Architecture / 046_Deploying Voting App on Kubernetes

---

## Entry 1
Type: Concept  

Content:
So we just saw how the voting application works on Docker.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
Let's now see how to deploy it on Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So it's important to have a clear idea of what we are trying to achieve and plan accordingly.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Before we get started.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So we already know how the application works, and it's a good idea to write down what we plan to do.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
So our goal is to deploy these containers, these applications as containers on a Kubernetes cluster, and then enable connectivity between the containers so that the applications can access each other and the databases, and then enable external access for the external facing applications, which are the voting and the result app, so that the users can access the web browser.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Right.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 8
Type: Concept  

Content:
So how do we go about this?

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
Now we know that we cannot deploy containers directly on Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
We learned that the smallest object that we can create on a Kubernetes cluster is a pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
So we must first deploy these applications as a pod on our Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
Or we could deploy them as replica sets or deployments, as we have seen through throughout this course.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
But first, for the sake of simplicity, we will stick to pods or in this lecture, right?

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
And later we will see how to easily convert that to a deployment.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
So once the pods are deployed the next step is to enable connectivity between the services.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So it's important to know what connectivity requirements are.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So we must be very clear about what application requires access to what services.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
We know that the database is accessed by the voting app and the worker app.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
The voting app says the vote to the database and the worker app reads the vote from the Redis database.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
We know that the PostgreSQL database is accessed by the worker app to update it with the total count of votes, and it's also accessed by the result app to read the total count of votes to be displayed in the resulting web page in the browser.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So we know that the voting app is accessed by the external users, the voters, and the result app is also accessed by the external users to view the results.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So most of the components are being accessed by another component except for the worker app.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Note that the worker app is not being accessed by anyone.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
You can see arrows going into all of these components, but there are no arrows going into worker, which means none of the other components or external users are accessing the worker app.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
The worker app simply reads the count of votes from the database, and then updates the total count of votes on the Postgres SQL database.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So none of the other components nor the external users ever access the worker app now?

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
While the voting app has a Python web server that listens on port 80, and the result app also has a Node.js based server that listens on port 80.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
And the Redis database has a service that listens on port six, three, seven, nine.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
And the PostgreSQL database has a service that listens on port 5432.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
The worker app has no service because it's just a worker, and it's not accessed by any other service or external users.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So keep that in mind.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So how do you make one component accessible by another?

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Exam Tip  

Content:
Say for example, how do you make the Redice database accessible by the voting app?

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Best Practice  

Content:
Should the voting app use the IP address of the Redis pod?

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Perhaps no, because that can change.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
The IP of the pod can change if the pod restarts.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Troubleshooting  

Content:
And you may also run into issues when you try to scale your applications in the future.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
The right way to do it is to use a service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Now we learned that a service can be used to expose an application to other applications or users for external access.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
So we will create a service for the Redis pod so that it can be accessed by the voting app and the worker app.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
We will call it a Redis service, and it will be accessible anywhere within the cluster by the name of the service Redis.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So why is that name important?

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
The source code within the voting app and the worker app are hard coded to point to a Redis database running on a host by the name Redice.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So it's important to name your service as Redis so that these applications can connect to the database.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Best Practice  

Content:
And this is not a best practice to hard code stuff like this within the source code of an application.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Best Practice  

Content:
Instead you should be using environment variables or something.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
But for the sake of simplicity, we will just follow up this application as it is developed right now.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
These services are not to be accessed outside the cluster.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Best Practice  

Content:
So, um, they should just be of type cluster IP.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So we will follow the the same approach of creating a service for the PostgreSQL pod, so that the PostgreSQL DB can be accessed by the worker and the result app.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Best Practice  

Content:
So what should we name the PostgreSQL service?

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
If you look at the source code of the result app and the worker app, you will see that they are looking for a database at the address db.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Best Practice  

Content:
So the service that we create for PostgreSQL should be named DB.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Also note that while connecting to the database, the worker and the result apps are passing a username and password to connect to the database, both of which are set to Postgres.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
So when we deploy the the Postgres db pod, we must make sure that we set the credentials for it as the initial set of credentials to while creating the database.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
Now the next task is to enable external access.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So for this we saw that we could use a service with a type set to node port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
So we create services for voting app and the result app and set their type to node port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Now we could decide on what port we are going to make them available on, and it would be a high port with a port number greater than 30,000.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
So we'll do that when we create the service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
So we are done and we have the high level steps ready.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
So to summarize we will be deploying five ports in total.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
And we have four services one for Redis, another for Postgres both of which are internal services.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So they are of type cluster IP.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
And we then have external facing services for voting app and the result app.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
However, we have no service for the worker pod and this is because it is not running any service that must be accessed by another application or external users.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
So it is just a worker process that reads from one database and updates another.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So it's not going to require a service now.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
I say that again, as that's a common question that I get when we talk about services.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
Why does this worker not require a service?

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
Right.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
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
So a service is only required if the application has some kind of process or database service or web service that needs to be exposed, that needs to be accessed by others.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
In this case, that's that's not true for the worker app.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
Now before we we get started with the deployment, note that we will be using the following Docker images for these applications.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
So these images are built um from a fork of the original um developed at the Docker samples repository.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Exam Tip  

Content:
Uh, the image names are code cloud slash example app underscore vote with a tag of v1, and then again worker v1 result v1.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
And for the databases we will use the official Redis and PostgreSQL releases that are available.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
Right.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
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
So that's it for now.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 80
Type: Concept  

Content:
Uh, and we will see this in action in the upcoming demo.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 046_Deploying Voting App on Kubernetes
- File: 046_Deploying Voting App on Kubernetes.txt
- Topic: Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
