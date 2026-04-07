# Extraction: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_

---

## Entry 1
Type: Concept  

Content:
Let us now look at horizontal pod autoscaler in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
Let's start by looking at how I would manually scale a workload horizontally.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So I'm a Kubernetes administrator, and I'm sitting on my machine looking at a cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And I'm tasked to make sure that there is always sufficient workload to support demand for this application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
From a deployment configuration perspective, I see this pod requests 250 milli CPU and has a limit of 500 millicores of CPU.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
This means that 500 Millicores is the max the CPU it gets, after which it doesn't get any more.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Um, and the capacity that a single pod can handle is 500 millicores of CPU.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So I would run the kubectl top pod command and monitor the resource consumption of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
If I had to do it manually.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Now remember that you must have the metrics server running on the cluster to be able to monitor the resource usage like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Now, when it reaches the threshold of 450 millicores or whatever it is that I have defined as the threshold or close to that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
I would run the kubectl scale command to scale the deployment to add additional pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So that's the manual way to scale a workload.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
The problems with this approach is that I have to sit in front of my computer and continuously monitor resource usage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
I need to manually run commands to scale up and down.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
And if there's a sudden traffic spike and I want a break or something, I may not be able to react fast enough to support the spike in the application or in the traffic.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So to solve this, we use the Horizontal Pod autoscaler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So the horizontal Pod autoscaler continuously monitors the metrics as we did manually using the top command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
It then automatically increases or decreases the number of pods in a deployment Statefulset or replica set based on the CPU, memory, or custom metrics.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
And if the CPU, memory, or memory usage goes too high, HPA creates more paths to handle that, and if it drops, it removes the extra pods to save resources and thus balances the thresholds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Exam Tip  

Content:
And note that it can also track multiple different types of metrics, which we will refer to in in a few minutes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So let's see this in action.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
For the given nginx deployment, we can configure a horizontal pod autoscaler by running the kubectl autoscale command, targeting the deployment myapp, and specifying a CPU threshold of 50% with a minimum of one and maximum of ten pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
So when this command is run, Kubernetes creates a horizontal pod autoscaler for this deployment that first reads the limits configured on the pod, and then learns that it's set to 500 milli core.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
It then continuously pulls the metric server to monitor the usage, and when the usage goes beyond 50%, it modifies the number of replicas to scale up or down, depending on the usage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
So to view the status of the created HPA, run the kubectl get HPA command and it lists the current HPA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Comparison  

Content:
The targets column shows the current CPU usage versus the threshold we have set, and the minimum and maximum and the current count of replicas.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So it would never go beyond the maximum that we have specified when scaling up, and it would not go beyond the minimum that we specified when scaling down.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
And when you no longer need the HPA, you can delete it using the kubectl delete HPA command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Now that was the imperative approach to creating an HPA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
There's also a declarative approach.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
So create an HPA definition file with the API version set to auto scaling v2 kind is set to horizontal pod autoscaler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
The name is set to Myapp HPA and then we have the scale target ref.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
This is the target resource we want the HPA to monitor.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
That's the deployment named Myapp.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
We also have the min and max replicas defined.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
And then we have configured the metrics and resources to monitor in this case the resource being CPU and target utilization, uh being 50%.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Now note that HPA comes built in with Kubernetes since version 1.23, so there is no separate installation procedures required.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Note that it relies on metric server, so that is a prerequisite.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So talking about metric server we spoke about the metric server that HPA depends on to get current resource utilization numbers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Now what we have been referring to is the internal metric server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
But there are also other sources that we can refer to, such as a custom metrics adapter that can retrieve information from other internal sources, like a workload deployed in a cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
However, these are still internal sources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
We can also refer to external sources, such as tools or other instances that are outside of the Kubernetes cluster, such as a Datadog.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Or Dynatrace instance using an external adapter.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
However, these are beyond the scope of this course, so more details and labs about these are available in our Kubernetes Auto Scaling course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Exam Tip  

Content:
To keep the scope just enough for the exam, this is all that we will discuss about HPA for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Well, thank you so much for watching.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
Head over to the labs and I'll see you in the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_
- File: 123_(2025 Updates) Horizontal Pod Autoscaler (HPA)_.txt
- Topic: (2025 Updates) Horizontal Pod Autoscaler (HPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
