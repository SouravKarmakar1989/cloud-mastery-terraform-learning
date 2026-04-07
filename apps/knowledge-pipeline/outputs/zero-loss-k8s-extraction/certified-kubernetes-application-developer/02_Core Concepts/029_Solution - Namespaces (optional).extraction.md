# Extraction: certified-kubernetes-application-developer / 02_Core Concepts / 029_Solution - Namespaces (optional)

---

## Entry 1
Type: Concept  

Content:
Instructor: Okay, in this video, we will go over the solution for the lab on namespaces.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
Okay, so the first question is, how many namespaces exist on the system?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
For this, we run the kubectl get namespaces command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
You could also run the kubectl get ns command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
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
That's the short form for namespaces.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Okay, so the question is, to identify the number of namespaces.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So you have one, two, three, four, five, six, seven, eight, nine, ten.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So, there are ten namespaces.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
Okay, the next question is, how many pods exist in the research namespace?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So, to look at the pods, we know that, we run the kubectl get pods command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
But, to look into a particular namespace, we specify the namespace option, and the namespace we got to look to is research, so that's the research namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So, there are two pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Warning/Pitfall  

Content:
Another way to do this, if you don't wanna type the full option, is to just use the dash N, and that's two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
Okay, so the next question is, create a pod in the finance namespace using the spec command below.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
So, we know that, to create a pod, we run the kubectl run command, then we pull the name, which happens to be Redis, and the image is Redis as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Warning/Pitfall  

Content:
But, we don't wanna create it in the default namespace, so if I run this command, it's going to create the pod in that default namespace, but we wanna create it in the finance namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
So, you've got to use the namespace option, and then specify finance.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
Okay, and then we run the get pod command, again, in the finance namespace, to make sure that the pod is created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Yep.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
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
Okay, so the next question is, which namespace has the blue pod in it?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So, we know that running the get ns command lists all the name spaces, and one thing we could do is just go through each name space as we did here, and identify and look for that pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Or, another option is, we do have a command called kubectl get pods dash dash all name spaces, and this lists the pods in all namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So, you have the namespace here, and you have the pods here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And, from here, we can identify the blue pod, and it's in the marketing namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Another option is, instead of typing in all namespaces we just do a dash capital A, and that also gives you the same output.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So, blue is in the marketing namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Okay, so the blue application is available for us to access, and it can be accessed using the link by your terminal, so let's click on that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So, this is the blue application, and it's a simple web application that can be used for connectivity tests.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Best Practice  

Content:
So, let's click on okay, and the question is, what DNS name should the blue application use to access the database DB service in its own namespace?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So, if we run the kubectl get cloud command in the marketing namespace, we see that it has the blue application, there's a Redis DB, but I believe there's also, there's a service, called DB service, within the same namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So, how does the blue application access the DB service?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So, we've learned that if it's within the same namespace, an application can access another service just by using its name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So, we can test it in this interface, so it's DB service and the port number is 6379, so that's where it is.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Let's click on test, and that's success, so we could just refer to it as DB service, if it's within your own namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Best Practice  

Content:
The next question is, what DNS name should the blue application use to access the database DB service in the dev namespace?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So, there's another name space called dev, and there's a service there too, so there are two services by the name DB service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
One is in the marketing, and the other is in the dev namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So, an application blue in the marketing namespace can access the application or service in the dev namespace, but for that you've got to use the full address of that service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
That includes the namespace service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
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
So, that's DB service.dev, that's the namespace, and then you have svc.cluster.local, and we can try that here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So, that is the namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
As we see the cluster.local, click on test.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
That's correct, so let's select that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
Yep, and that's the correct answer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Right, that's the end of the lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 029_Solution - Namespaces (optional)
- File: 029_Solution - Namespaces (optional).txt
- Topic: Solution - Namespaces (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
