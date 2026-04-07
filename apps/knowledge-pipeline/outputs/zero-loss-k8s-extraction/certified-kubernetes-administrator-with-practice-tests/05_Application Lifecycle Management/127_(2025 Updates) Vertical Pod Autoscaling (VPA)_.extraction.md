# Extraction: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_

---

## Entry 1
Type: Concept  

Content:
Let's now look at Vertical Pod Autoscaler in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So let's start by looking at how I would manually scale a workload vertically.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Say I am a Kubernetes administrator and I'm sitting on my machine looking at a cluster, I'm tasked to make sure that there is always sufficient workload to support demand for this application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
And from the deployment configuration, I see that this pod requests a 250 milli cores of CPU and has a limit of 500 milli cores of CPU.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
And this means that 500 milli cores is the max capacity it gets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So as I did before, I would run the kubectl top pod command and monitor the resource consumption of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
And so remember that you must have the metric server running on the cluster to be able to monitor as the same as before.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
And when it reaches a specific threshold, what I'm going to do to scale the pod vertically is run the kubectl edit deployment command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
So I would run the edit deployment command and I would change the resource requests and limits assigned to the deployment under the pod template, under the container section, and then save it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
And what would happen is it would then kill that pod and create a new pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So that's basically how I would do it manually.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Warning/Pitfall  

Content:
Now of course we don't wanna do it manually.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
We have the vertical pod autoscaler for that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
So similar to the horizontal pod autoscaler, the vertical pod autoscaler continuously monitors the metrics and then it automatically increases or decreases the resources assigned to the pods in a deployment and thus balances the workload.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So let's look at it in a bit more detail.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Warning/Pitfall  

Content:
So unlike the horizontal pod autoscaler, the vertical pod autoscaler do not come built-in, as such, we must deploy it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
So we first apply the vertical pod autoscaler definition file available in the GitHub repo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Exam Tip  

Content:
And then when we run the kubectl get pods command in the cube system namespace and search for VPA, we'll be able to see that there are multiple components deployed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Best Practice  

Content:
So there is the admission controller recommender and the updater service, which should be running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So let's look at what those are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Exam Tip  

Content:
So the VPA deployment consists of multiple components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So there's the VPA admission controller, the updater, and the recommender.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
So the recommender is responsible for continuously monitoring resource usage from the Kubernetes metrics API, and collects historical and live usage data for pods, and then provides recommendations on optimal CPU and memory values.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And the recommender itself does not modify the pod directly, or it only suggests changes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
The updater detects pods that are running with suboptimal resources and evicts them when an update is needed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So it gets the information from the recommender and monitors the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And if a pod needs to be updated, it evicts them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
That means it just terminates the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Best Practice  

Content:
And the admission controller intervenes the pod creation process and uses the recommendations from the recommender again, to then mutate the pod spec to apply the recommended CPU and memory values at startup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
And this ensures that the newly created pods start with the correct resource requests.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Comparison  

Content:
So basically the VPA recommender collects information, the updater monitors or gets the information from the recommender, compares that to the actual pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
And if the pod is beyond the threshold, it kills the pod and whether it kills or not, that depends on the policy that we'll talk about in a bit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
But ideally it would kill the pod and then the admission controller intervenes because when a pod is killed, it's automatically, the deployment will automatically recreate the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
And when it does that, the admission controller intervenes and updates the resources so that the pod is now, now comes up with the new size.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
So let's look at how to create the VPA service using a definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
So not that there's no imperative match to create a VPA because it's not a built-in component like the HPA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
So here we have the API version, which is autoscaling.k8s.io/v1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
The kind is vertical pod autoscaler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
The name is my app VPA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
The target to monitor is the my app deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
The container policies define what is monitored, in this case, the CPU minimum allowed and max allowed are configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And finally we have the update policy mode.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So there are four modes that VPA operates in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
The off mode, which only recommends changes but does not do anything.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So in this case, it's only the recommender working, the updater and the admission controllers are not working.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
In case of the off-mode.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
The initial mode that only changes pods on creation, not later.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So in the initial mode, the recommender recommends a change.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
And when the deployment is scaled for some other reason and the new pods come up, the admission controller intervenes and changes the pods resource definitions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
The updater in this case does not work to kill or take down the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
In case of the recreate mode, that's where the updater component jumps in and evicts an existing pod, when its resource consumption goes beyond range specified.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Best Practice  

Content:
And finally, we have the auto mode that updates existing pods to the recommended numbers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
Again, for now, this behavior is similar to recreate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
So as of now, the auto mode works exactly as a recreate mode.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
But when the support for the in-place a bit of Pod resources is available, the one that we spoke about in the previous video, then that mode would be preferred over recreate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So that auto-mode is really built for the future.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Operational Insight  

Content:
When the in-place update of pod resources are available in stable version of Kubernetes, that would be the default behavior.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
But as of now, the auto-mode works exactly like recreate, where if a pod goes beyond a range, it is killed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Now VPA will monitor resource usage and suggest adjustments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So we can check the recommendations with the command kubectl describe VPA followed by the name of the VPA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
And here you can see the recommendation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So VPAs are just increasing CPU to 1.5.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
So we spoke about horizontal and vertical pod autoscalers, but you must be wondering when to use which.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Comparison  

Content:
So let's kind of compare the two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
First, let's look at the scaling methods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
So VPA as we know works by increasing CPU and memory for existing pods or by just recreating those pods with the new resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Whereas HPA adds or removes pods based on demand.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Exam Tip  

Content:
This means that the VPA optimizes individual pod performance, while HPA focuses on distributing the load across multiple instances.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
Next, in terms of pod behavior, VPA restarts pods to apply the new resource values.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
This means downtime is involved when scaling up vertically.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
In contrast, HPA keeps existing pods running and simply spins up new ones ensuring continuous availability.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
Now what about handling traffic spikes?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
So HPA is clearly the winner here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
It instantly adds more pods when demand increases, making it the preferred choice for applications that require rapid scaling.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
And VPA on the other hand cannot handle sudden spikes efficiently because it requires restarting pods typically, which introduces delays.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
Now, from a cost optimization perspective, both have advantages.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
So VPA prevents over provisioning by adjusting CPU and memory allocation to match actual usage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Best Practice  

Content:
And HPA on the other hand, avoids unnecessary idle pods ensuring that resources are used efficiently without keeping excess instances running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Best Practice  

Content:
So when should you use which?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So VPA is best suited for stateful workloads and CPU or memory heavy applications such as databases, JVM-based applications, AI and other workloads that require fine-tuned resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
So let's say some applications require like heavy CPU in the initial startup, but then later does not require that much CPU.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
What you could do is that's where VPA comes in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
So you could start the instance with a lot of CPU and once that initialization process is over, I mean when it needs to reduce the CPU memory usage allocated to it, then that's where VPA comes into picture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
The HPA is ideal for web applications, microservices and stateless services such as web servers, message queues, and API-based applications where quick scaling is needed to handle fluctuating traffic.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
So in summary, VPA is about optimizing resource allocation for individual pods, while HPA is about scaling the number of pods dynamically based on demand.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
So choosing the right autoscaler depends on the workload type and how you need to scale your application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
All right, that's all for this lesson.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
Head over to the labs, and get your hands-on practicing with VPA.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_
- File: 127_(2025 Updates) Vertical Pod Autoscaling (VPA)_.txt
- Topic: (2025 Updates) Vertical Pod Autoscaling (VPA)_
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
