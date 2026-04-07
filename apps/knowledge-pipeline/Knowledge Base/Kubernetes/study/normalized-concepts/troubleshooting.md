# Normalized Concept: Troubleshooting

- Concept Key: troubleshooting
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 903

## 1. Definition
- So let's copy and let's run that.
- And this basically gives you auto completion.
- Okay, so we're gonna look at the status of the cluster.
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- So that's good.
- So let's take a look at it.
- So here it says scale that replica set to one.
- So let's take a look at the replica set, get rs, we have one replica set.
- Let's take a look at that.
- Describe replica set app.

## 2. First-Principles Mental Model
- So the first question is, the cluster is broken.
- So you do a kubectl get and then it automatically gives you the options.
- So I'm gonna set this as well, that way I can just do kubectl get and then yeah, order completion for the short form.
- There is, it says there are deployments.
- So let's take a look at the deployments.
- And we see that there is a app deployed, but it's not ready.
- So there is one container or one pod in the deployment but that pod is not ready.
- Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.
- So let's take a look at the pod and we see that there is a pod created, but it's in a pending state.
- That means the pod has not been assigned to a node and the job of assigning a pod to a node is scheduler's job, right?

## 3. Why This Exists
- -: Okay, so in this video we're going to work on troubleshooting control plane failure.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.
- The other thing is, so if you're setting an alias you should do this as well to get the alias for the short form for kubectl.
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- So that's good.
- So here it says scale that replica set to one.
- So if you look at the node here, it's set to none.
- That means the pod has not been assigned to a node and the job of assigning a pod to a node is scheduler's job, right?
- So we have to look at the status of the scheduler.
- So that means it's a static pod and its status is crash loop back off.

## 4. Internal Working
- So the first question is, the cluster is broken.
- So you do a kubectl get and then it automatically gives you the options.
- So I'm gonna set this as well, that way I can just do kubectl get and then yeah, order completion for the short form.
- There is, it says there are deployments.
- So let's take a look at the deployments.
- And we see that there is a app deployed, but it's not ready.
- So there is one container or one pod in the deployment but that pod is not ready.
- Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.
- So let's take a look at the pod and we see that there is a pod created, but it's in a pending state.
- That means the pod has not been assigned to a node and the job of assigning a pod to a node is scheduler's job, right?
- So we have to look at the status of the scheduler.
- So let's do a, and we know that scheduler runs as a pod in the kube system name space.

## 5. Key Objects / Fields / Relationships
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- There is, it says there are deployments.
- So let's take a look at the deployments.
- So there is one container or one pod in the deployment but that pod is not ready.
- Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.
- And here you have the events and it says creating pod.
- So let's take a look at the pod and we see that there is a pod created, but it's in a pending state.
- Let's take a closer look at that pod.
- So when a pod is in a pending state, it's most likely, that indicates that it has not been assigned a node.
- So if you look at the node here, it's set to none.

## 6. YAML Deep Dive
- So the file is in TTC Kubernetes manifests and we have the kube-scheduler.yaml file here.
- So this is the manifest file for kube-scheduler and within that there's a wrong command.
- So let's check, let's check where this file is specified in the kube controller manager.
- So that means it must be in the slash ADC Kubernetes manifests directory.
- And here we have it specified.
- So we're going to edit the controller manager manifest file to fix that issue.
- So that's set up in the manifest file.
- So let's take a look at the manifest file and we're gonna look at your controller manager.
- Throughout this course, we've actually worked on a number of troubleshooting exercises with respect to the topic we were going through at that point in time.
- So this is going to walk you through how to install kube ADM which is just using the the respective or installing the respective packages for kube adm kubelet and kubectl and so on.

## 7. kubectl / command usage
- So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.
- So you do a kubectl get and then it automatically gives you the options.
- The other thing is, so if you're setting an alias you should do this as well to get the alias for the short form for kubectl.
- So I'm gonna set this as well, that way I can just do kubectl get and then yeah, order completion for the short form.
- So let's do a kubectl, get nodes and we see that the nodes seems to be in a ready state.
- So let's take a look at the options or the command that are used to run this pod.
- So here we can see that there is an incorrect command that's wrong and that's the reason.
- So this is the manifest file for kube-scheduler and within that there's a wrong command.
- Let's do a kubectl.

## 8. Real-world scenarios
- So the first question is, the cluster is broken.
- We tried deploying an application, but it's not working troubleshoot and fix the issue.
- Okay, so we're gonna look at the status of the cluster.
- There is, it says there are deployments.
- So let's take a look at the deployments.
- And we see that there is a app deployed, but it's not ready.
- So there is one container or one pod in the deployment but that pod is not ready.
- Let's do a describe, so you describe deployment app and we see that it's one desired, zero available, so there's, that's one unavailable and there isn't anything here that's really helpful.
- Let's take a look at the deployment and we have one of one ready.
- Now it says scale the deployment app to two parts.

## 9. Pitfalls and misunderstandings
- So before we begin, a quick tip if you don't have the alias set already on your prompt so you could do a alias, k equals kubectl.
- And also if you don't have auto completion then one thing you could do is you could go to the Kubernetes documentation pages search for kubectl cheat sheet and then the first thing that comes here is the kubectl completion bash.
- We don't see anything useful here in the events.
- So you don't have to change anything for kubelet.
- If you're using even somewhat modern version of Kubelet or Kubernetes, it's going to be using systemd already, so you don't have to configure anything, but you do have to configure the systemd cgroup driver for your container runtime.
- So you don't have to manually go in and change it.
- Um, let's just make sure we don't copy that again.
- Technically you don't need to install kubectl on all of the nodes if you don't want to have the tool on all of the nodes, you would just you would at least need it on the control plane node.
- You don't need to install this, but we're going to go ahead and install it anyways.
- Which we don't want.

## 10. Troubleshooting angle
- -: Okay, so in this video we're going to work on troubleshooting control plane failure.
- We tried deploying an application, but it's not working troubleshoot and fix the issue.
- And then it says fail to start container kube-scheduler error response from daemon, OCI runtime create failed, starting container process kube-scheduler, executable file not found.
- And we're gonna save that and we'll see if we have we'll see the status of the pod and its in a creating container config error state.
- Okay, even though the deployment was scaled to two the number of pods does not seem to increase investigate and fix the issue.
- So here it says crash loop back off terminated error.
- So we're going to edit the controller manager manifest file to fix that issue.
- In this lecture we will see different ways of troubleshooting worker node failures.
- Check the Cubelet logs for possible issues.
- Check the Kubelet certificates, ensure they're not expired and they are part of the right group, and that the certificates are issued by the right CA.

## 11. CKA / CKAD relevance
- So we look at volume mounts here and we can see there are multiple volume mounts.
- This will help in the upcoming practice test as well as in the exam.
- This will help in upcoming practice tests as well as in the exam.
- Now if you are going to be creating a cluster with multiple control plane nodes, there's going to be a separate document which is creating a highly available cluster with kube ADM.
- It's going to show you how to set up a cluster with multiple control plane nodes.
- So this is going to walk you through how to install kube ADM which is just using the the respective or installing the respective packages for kube adm kubelet and kubectl and so on.
- Because when you're taking the certification, you're not going to have access to this repo.
- So if you have the ability to run commands on multiple terminals, then you could just have a single command get sent to all of the terminals.
- And this is just giving you an example on how to configure the Cgroup driver for Kubelet.
- And you'll find that by default in our environment, whether we use vagrant or Multipass, you're going to see that if I do an IP route, you're going to see that we have a and I'm going to make this a little bit bigger.

## 12. Source Contributions
- Matched Global Concepts:
  - Lab Solution - Control Plane Failure _ (Optional) (match score: 2, notes: 144)
  - Worker Node Failure (match score: 2, notes: 24)
  - Control Plane Failure (match score: 2, notes: 9)
  - Application Failure (match score: 2, notes: 31)
  - Demo - Kubeadm - Configuring Cluster With Kubeadm (match score: 2, notes: 377)
  - Lab Solution - Worker Node Failure _ (Optional) (match score: 2, notes: 105)
  - Time Management (match score: 2, notes: 63)
  - Demo - ReplicaSets (match score: 2, notes: 150)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting: 313 note entries
  - certified-kubernetes-application-developer / 13_Certification Tips: 63 note entries
  - learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments: 150 note entries
  - learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm: 377 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 1 | Type Troubleshooting
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 2 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 3 | Type Troubleshooting
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 4 | Type Warning/Pitfall
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 5 | Type Warning/Pitfall
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 9 | Type Best Practice
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 10 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 14 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 15 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 16 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 17 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 19 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-014_section_concept_map.md | 291_Lab Solution - Control Plane Failure _ (Optional).extraction.md | Entry 20 | Type Concept

