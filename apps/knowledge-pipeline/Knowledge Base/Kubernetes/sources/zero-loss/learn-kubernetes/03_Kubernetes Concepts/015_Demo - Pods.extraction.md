# Extraction: learn-kubernetes / 03_Kubernetes Concepts / 015_Demo - Pods

---

## Entry 1
Type: Implementation Step  

Content:
In this demo, we're going to deploy a pod in our minikube cluster.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
As we discussed, a pod is the most basic and the smallest unit in Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So we will use the kubectl command line utility to interact with the Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
Now if you followed our demo earlier of deploying a cluster using minikube, then you already have the kubectl command line utility configured to work with the cluster.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
We will run the command kubectl run nginx, which is the name of the pod dash dash image uh equals to nginx.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Now here is where we specify the Docker image to be used.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
While the pod name could be anything, the image name has to be the name of an image available at Docker Hub or any other container registry.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
You can additionally specify a tag for the image name or a different address to an image hosted on another registry.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
If the image is hosted, uh, in a place that's, uh, other than Docker Hub.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Okay, so once we run this command, we see a pod by the name nginx.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Um has been created and you can check the status using the kubectl get pods command.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Now here you can see the column name which is nginx.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
The status is running and we see that the.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
There is a ready column which shows the number of containers in a ready state.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
We also see if the container has restarted since it was created.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
And how long has the pod been running?

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Comparison  

Content:
We can get more information related to the pod by running the kubectl describe pod nginx command, and you'll notice that this provides a lot more information as compared to the get command.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Exam Tip  

Content:
So for example, the name of the pod is nginx.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
It shows any labels that has been assigned to this pod.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
So this was created by default when we ran the run command.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
It shows when it was started.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
It shows the node that is uh, that it is assigned to along with the IP address of the node.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So in this case, we just have a single node cluster set up using minikube.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And the node name is minikube.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And that is the IP address of this worker node.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Secondly it also shows the IP address of the pod itself.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So in this case the pod is assigned an IP of 172.16.0.3.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
We'll cover more about the IP addresses of the pod and later in the networking section.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Now moving on.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
We can see that it displays information related to the container.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So we know that there is a single container which uses the image nginx.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Exam Tip  

Content:
If there were multiple containers we would list them here.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Exam Tip  

Content:
I'll explain about creating a pod with multiple containers in the upcoming lectures.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
But here we can also see that the nginx image was pulled from Docker Hub.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
And if you scroll all the way to the bottom, you'll see additional information called events.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
And here you see the list of events that occurred since the pod was created.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Exam Tip  

Content:
And it went through multiple stages before it started.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
We can see that the pod was assigned to the minikube node.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Exam Tip  

Content:
If there were multiple nodes, you would see which node the pod was assigned to here.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
And then it entered the pulling phase where the nginx image was pulled down from Docker Hub successfully.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
And then the container called nginx was created and started.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
Now there is one other command that we can use to check the status of the pod, and that is the same command as before.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
The kubectl get pods command, but with the dash wide option.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And this provides additional information such as the node where the pod is running and the IP address of the pod as well.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So this is the internal IP address of the pod itself.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So each pod gets an internal IP of its own within the within the Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Um but more on that later.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
That was a quick demonstration on how to run a pod in minikube environment.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
In the upcoming videos, we will see how to create a pod using a YAML definition file.

Source:
- Course: learn-kubernetes
- Module: 03_Kubernetes Concepts
- Lecture: 015_Demo - Pods
- File: 015_Demo - Pods.txt
- Topic: Demo - Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
