# Extraction: certified-kubernetes-application-developer / 09_Security / 156_Validating and Mutating Admission Controllers

---

## Entry 1
Type: Implementation Step  

Content:
In this lecture, we will take a closer look at the different types of admission controllers and how we can configure our own admission controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
We looked at the namespace exists or namespace lifecycle admission controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Concept  

Content:
It can help validate if a namespace already exists and reject the request if it doesn't exist.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
This is known as a validating admission controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
Let's look at another type of admission controller plugin named as the default storage class plugin.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
This is a plugin that is enabled by default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Exam Tip  

Content:
Say for example, you're submitting a request to create a PVC.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
The request goes through authentication, authorization, and finally the admission controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
The default storage class admission controller will watch for request to create a PVC and check if it has a storage class mentioned in it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
If not, which is true in our case, it will modify your request to add the default storage class to your request.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
This could be whatever storage class is configured as the default storage class in your cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
So when the PVC is created and you inspect it, you will see that a storage class default is added to it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Even though you hadn't specified it during the creation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So this type of admission controller is known as a mutating admission controller.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Implementation Step  

Content:
It can change or mutate the object itself before it is created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
So those are two types of admission controllers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
Mutating admission controllers are those that can change the request, and validating admission controllers are those that can validate the request and allow or deny it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Concept  

Content:
And there may be admission controllers that can do both that can mutate a request as well as validate a request.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Implementation Step  

Content:
Now, generally mutating admission controllers are invoked first, followed by validating.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Admission controllers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
This is so that any change made by the mutating admission controller can be considered during the validation process.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Exam Tip  

Content:
In this example, the namespace auto provisioning admission controller, which is a mutating admission controller, is run first, followed by the validating controller namespace exists.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Implementation Step  

Content:
If it was run the other way, then the namespace exists.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
Admission controller would always reject the request for a namespace that does not exist, and the namespace auto provisioning controller would never be invoked to create the namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Troubleshooting  

Content:
And when a request goes through these admission controllers, if any admission controller rejects the request, the request is rejected and an error message is shown to the user.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
Now, these are all built in admission controllers that are part of the Kubernetes source code and are compiled and shipped with Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
Now what if we want our own admission controller with our own mutations and validations?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
That has our own logic You support external admission controllers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
There are two special admission controllers available mutating Admission Webhook and then Validating admission Webhook.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Implementation Step  

Content:
And this is what we will look at next.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
We can configure these webhooks to point to a server that's hosted either within the Kubernetes cluster or outside it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
And our server will have our own admission webhook service running with our own code and logic.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
After a request goes through all the built in admission controllers, it hits the webhook that's configured.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Implementation Step  

Content:
We will see how to configure that in a bit.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
And then and then once it hits the webhook, it makes a call to the admission webhook server by passing in an admission review object in a JSON format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
This object has all the details about the request, such as the user that made the request and the type of operation the user is trying to perform, and on what objects and details about the object itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
On receiving the request, the admission webhook server responds with an admission review object with a result of whether the request is allowed or not.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Implementation Step  

Content:
If the allowed field in the response is set to true, then the request is allowed and if it's set to false, it is rejected.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
So how do we set this up?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Implementation Step  

Content:
First, we must deploy our admission webhook server, which will have our own logic, and then we configure the webhook on Kubernetes by creating a webhook configuration object.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Implementation Step  

Content:
So let's take a look at each of these steps next.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
So the first step is to deploy our own webhook server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Architecture  

Content:
Now this could be an API server that could be built on any platform.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Exam Tip  

Content:
An example code of a webhook server written in go can be found here in the Kubernetes documentation pages.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
It's written in the go programming language.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
You could develop your own server in other languages as well if required.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
The only requirement is that it must accept the mutate and validate APIs and respond with a JSON object that the web server expects.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
So here's a pseudocode of a sample webhook server written in Python.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
There are two calls a validate call and a mutate call.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 50
Type: Exam Tip  

Content:
The validate call receives the validation webhook request, and in this example compares the name of the object and the name of the user who sent the request and rejects the request.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
If it's the same name, well, just a simple sample use case to show what we can do with the requests that come in.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
And if you look down, we'll see the mutating webhook, which gets the username and responds with a JSON patch operation of adding the username as a label to any request that was raised by anyone.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So if you take a closer look at this particular piece of code, a patch object is a list of patch operations, with each operation being add, remove, replace, move, copy, or test.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 54
Type: Implementation Step  

Content:
And we then specify the path within the JSON object that needs to be targeted for change.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
In this case, it is slash metadata slash label slash users, and then the value that needs to be added if it is an add operation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So we get the username from the request.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
So that's going to be the value of that particular label.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
This is then sent as a base64 encoded object as part of the response.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Exam Tip  

Content:
On a side note, from an exam point of view, you will not be asked to develop any code like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 60
Type: Warning/Pitfall  

Content:
So don't worry if you don't fully understand this piece of code.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 61
Type: Implementation Step  

Content:
All you need to take away from this is that the admission webhook server is a server that you deploy that contains the logic or the code to permit or reject a request, and it must be able to receive and respond with the appropriate responses that that the webhook expects.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 62
Type: Exam Tip  

Content:
So this is just a simple example to show what kind of things that you can do or what what what kind of things that you can code and implement in the webhook server that you deploy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
So moving on.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
Once we have developed our own webhook server, the next step is to host it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Implementation Step  

Content:
So we either run it as a server somewhere or containerize it and deploy it within Kubernetes cluster itself as a deployment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 67
Type: Implementation Step  

Content:
If deployed as a deployment in a Kubernetes cluster, then it needs a service for it to be accessed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
So we have a service named Webhook Service as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 69
Type: Implementation Step  

Content:
The next step is to configure our cluster to reach out to the service and validate or mutate the requests.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
For this, we create a validating webhook configuration object.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
So we start with the API version kind metadata and webhooks section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
API version is admission registration.io v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
Kind is validating webhook configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
If we are configuring a mutating webhook, this would be a mutating webhook configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
We then give it a name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
Now under webhooks we configure the different webhooks.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
So a webhook has a name, a client config and a set of rules.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Exam Tip  

Content:
So the name we set it to pod policy dot example.com.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
The client config is where we configure the location of our admission webhook server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
If we deploy this server externally on our own, and that is not a part of a deployment in Kubernetes cluster, then we can simply provide a URL path to that server like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 81
Type: Implementation Step  

Content:
Now instead, if we deployed the server as another service on our own cluster, as we see here as it is on the left, then we can use the service configuration and provide the namespace and name of the service, which in our case is webhook service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Architecture  

Content:
Now of course, the communication between the API server and the webhook server has to be over TLS.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 83
Type: Best Practice  

Content:
So a certificate bundle should be configured.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 84
Type: Implementation Step  

Content:
So the server has to be configured with a pair of certificates.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 85
Type: Implementation Step  

Content:
Then a Certificate.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 86
Type: Implementation Step  

Content:
ACA bundle is to be created and passed into this client config SSI bundle.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Architecture  

Content:
Next, we must specify when to call our API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Implementation Step  

Content:
We can specify rules to configure exactly when we want our webhook server to be called for validation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
Now we might not want to do that for all of the calls.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 90
Type: Exam Tip  

Content:
For example, we may only want it to be called while creating pods, or deleting pods, or creating deployments, etc..

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
Now, whatever that may be, it can be added as a rule under the rules section using API groups, API versions, operation types and resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Exam Tip  

Content:
In this example, we're only going to call this webhook configuration when calls are made to create pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Best Practice  

Content:
And that should be it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
Once this object is created, every time we create a pod, a call would be made to the webhook service and depending on the response, it would be allowed or rejected.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
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
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 96
Type: Implementation Step  

Content:
Head over to the labs and practice working with webhooks and I will see you in the next lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 156_Validating and Mutating Admission Controllers
- File: 156_Validating and Mutating Admission Controllers.txt
- Topic: Validating and Mutating Admission Controllers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
