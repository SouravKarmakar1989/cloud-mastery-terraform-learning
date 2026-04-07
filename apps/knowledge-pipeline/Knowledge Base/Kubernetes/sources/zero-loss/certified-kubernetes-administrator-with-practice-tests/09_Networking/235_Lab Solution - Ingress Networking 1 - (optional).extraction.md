# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 235_Lab Solution - Ingress Networking 1 - (optional)

---

## Entry 1
Type: Concept  

Content:
-: Okay, so let's go through this lab on ingress controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So we have deployed ingress controller resources and applications to explore the setup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So let's first look at the environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So let's look at the nodes, there's a single node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
Let's look at the deployments, so there are no deployments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
Let's check all name spaces, so there are deployments in other name spaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So there's, there are deployments in the app space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
The ingress NGINX space, the Kube system space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Let's look at the ingress controller which is usually in Kube system name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
And we see, nope, it's in the ingress namespace, which is, sorry, it's given here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So it's ingress NGINX and yeah, well so we see the ingress controller and the other pods right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
Okay, so which namespace is the ingress controller deployed in?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Concept  

Content:
So if you on a get pod slash a command and we see all the pods and we see the ingress controller here and we see that it's part of the ingress NGINX name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So it's the ingress NGINX name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
Now what is the name of the ingress controller deployment?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So the ingress controller deployment, this is the name of the deployment, so we can also verify that, but by doing a get deploy in the ingress NGINX name space and we see that it's ingress NGINX controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So it's ingress NGINX controller.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
Now which name space are the applications deployed in?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So we have, yeah, so here we have the pods for the application and we have the video wear and the default backend application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
They're in the app space name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
How many applications are deployed in the app space name space?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So we see that there are three pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So that's three applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
Now, which name space is the ingress resource deployed in?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So let's look at the ingress resource.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So we'll do a Kubectl git ingress, and we'll look at all name spaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And we see that we have the ingress wear watch resource and it's in the app space name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Now what is the name of the ingress resource?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Concept  

Content:
So the name of the ingress resource is ingress wear watch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
Now, what is the host configured on the ingress resource?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So you can see that right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So it's set to star.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
That means all hosts are applicable, or all or any hosts.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
What backend is the wear path on the ingress configured in?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So let's look at the ingress, ingress wear watch, ingress resource in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So that's in the app space, name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
And here we see the additional details and we can see the rules.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
We see the host and then we see the path.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Implementation Step  

Content:
And we have the wear and the watch path, and what backend is the wear path configured to?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
So the wear is configured to the wear service, so that's the wear service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
At what path is the video streaming application made available on the ingress?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So the video streaming application, the video service, is at the watch path.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So, watch is the answer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
Now if the requirement does not match any of the configured paths what service are the requests forwarded to?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So we know that if the requirement, if it does not match any of these is going to go to the default backend.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So here it is default HTTP backend, that's the service, so that's default HTTP backend.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Now view the ingress service using the tab at the top of the terminal.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Troubleshooting  

Content:
So here we have ingress service and if you look at it, it gives us a 404 not found error.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So what, which page do you see?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Troubleshooting  

Content:
So we see a 404 error page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Concept  

Content:
Now view the applications by appending the wear and watch to the URL that you opened.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So let me open this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
And we have a wear, which is this, so this is the wear application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
And then we have the watch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
This is the, apparently this is the video streaming application, okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
You're requested to change the URLs at which the applications are made available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So make the video streaming application available at stream.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Concept  

Content:
So for that, let's go and edit the ingress resource.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So let's just replace describe with edit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
And this one should be fairly easy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So here we have the paths.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
So we have the wear path for the wear service and then we have the watch path for the watch service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So all we have to do is replace this with stream and let's save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So it's immediately replace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Troubleshooting  

Content:
If you refresh the watch path, now we get 404 error and we replace it with stream and we now get the video streaming application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
So let's check that out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
Yep, so that's successful.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
Now view the video application using the stream, which we just, we already did so let's skip that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
Now a user is trying to view the eat URL on the ingress service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
Which paid would he see?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So we know that there's nothing called eat.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So let's just verify.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Warning/Pitfall  

Content:
So there's nothing called eat here but we don't know if it is there in another space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
So let's try that out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
Eat, so it doesn't, there's nothing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Troubleshooting  

Content:
So it's a 404 error, so there's a 404 error.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Now due to increased demand, your business decides to take on a new venture, you acquired a food delivery company, their applications have been migrated over to your cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
So inspect the new deployments in the app space name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
Okay, so let's check out deploy in the app space namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
And we see that we have the default backend.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
We have food along with the video and wear applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
So this is the new application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
Now you're requested to add a new path to your ingress to make the food delivery application available to your customers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
So make the new application available at eat.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So we wanna make it available at eat so we know that we need to find out the service that this is exposed on.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
So let's try and find that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 87
Type: Implementation Step  

Content:
So instead of deployment, let's look at services in the same name space and we see that we have the food service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
And let's also verify and make sure that the port is 80 80.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
So it's food service at port 80 80.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
So I'm gonna copy that and let's go and edit the ingress resource again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
So we have a command for that already, Kubectl edit ingress, the name of the ingress resource in the app space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
And what we need to do is add an additional path here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
We're going to copy this, paste that and what we'll do is, you know that it's food service, so food service, and the port number is 80 80, that's fine, and the path is eat, and let's save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
Let's wait for it to finish.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
Okay, and let's try and refresh, and we see the food service application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
Okay, let's check the work.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
Okay now view the food delivery application using eat which we already did.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Implementation Step  

Content:
Now a new payment service has been introduced since it is critical, the new application is deployed in its own name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
So identify the name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
Okay, so let's do a get pods dash A and see what that new name space is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
So we have something, we have a new name space called critical space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Implementation Step  

Content:
So let's do a get deploy in the critical space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 103
Type: Concept  

Content:
And we see that we have a web app pay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 104
Type: Implementation Step  

Content:
So that's, this is the new deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
So identify the name space, so that's critical space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Implementation Step  

Content:
What is the name of the deployment of the new applications?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
We just found that out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
It's called web app pay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 109
Type: Concept  

Content:
You requested to make the new application available at pay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 110
Type: Concept  

Content:
So identify and implement the best approach to making this application available on the ingress controller and test to make sure it's working.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
Look into annotations as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
Okay, so we know that for the app space applications we have the ingress resource in the app space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
Now we cannot use that resource to add something in another space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So what we're going to do is we're gonna create an ingress resource for this critical space itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Best Practice  

Content:
So, or at least that's the best practice.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Best Practice  

Content:
It is the best practice is to create, for different teams who may be having access to different name spaces to create their own ingress resource right, so that should be the approach that we should be using.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
So you can assume that maybe, you know those who are working on this application only has access to this name space, but those who are working on the web pay application only has access to this name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Implementation Step  

Content:
And so, you know any ingress related resources that are created would have to be created in this name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Implementation Step  

Content:
So we'll create a new ingress and then we'll set the path as we did before, we'll set the backend service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Implementation Step  

Content:
So let's first find out what the backend service is to this web pay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So it's called pay service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 122
Type: Implementation Step  

Content:
So just like food service, wear service, this one's called pay service, and the deployment is web app pay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
So we want to direct traffic that goes to the path pay which as of now there won't be anything, and we want to direct that to this pay service on port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
So remember that the port now is 82 82.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Best Practice  

Content:
So that should be the port, okay?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Implementation Step  

Content:
So let's do a Kubectl create ingress, and so we do have an imperative command for that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
Let's do a dash H to see the format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 128
Type: Exam Tip  

Content:
So we're going to, you know there are multiple examples and let's just pick the simplest one, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Implementation Step  

Content:
So Kubectl create ingress, the name and then the rule.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
And that's basically it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 131
Type: Concept  

Content:
So let's do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 132
Type: Concept  

Content:
So the name, let's see if there's a name given.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
So there's no name given here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 134
Type: Concept  

Content:
So we could, you know, give it any name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Implementation Step  

Content:
So this is going to be ingress pay maybe, and then it's in the name space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Concept  

Content:
Remember that this is all has to be in the critical space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Implementation Step  

Content:
And then the rule is that anything that goes to, sorry, pay the path pay, so that's pay here, would go to the pay service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
That's what we just saw.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 139
Type: Warning/Pitfall  

Content:
And the port is 82 82 and we don't have any certs for now so let's just get rid of this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
So that's the ingress pay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 141
Type: Implementation Step  

Content:
And so let's check it out git.ingress in the critical space, and we see that is indeed created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
Let's take a look at it, ingress in critical space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Implementation Step  

Content:
And we see that we have the ingress pay is gonna catch everything that goes to pay and then redirect that to pay service, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So let's go and try it out here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 145
Type: Troubleshooting  

Content:
But you see that it's still not, it's not working as expected, still here's the 404 error.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Concept  

Content:
So let's take a look at the logs and find out why.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 147
Type: Implementation Step  

Content:
So if you look at the logs of this application in the critical space, we have the web pay service, so the web app pay pod, then what we're going to do is we're gonna do a logs for that pod in the critical space.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
And we see that these are the requests that are coming in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
It's coming in as pay, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 150
Type: Concept  

Content:
So the thing is, these applications may not have a slash pay at the end, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Best Practice  

Content:
So it should be without this pay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 152
Type: Best Practice  

Content:
So what's happening is when you're calling pay is just the ingress resource is just forwarding as is, the URL as is, to this application and this application does not really have a pay path, so it should just be just slash right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Concept  

Content:
So let's do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
So for that we have to put in the ingress, the annotations and the rewrite rules.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Warning/Pitfall  

Content:
So if you look at this, right, the watch wear or even the pay service, they're just available at this they don't have a slash watch or slash wear at the end.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Implementation Step  

Content:
But with the default rule that the ingress controller creates, anything that goes to watch is going to have watch at the end.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
Anything that goes to wear is gonna have wear at the end.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 158
Type: Troubleshooting  

Content:
So that's why the error.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 159
Type: Concept  

Content:
So we want to put in this rewrite annotation to get that removed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 160
Type: Best Practice  

Content:
So let's copy that, and let's edit the ingress pay in the, what do you call, space, should have ingress.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 161
Type: Implementation Step  

Content:
And then, so we've gotta add an annotation here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Concept  

Content:
So annotations go in metadata section here and we are gonna say to rewrite target.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 163
Type: Implementation Step  

Content:
So this is basically going to take that out and take out the pay at the end and then just put slash there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 164
Type: Concept  

Content:
So that seems to be set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 165
Type: Concept  

Content:
Okay so when you refresh it you can actually see that this is working as expected.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 166
Type: Concept  

Content:
Let's check our work.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 167
Type: Concept  

Content:
That's good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
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
And yep, we've already gone here and verified that it's working.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
Okay, so that's the end of this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 235_Lab Solution - Ingress Networking 1 - (optional)
- File: 235_Lab Solution - Ingress Networking 1 - (optional).txt
- Topic: Lab Solution - Ingress Networking 1 - (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
