# Extraction: certified-kubernetes-application-developer / 02_Core Concepts / 033_Solution - Services (optional)

---

## Entry 1
Type: Concept  

Content:
Presenter: Okay, in this video, we're going to walk over the solution for the lab on services.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So, the first question is, how many services exist on the system?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So, we're gonna run the "kubectl get service" command, or you could also run the "kubectl get svc" command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
It's short for service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
And, we can see that there's just one service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So, select that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So, this is a default service created by Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Okay, so what is the type of the default Kubernetes service?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
If you look at the type here, we see that it's ClusterIP.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So, let's select ClusterIP.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Architecture  

Content:
And, we'll look at what this service is, in particular later, when we talk about the Kubernetes architecture, the API server in more detail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
But for now, let's just consider it as any other service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
So, what is the target port configured on the Kubernetes service?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So, for this, you've got to look at the service in more detail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So, we're gonna do "kubectl describe" command, and we're gonna describe the service named Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So, here we see the port details.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So, the port is 443, the target port is 6443.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So, the question is, what is the target port?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So, we'll select 6443.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
Okay, how many labels are configured on the Kubernetes service?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
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
So, if you look at this right here, so there are two labels.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Architecture  

Content:
Component is API server, and the provider is Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Architecture  

Content:
So, this service is, basically, the Kubernetes API server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Architecture  

Content:
We'll discuss more about the API server, and this service specifically, when we learn about the API server in detail.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
And then, the CK of course, when we get to that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So for now, the answer is two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
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
Okay, the next question is, how many endpoints are attached on the Kubernetes service?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
So for now, we have no idea what the service is, since the service was already created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Warning/Pitfall  

Content:
We don't really know what it is, so we are kind of exploring and finding out more about it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
But, one thing if we want to look at right here, and understand is, how many pods is the service directing traffic to?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So, that's what you can see here, in the endpoints section here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So, endpoints, it says there's just one IP and port.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So, that's one endpoint.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Exam Tip  

Content:
If there are multiple pods that the service is directing traffic to, then there would be multiple ports here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Let me quickly explain what endpoints are, because we have not really discussed about endpoints.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 36
Type: Concept  

Content:
Okay, so here we have a service, and three pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
And, what we do usually is, when we create a pod we know that it has a label to it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Exam Tip  

Content:
So, let's say for example, it's set to app and FE, for front end or something.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
And, the way that we create a service, in order to direct traffic to these pods, is we provide the same labels as selectors to the service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
And then, what the service does, is it identifies all the pods with the same label, and then directs traffic to those pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So, once it identifies the pod with the labels, that's when the service has these endpoints.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
So, from the perspective of a service, endpoints are basically these, the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
The pods that the service has identified, that it's going to direct traffic to, based on the selectors specified on the service and the labels on the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
Now, when we create a service for a set of pods, and we might think that depending on the label and the selector we specified, the service is going to direct traffic to those pods, but it might be possible that we have another pod, which we accidentally created with the same kind of label.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
So, the service is then going to direct traffic to that pod as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
So, and that's when, when we look at the the output of the "kubectl describe" command, that we can identify the additional endpoints, apart from what we thought we had configured.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Right, so we're gonna see, when you look at the "kubectl describe" command for the service, we're gonna see that there are four endpoints.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
But, in fact, our application was, had a replica set, perhaps, that just had three endpoints, or three pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So, that's where this, the endpoint can help.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
And, just to give you a bit more context.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
So, let's say we create, we have a single pod and we create a service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
We set a label to FE, but we accidentally set the selector to, say, FR, something that's different.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
And then, when we try to access the service, we're not able to get through to the application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
And, that's when you look at the description of the service and you realize that the endpoints are zero.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So, that means the service has not identified any pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
Right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Implementation Step  

Content:
So, and then that's when we can look at the labels and selectors in more detail to identify the root cause.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So, that's what endpoints are.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
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
It's nothing but, it's a specification of all the pods that that particular service has identified, based on the selectors and the label set on those pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
Okay, so in this case, this particular Kubernetes service has just one endpoint.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
So, we're gonna select one here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
Okay, the next question is, how many deployments exist on the system now, in the current default namespace?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
So, let's identify, deploy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
There's just one deployment, so we're gonna select one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
Okay, so the next question is, what is the image used to create the pods in the deployment?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
So, we're gonna look at the deployment in a bit more detail, and we see the image is codecloud/simple-web-app-red.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
So, that's this one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
Okay, are you able to access the web app UI?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
Try accessing the web application UI using the tab at the top.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 70
Type: Troubleshooting  

Content:
So, there's the link here, and clicking on it, we see that it gives us a bad gateway error.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So, the answer is no, we're not able to access the web app UI.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So, and that's really because there's no service, right?

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
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
So, we have to create a new service to access the web application using the service-definition.yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
So, there is a service-definition.yaml file here, and we look at it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
So, this is, basically, a kind of a file with the basic framework to create a service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
So, we will use that, and update the details that are given here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Right, so we're gonna set it, give it a name, so the node port and all the different ports.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
Also, specify the selector.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
Now, if you're not sure about, you know, getting this framework, you could go to the Kubernetes documentation pages.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
Search for service, and select service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
And here, you, kind of, get a sample that you can then copy and use.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
So, we will talk about imperative ways, or commands, to create service in the upcoming lectures.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
For now, let's just go with this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
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
So, the name is web app service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
Type is node port.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
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
Target port is 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
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
Port is 8080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
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
Node port is 30080.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
And, the selector name is simple web app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
Okay, let's create that service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
Okay, that's done.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
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
Let's check.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 93
Type: Concept  

Content:
Yeah, let's try to access this now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
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
Okay, so that's working.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 95
Type: Implementation Step  

Content:
So, as I said, in the upcoming lectures, there is a section where we talk about imperative commands, and we'll discuss how we can create a service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
So, there are different ways of creating a service, and we'll discuss about that when we get there.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
For now, that's the end of this lab.

Source:
- Course: certified-kubernetes-application-developer
- Module: 02_Core Concepts
- Lecture: 033_Solution - Services (optional)
- File: 033_Solution - Services (optional).txt
- Topic: Solution - Services (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
