# Extraction: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 126_(2025 Updates) In-Place Resize of Pods_

---

## Entry 1
Type: Concept  

Content:
Let us now look at in-place resizing of pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So before we talk about Vertical Pod autoscaler, I thought it would be a good idea to talk about in-place resize of pod resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So what does that mean?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 4
Type: Implementation Step  

Content:
Now as of this recording, which is Kubernetes version 1.32 has has released, if you change resource requirements of a pod in a deployment, the default behavior is to delete the existing pod and then spin up a new pod with the new changes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So any resource, any changes to the resource definitions on pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Uh ah.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Does not happen in place.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Which means the pod needs to be killed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
And the new pod with the new resource definitions need to be created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Operational Insight  

Content:
So that's the default behavior.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Now we know that this can be disruptive, especially for stateful workloads.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So uh, there is an improvement that is being worked upon called as in-place update of Pod resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
This is a feature that is currently in alpha as of Kubernetes release 1.27, and is not enabled by default, and when it goes to the beta or stable stage in the future, it will become enabled by default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
But as of this recording it is not.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So it is still available with the features that are part of the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
You just have to enable it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So to enable this feature, you must set the feature flag called in-place pod vertical scaling to true.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
And once this is enabled, the Pod definition supports a set of resize policy parameters, which we will look at next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So the new resize policy options allow you to specify a restart policy for each resource.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Exam Tip  

Content:
In this example, we have defined that a change in CPU resource will not require the pod to be restarted, and a change in memory will require a restart of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
And the next we make a change to a resource such as updating the CPU to one, and you can see that the pod does not need to be killed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Instead, it can simply be updated with the new resources and so it can just increase in size.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So that explains how we can resize a CPU or memory resource assigned to a container without really restarting it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And this feature is currently in alpha with version 1.33.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Release of Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
This is meant to be released as a beta feature, and in the future will be available as a stable feature.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So now remember that we're still talking about manually scaling a pod, so we're not really talking about Vertical Pod Autoscaler yet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
So in the next video we'll talk about Vertical Pod Autoscaler, but let's also look at some of the limitations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So some of the limitations of in place resizing of pods to keep in mind is that this only works for CPU and memory resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Pod, QoS class, etc. cannot be changed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
Init containers and ephemeral containers cannot be resized with this approach.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Resource requests and limits cannot be moved once they are set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
A containers memory limit may not be reduced below its usage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
If a request puts a container in the state, the resize status will remain in progress until the desired memory limit becomes feasible.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
And finally, windows pods cannot be resized as of now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Well, that's it for this one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 126_(2025 Updates) In-Place Resize of Pods_
- File: 126_(2025 Updates) In-Place Resize of Pods_.txt
- Topic: (2025 Updates) In-Place Resize of Pods_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
