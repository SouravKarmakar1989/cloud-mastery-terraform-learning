# Extraction: certified-kubernetes-administrator-with-practice-tests / 07_Security / 186_(2025 Updates) Custom Controllers

---

## Entry 1
Type: Concept  

Content:
In this lecture we will look at developing custom controllers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So to pick up from where we left off, we have created a custom resource definition.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
And we are able to create our flight ticket objects.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Architecture  

Content:
And the data about the ticket is stored in etcd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Architecture  

Content:
Now what we need to do is monitor the status of the objects in etcd and perform actions such as making calls to the flight booking API to book, edit, or cancel flight tickets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
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
And that's why we need a custom controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Concept  

Content:
So a controller is any process or code that runs in a loop and is continuously monitoring the Kubernetes cluster and listening to events of specific objects being changed, in this case, the flight ticket object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
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
And now we could do that in any way we can.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
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
Of course you need to write some code.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Architecture  

Content:
So say I know Python well, so I could write a code in Python that would query the Kubernetes API server for objects in the Kubernetes API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
And then I could watch for changes and make a further call to the API to make changes to the system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
However, developing a controller in Python may be challenging as the calls made to the APIs may become expensive and we will need to create our own queuing and caching mechanisms.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Developing in go with the Kubernetes Go client provides support for other libraries like shared informers, that provide caching and queuing mechanisms that can help build controllers easily and in the right way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So how do you start building a custom controller?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
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
So there's a GitHub repo named Sample controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So first clone this repo and then we modify the controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Go with your custom code.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
Then we build and run it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
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
So make sure you have the go programming language installed on your machine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
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
Install it if it is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Um, if it isn't already installed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
And then clone the GitHub repo of the sample controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
We then CD into the sample controller directory, and then we customize the controller dot go with our custom logic.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And we're not going to get into the details about the code itself at this point.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
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
Um, we would probably go over it at some other time where we will focus on advanced topics that that would be that would include like building controllers and operators.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
For now, let's just assume that we've customized the controller Go code.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And somewhere within the code, we're making a call to the flight booking API and to book flight tickets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
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
And then once we do that, we then build the code and then we run it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
And when we run it, we specify the kubeconfig file that the controller can use to authenticate to the Kubernetes API, and then the control process starts locally, and it then watches for the creation of the flight ticket objects and make the makes the necessary calls.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Once your controller is ready, you can decide on how to distribute it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Warning/Pitfall  

Content:
Now you don't want to build and run it each time, so you may package the custom controller in a Docker image and then choose to run it inside your Kubernetes cluster as a pod or a deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
That's a high level overview of building a custom controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Warning/Pitfall  

Content:
Now, in the exam, I don't expect them to ask a question about building a custom controller as it requires more coding knowledge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Warning/Pitfall  

Content:
So I don't anticipate a question on this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
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
However, there may be questions to build custom resource definitions and work with custom resource definition files, or to to work with existing controllers that are already there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So it's good to know.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
All right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
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
So that's that's all for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
And in the next video we will talk about operators.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 07_Security
- Lecture: 186_(2025 Updates) Custom Controllers
- File: 186_(2025 Updates) Custom Controllers.txt
- Topic: (2025 Updates) Custom Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
