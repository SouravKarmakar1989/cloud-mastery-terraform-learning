# Extraction: certified-kubernetes-administrator-with-practice-tests / 04_Logging & Monitoring / 089_Monitor Cluster Components

---

## Entry 1
Type: Concept  

Content:
In this lecture we talk about monitoring a Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
So how do you monitor resource consumption on Kubernetes?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
Or more importantly, what would you like to monitor?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
I'd like to know node level metrics, such as the number of nodes in the cluster, how many of them are healthy, as well as performance metrics such as CPU, memory, network, and disk utilization, as well as pod level metrics such as the number of pods and the performance metrics of each pod, such as the CPU and memory consumption on them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So we need a solution that will monitor these metrics, store them, and provide analytics around this data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
As of this recording, Kubernetes does not come with a full featured built in monitoring solution.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
However, there are a number of open source solutions available today, such as Metrics Server, Prometheus, Elastic Stack, and proprietary solutions like Datadog and Dynatrace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
Hipster was one of the original projects that enabled monitoring and analysis features for Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Architecture  

Content:
You will see a lot of reference online when you look for reference architectures on monitoring Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Warning/Pitfall  

Content:
However, hipster is now deprecated and a slimmed down version was formed, known as the Metrics Server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Concept  

Content:
You can have one metric server per Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Concept  

Content:
The metrics server retrieves metrics from each of the Kubernetes nodes and pods, aggregates them, and stores them in memory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Note that the metrics server is only an in-memory monitoring solution and does not store the metrics on the disk, and as a result, you cannot see historical performance data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
For that, you must rely on one of the advanced monitoring solutions we talked about earlier in this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
So how are the metrics generated for the pods on these nodes?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Architecture  

Content:
Kubernetes runs an agent on each node known as the Kubelet, which is responsible for receiving instructions from the Kubernetes API, master server, and running pods on the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Architecture  

Content:
The Kubelet also contains a subcomponent known as the C advisor or Container Advisor.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Architecture  

Content:
C advisor is responsible for retrieving performance metrics from Pods and exposing them through the Kubelet API to make the metrics available for the metrics server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
If you're using minikube for your local cluster, run the command minikube add ons.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
Enable metrics dash server for all other environments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Implementation Step  

Content:
Deploy the metrics server by cloning the metric server deployment files from the GitHub repository, and then deploying the required components using the kube control create command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Implementation Step  

Content:
This command deploys a set of pods, services and roles to enable metrics.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Server to poll for performance metrics from the nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
Once deployed, give the metrics server some time to collect and process data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
Once processed, cluster performance can be viewed by running the command kube control top node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
This provides the CPU and memory consumption of each of the nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
As you can see, 8% of the CPU on my master node is consumed, which is about 166 milli cores.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Concept  

Content:
Use the kube control top pod command to view performance metrics of pods in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
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
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 30
Type: Concept  

Content:
Head over to the Coding Exercises section and practice viewing performance metrics on Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
Thank you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 04_Logging & Monitoring
- Lecture: 089_Monitor Cluster Components
- File: 089_Monitor Cluster Components.txt
- Topic: Monitor Cluster Components
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
