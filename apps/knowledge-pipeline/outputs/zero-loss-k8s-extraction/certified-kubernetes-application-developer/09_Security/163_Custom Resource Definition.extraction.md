# Extraction: certified-kubernetes-application-developer / 09_Security / 163_Custom Resource Definition

---

## Entry 1
Type: Concept  

Content:
Let's look at custom resource definitions in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Implementation Step  

Content:
Before we talk about custom resources, let's first talk about resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Implementation Step  

Content:
So here's a deployment definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Architecture  

Content:
And when we create a deployment Kubernetes creates a deployment and stores its information in the etcd data store.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Implementation Step  

Content:
Now we can create this deployment and then list the deployments and see the status.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Implementation Step  

Content:
And we can run the delete command to delete the deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Architecture  

Content:
Now all of this is simply going to create list and modify the deployment object or resource in the etcd data store.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Implementation Step  

Content:
But we know that when we create deployments it creates pods equal to the number of replicas defined in the deployment, in this case three.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Concept  

Content:
So who or what is responsible for that?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And that's the job of a controller in this case the deployment controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Warning/Pitfall  

Content:
Now we don't have to create a controller because the deployment controller is built in to the Kubernetes and is already available.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Implementation Step  

Content:
So the controller is a process that runs in the background, and its job is to continuously monitor the status of resources that it's supposed to manage, in this case, the deployment that we created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And when we create, update or delete the deployment, it makes the necessary changes on the cluster to match what we have done.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Implementation Step  

Content:
In this case, when we create a deployment object, the controller creates a replica set, which in turn creates as many pods as we have specified in the deployment definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
So that's the job of a controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And here is how it looks in code.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Implementation Step  

Content:
So the deployment controller is written in go and is part of the Kubernetes source code.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Warning/Pitfall  

Content:
You don't have to understand go or understand this code.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Concept  

Content:
For now I'm just showing this so you can see what a controller actually looks like.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Now we've learned about many resources throughout this course, such as replica sets, deployments, jobs, cronjobs, stateful sets, namespaces, etc. these are just a few of the many resources available on the cluster, and these have controllers that are responsible for watching the status of these objects and making the necessary changes on the cluster to maintain the state as expected.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Now let's do something fun.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Exam Tip  

Content:
Let's just like how we created the deployment to deploy multiple pods in a cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Implementation Step  

Content:
We would like to create, say, a flight ticket object to book a flight ticket.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
I'm just picking this use case to show that this could be really anything like literally anything.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Concept  

Content:
And later, towards the end of the video or end of this section, we will see some real life use cases.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Concept  

Content:
Let's stick with this for now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Implementation Step  

Content:
And first we're going to see what we want and later we will see how to achieve it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
So what I want to do is create an object called flight ticket.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
We will say the API version is flights.com/v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
The kind is flight ticket.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
We will name it my flight ticket.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
The spec section will have some properties required to book the ticket, such as from airport which we will set to Mumbai, and the two address which we will set to London, and also another property called number to specify the number of tickets that I want to book.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And that is two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Implementation Step  

Content:
Now when I create this object I want to have a flight ticket resource created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And when I list all flight tickets I want all flight tickets to be listed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And when I delete a flight ticket, I want the flight ticket booking to be deleted.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Now how we're going to do this?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Concept  

Content:
I'll explain in a bit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
For now, we're just discussing the what what what do we want?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Architecture  

Content:
So this is going to create or delete the flight ticket object in the etcd data store.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Concept  

Content:
But it's not actually going to book a flight ticket.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Is it?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
We want this to actually go out and book a flight ticket for real.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Say, for instance, there is this, uh, API available at, say, book flight com slash API that we can call to book a flight ticket.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Implementation Step  

Content:
So how do we call this API whenever we create a flight ticket object to book a flight ticket.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Concept  

Content:
So for that we're going to need a controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Implementation Step  

Content:
So we will create a flight ticket controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 49
Type: Concept  

Content:
And it's written in go.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And we will watch for the creation, update or deletion of the flight ticket resource.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Implementation Step  

Content:
And when we create a resource it will contact the book Flight Ticket API to book a flight ticket.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 52
Type: Concept  

Content:
And when we delete the resource, it would make an API call to delete that booking.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And it might look something like this in code.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
So that's how it works at a high level.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 55
Type: Implementation Step  

Content:
The flight ticket object that we created It is a custom resource, and the controller that we wrote to book the actual flight ticket by calling the API that is called as a custom controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Concept  

Content:
We have a custom resource and we have a custom controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Now let's see how we are going to achieve this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Troubleshooting  

Content:
If you tried to create a flight ticket resource now on your Kubernetes cluster, you will see that it fails with the error message that says there is.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
There are no matches for the kind flight ticket in version flights.com/v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 60
Type: Best Practice  

Content:
Now this is because you can't simply create any resource that you want without configuring it in the Kubernetes API, without first telling Kubernetes that it should allow us to create a flight ticket object.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
So that's what we have to do.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
First, we have to first define what that resource is that we want to create.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
So But for that we need what is known as a custom resource definition or CRD.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 64
Type: Implementation Step  

Content:
We're going to use CRD to tell Kubernetes that we would like to create objects of kind flight ticket going forward.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
So the CRD is a similar object with API version kind metadata and spec.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
The API version is API extensions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Dot case.io/v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Kind is custom resource definition.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Metadata has name set to flight tickets, dot flights.com, let's say.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Concept  

Content:
And under the spec section we will specify a scope.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Now scope defines if the object is namespaced or not.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 72
Type: Exam Tip  

Content:
And we know that there are Namespaced and non namespaced scopes in Kubernetes for example, pods, replica sets, deployments are all scoped, whereas persistent volumes, nodes and namespace itself are non Unknown non scoped objects.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Concept  

Content:
So here we can define if this object is going to be namespace scoped or not.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
We will set it to names namespace for now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Then we define groups.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 76
Type: Concept  

Content:
Groups is the API group that we provide in the API version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 77
Type: Concept  

Content:
It will be flights.com.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Implementation Step  

Content:
And then we specify the names of the resource.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
We define the kind which is the kind that we use in the flight ticket definition file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 80
Type: Concept  

Content:
And we will set it to flight ticket.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And we must also specify a singular and plural versions of names.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 82
Type: Concept  

Content:
So the singular name here is just the flight ticket, which is used to display the resource type in the output of the kubectl commands.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 83
Type: Concept  

Content:
The plural is what is used by the Kubernetes API resource.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And if you run the Kubernetes, the kubectl API resources command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
This is what is going to be shown here in the plural format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 86
Type: Concept  

Content:
So it's flight tickets there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And of course you can provide a short version of the name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Let's say feet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 89
Type: Concept  

Content:
This way we can just refer to the resource as feet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 90
Type: Concept  

Content:
When we run the kubectl commands.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 91
Type: Implementation Step  

Content:
Next we have versions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 92
Type: Exam Tip  

Content:
Each resource can be configured with multiple versions as it passes through the various phases of its lifecycle.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 93
Type: Exam Tip  

Content:
For example, if it's a new resource type then we're going to introduce it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 94
Type: Implementation Step  

Content:
Then we start at alpha or beta versions before making its way to version v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
This is something that we discussed in the API versions lecture earlier in this course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
Let's name it version v1 for now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 97
Type: Exam Tip  

Content:
And with multiple versions configured for the same resource, we must choose which ones are served through the API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 98
Type: Concept  

Content:
And we also define which is the storage version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 99
Type: Exam Tip  

Content:
If you have multiple versions, only one version can be marked as the storage version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
We discussed about what are storage versions in the lecture about APIs earlier in this course.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 101
Type: Implementation Step  

Content:
Next we specify a schema.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 102
Type: Concept  

Content:
The schema defines all the parameters that can be specified under the spec section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
When you create the object, it defines what fields are supported and what type of value that fields supports, etc..

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
The schema uses OpenAPI v3 schema version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 105
Type: Concept  

Content:
We specify the different properties using an object type we have from to and number and from and to.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 106
Type: Concept  

Content:
Our string number is an integer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 107
Type: Concept  

Content:
We can also specify validations like the minimum or maximum value that can be specified under the number.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 108
Type: Troubleshooting  

Content:
If the value is entered by the user does not fall within this range, the resource will not be created and will return an error message.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
We can now create the custom resource definition by running the kubectl create command, and once the custom resource definition is created, you can now create the flight ticket object and then get or delete it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
So that solves the first part of our problem.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 111
Type: Implementation Step  

Content:
Being able to create any kind of object type that we want on Kubernetes, you can use custom resource definitions or crds to create any kind of resource you want.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 112
Type: Concept  

Content:
On Kubernetes and specify a schema and add validations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 113
Type: Architecture  

Content:
But it's only going to allow you to create these resources and store them in etcd.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 114
Type: Warning/Pitfall  

Content:
It's not actually going to do anything about these resources because we don't yet have a controller for it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
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
And that's what we will look at next.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 116
Type: Implementation Step  

Content:
The second part is building a custom controller that can handle these resources, that can watch when these resources are created, and perform actions based on the resource specifications you see without a controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 117
Type: Implementation Step  

Content:
The custom resource that we created is just going to sit there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 118
Type: Concept  

Content:
It's just data stored locally in our data stores and does not actually do anything.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 119
Type: Concept  

Content:
So in the upcoming video, we will see how to get started with creating such a controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 163_Custom Resource Definition
- File: 163_Custom Resource Definition.txt
- Topic: Custom Resource Definition
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
