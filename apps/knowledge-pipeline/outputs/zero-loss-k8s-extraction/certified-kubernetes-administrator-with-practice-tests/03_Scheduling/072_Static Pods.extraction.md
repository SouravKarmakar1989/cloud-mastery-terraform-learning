# Extraction: certified-kubernetes-administrator-with-practice-tests / 03_Scheduling / 072_Static Pods

---

## Entry 1
Type: Concept  

Content:
In this lecture we discuss about static pods in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Architecture  

Content:
Earlier in this course, we talked about the architecture and how the Kubelet functions as one of the many control plane components in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Architecture  

Content:
The Kubelet relies on the kube API server for instructions on what pods to load on its node, which was based on a decision made by the kube scheduler which was stored in the etcd data store.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Architecture  

Content:
What if there was no kube API server and kube scheduler, and no controllers and no etcd cluster?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
What if there was no master at all?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
What if there were no other nodes?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
What if you're all alone in the sea by yourself?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Not part of any cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Architecture  

Content:
Is there anything that the Kubelet can do as the captain of the ship?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Can it operate as an independent node?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
If so, who would provide the instructions required to create those pods?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Architecture  

Content:
Well, the Kubelet can manage a node independently on the ship host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
We have the cubelet installed and of course we have container D as well to run containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Architecture  

Content:
There is no Kubernetes cluster, so there are no kube API server or anything like that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Warning/Pitfall  

Content:
The one thing that the Cubelet knows to do is create pods, but we don't have an API server here to provide pod details.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
By now we know that to create a pod, you need the details of the pod in a pod definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Architecture  

Content:
But how do you provide the pod definition file to the kubelet without a kube API server?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
You can configure the Cubelet to read the Pod definition files from a directory on the server, designated to store information about pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Place the pod definition files in this directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
The Cubelet periodically checks this directory for files, reads these files, and creates pods on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Architecture  

Content:
Not only does it create the pod, it can ensure that the pod stays alive if the application crashes, the kubelet attempts to restart it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Architecture  

Content:
If you make a change to any of the file within this directory, the Kubelet recreates the pod for those changes to take effect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
If you remove a file from this directory, the pod is deleted automatically.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Architecture  

Content:
So these pods that are created by Kubelet on its own, without the intervention from the API server or the rest of the Kubernetes cluster components are known as static pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
Remember, you can only create pods this way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
You cannot create replica sets or deployments or services by placing a definition file in the designated directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Architecture  

Content:
They're all concepts, part of the whole Kubernetes architecture that requires other cluster plane components like the replication and deployment controllers, etc. the Kubelet works at a pod level and can only understand pods, which is why it is able to create static pods this way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
So what is that designated folder and how do you configure it?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Architecture  

Content:
It could be any directory on the host, and the location of that directory is passed in to the kubelet as an option while running the service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
The option is named Pod Manifest Path and here it is set to Etsy Kubernetes Manifest folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
There is also another way to configure this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Architecture  

Content:
Instead of specifying the option directly in the Kubelet service file, you could provide a path to another config file using the config option and define the directory path as static pod path in that file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Clusters set up by the Kube admin tool uses this approach.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Best Practice  

Content:
If you're inspecting an existing cluster, you should inspect this option of the Kubelet to identify the path to the directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
You will then know where to place the definition file for your static pods, so keep this in mind when you go through the labs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Best Practice  

Content:
You should know to view and configure this option, irrespective of the method used to set up the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Architecture  

Content:
First check the option pod manifest path in the Kubelet service file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
If it's not there, then look for the config option and identify the file used as the config file and then within the config file, look for the static pod path option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Best Practice  

Content:
Either of this should give you the right path.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
Once the static pods are created, you can view them by running the docker PS command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So why not the kube control command as we have been doing so far?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Warning/Pitfall  

Content:
Remember, we don't have the rest of the Kubernetes cluster yet, so the kube control utility works with the kube API server since we don't have an API server now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
No kube control utility, which is why we're using the docker command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
So then how does it work when the node is part of a cluster?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Architecture  

Content:
When there is an API server requesting the Kubelet to create pods, can the Kubelet create both kinds of pods at the same time?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Architecture  

Content:
Well, the way the Kubelet works is it can take in requests for creating pods from different inputs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
The first is through the Pod definition files from the static parts folder as we just saw.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Architecture  

Content:
The second is through an http API endpoint, and that is how the kube API server provides input to Kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Architecture  

Content:
The Kubelet can create both kinds of pods, the static pods, and the ones from the API server at the same time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Architecture  

Content:
Well, in that case, is the API server aware of the static pods created by the Kubelet?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Yes it is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
If you run the kube control get pods command on the master node, the static pods will be listed as any other pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Well, how is that happening?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Architecture  

Content:
When the Kubelet creates a static pod, if it is a part of a cluster, it also creates a mirror object in the kube API server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Architecture  

Content:
What you see from the kube API server is just a read only mirror of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
You can view details about the pod, but you cannot edit or delete it like the usual pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
You can only delete them by modifying the files from the node's manifest folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Note that the name of the pod is automatically Appended with the node name, in this case node zero one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
So then why would you want to use static paths?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
Since static pods are not dependent on the Kubernetes control plane, you can use static pods to deploy the control plane components itself as pods on a node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Architecture  

Content:
Well, start by installing Kubelet on all the master nodes, then create pod definition files that uses Docker images of the various control plane components such as the API, server, controller, etcd, etc..

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Architecture  

Content:
Place the definition files in the designated manifest folder, and the Kubelet takes care of deploying the control plane components themselves as pods on the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Warning/Pitfall  

Content:
This way you don't have to download the binaries, configure services, or worry about the services crashing if any of these services were to crash.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Architecture  

Content:
Since it's a static pod, it will automatically be restarted by the kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
Neat and simple.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
That's how the Kube admin tool sets up a Kubernetes cluster, which is why when you list the pods in the kube system namespace, you see the control plane components as pods in a cluster setup by the Kube admin tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
We will explore that setup in the upcoming practice test.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Comparison  

Content:
Before I let you go, one question that I get often is about the difference between static pods and daemon sets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
Daemon sets, as we saw earlier, are used to ensure one instance of an application is available on all nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Architecture  

Content:
It is handled by a daemon set controller through the kube API server, whereas static pods, as we saw in this lecture, are created directly by the Kubelet without any interference from the kube API server or rest of the Kubernetes control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
Components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Implementation Step  

Content:
Static pods can be used to deploy the Kubernetes control plane components itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Architecture  

Content:
Both static pods and pods created by daemon sets are ignored by the kube scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Architecture  

Content:
The kube scheduler has no effect on these pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 76
Type: Concept  

Content:
Head over to the practice test and practice working with static pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 03_Scheduling
- Lecture: 072_Static Pods
- File: 072_Static Pods.txt
- Topic: Static Pods
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
