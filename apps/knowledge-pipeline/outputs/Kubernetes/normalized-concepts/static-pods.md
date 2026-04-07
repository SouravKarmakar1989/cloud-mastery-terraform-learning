# Normalized Concept: Static Pods

- Concept Key: static-pods
- Matched Global Concept Blocks: 6
- Source-backed Note Entries Used: 1804

## 1. Definition
- Adjust the following network parameters on the system to the following values and make sure your changes persist reboots.
- So these are the two changes that we need to make so that we can actually run Kubernetes.
- So I definitely recommend you get familiar with it because you are going to need to reference it pretty routinely.
- And so this is gonna be this guy right here.
- So I'm gonna open this in a new tab and here you're gonna see that it's going to give you directions on how to do that.
- So I'm going to copy this and I'm going to just save this in my notepad.
- So we have the command for enabling IP forwarding.
- And that's all we need to do for the question one.
- And once again, I definitely recommend you guys get familiar with where to find things in the documentation.
- In this case, how to enable IPv4 packet forwarding.

## 2. First-Principles Mental Model
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- And so you'll, anytime you are deploying or essentially provisioning a new cluster, you're gonna have to enable these two functionalities on all of your servers.
- Let's go ahead and search kubeadm, and there's going to be a guide on how to create a cluster with kubeadm.
- So to get there you go, under Production environment, installing Kubernetes deployment tools, boots driving a cluster, and then creating a cluster with kubeadm.
- And then what you want to do is the first step that you always have to do is set up a container runtime.
- So in this section it's showing you how to enable IPv4 packet forwarding, which if we go back here, that's going to be the first one.
- So I'm gonna do copy this command, which is, this is going to enable it by modifying this k8s.com file and essentially enabling it in the file and then applying the CCTL params without reboot, which is by running this command.
- And then the last thing that we have to do is just copy this second line right here and also paste that right underneath.
- So we can then copy these commands and then we can just paste it into our terminal and that's going to enable those two features or functionalities on our server.
- That's going to be under the documentation for how to set up a container runtime because the container runtime needs these things enabled before they can work.

## 3. Why This Exists
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- Adjust the following network parameters on the system to the following values and make sure your changes persist reboots.
- So these are the two changes that we need to make so that we can actually run Kubernetes.
- And so you'll, anytime you are deploying or essentially provisioning a new cluster, you're gonna have to enable these two functionalities on all of your servers.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- So I definitely recommend you get familiar with it because you are going to need to reference it pretty routinely.
- Let's go ahead and search kubeadm, and there's going to be a guide on how to create a cluster with kubeadm.
- So to get there you go, under Production environment, installing Kubernetes deployment tools, boots driving a cluster, and then creating a cluster with kubeadm.
- And then what you want to do is the first step that you always have to do is set up a container runtime.
- So I'm gonna open this in a new tab and here you're gonna see that it's going to give you directions on how to do that.

## 4. Internal Working
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- And so you'll, anytime you are deploying or essentially provisioning a new cluster, you're gonna have to enable these two functionalities on all of your servers.
- Let's go ahead and search kubeadm, and there's going to be a guide on how to create a cluster with kubeadm.
- So to get there you go, under Production environment, installing Kubernetes deployment tools, boots driving a cluster, and then creating a cluster with kubeadm.
- And then what you want to do is the first step that you always have to do is set up a container runtime.
- So in this section it's showing you how to enable IPv4 packet forwarding, which if we go back here, that's going to be the first one.
- So I'm gonna do copy this command, which is, this is going to enable it by modifying this k8s.com file and essentially enabling it in the file and then applying the CCTL params without reboot, which is by running this command.
- And then the last thing that we have to do is just copy this second line right here and also paste that right underneath.
- So we can then copy these commands and then we can just paste it into our terminal and that's going to enable those two features or functionalities on our server.
- That's going to be under the documentation for how to set up a container runtime because the container runtime needs these things enabled before they can work.
- So this is the first step that you need to perform when you are creating a Kubernetes cluster before you do anything else.
- Now for question two, we have to create a new service account with the name pvviewer.

## 5. Key Objects / Fields / Relationships
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- Let's go ahead and search kubeadm, and there's going to be a guide on how to create a cluster with kubeadm.
- So to get there you go, under Production environment, installing Kubernetes deployment tools, boots driving a cluster, and then creating a cluster with kubeadm.
- Now for question two, we have to create a new service account with the name pvviewer.
- And we need to grant this service account access to all persistent volumes in the cluster by creating an appropriate cluster role called pvviewer-role and a ClusterroleBinding called pvviewer-role-binding.
- And then we have to create a pod called pvviewer with the image redis and service account set to pvviewer in the default namespace.
- We have to create a service account.
- We then have to set up a role and a role binding so that we can give that service account certain permissions, which in this case is to list all persistent volumes.
- And then we have to assign that service account to a pod.

## 6. YAML Deep Dive
- So we could do this either using the imperative command like kubectl create, or we can create a YAML file.
- I'm gonna just create a file and I'll just call this one question2.yaml and let's create the spec for a pod.
- So here we get the API version set to V1, the kind set to pod metadata.
- And then for the spec, we'll do containers and we will have a...
- Okay, and so that's how you assign a specific service account to a pod.
- But you could, for these mock exams or for the actual exam, you can always just do kubectl, get deployment -o yaml, print it out and make whatever changes and then apply that.
- And so what we can do is we can just say env from and we'll say - configMapRef, and then we specify the name of the ConfigMap, which is app-config.
- And I'm gonna go back here, I'm gonna create a file, just name it question5.yaml.
- It's not gonna really make a difference 'cause the instructions don't say anything specifically about that, but we'll just say, "This is a lower priority class." So we can then save that.
- So I'll just say get pod lp-pod inside the low-priority namespace and I'm going to output that to yaml and save it as question5-pod.yaml.

## 7. kubectl / command usage
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- Let's go ahead and search kubeadm, and there's going to be a guide on how to create a cluster with kubeadm.
- So to get there you go, under Production environment, installing Kubernetes deployment tools, boots driving a cluster, and then creating a cluster with kubeadm.
- So I'm gonna do copy this command, which is, this is going to enable it by modifying this k8s.com file and essentially enabling it in the file and then applying the CCTL params without reboot, which is by running this command.
- So we have the command for enabling IP forwarding.
- So we can then copy these commands and then we can just paste it into our terminal and that's going to enable those two features or functionalities on our server.
- So to create a service account, it's a very simple command.
- If I do kubectl get surface account, we should see the pvviewer.
- So we could do this either using the imperative command like kubectl create, or we can create a YAML file.

## 8. Real-world scenarios
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- And so you'll, anytime you are deploying or essentially provisioning a new cluster, you're gonna have to enable these two functionalities on all of your servers.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- Let's go ahead and search kubeadm, and there's going to be a guide on how to create a cluster with kubeadm.
- So to get there you go, under Production environment, installing Kubernetes deployment tools, boots driving a cluster, and then creating a cluster with kubeadm.
- So this is the first step that you need to perform when you are creating a Kubernetes cluster before you do anything else.
- And we need to grant this service account access to all persistent volumes in the cluster by creating an appropriate cluster role called pvviewer-role and a ClusterroleBinding called pvviewer-role-binding.
- So really we have to do three things.
- And one little tip, I always recommend that you guys copy anytime it gives you a name, whether it's a name for a pod or a deployment, always copy it from the instructions because when you go to take the exam and it performs validation, it's going ...
- And then the next thing that we have to do is we have to create a cluster role called pvviewer-role.

## 9. Pitfalls and misunderstandings
- So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.
- I mean it's set to false so it doesn't matter, but we don't really need this configuration.
- We don't need that.
- Now I don't know how to do that off the top of my head, so it's always best to just consult the documentation.
- It's not gonna really make a difference 'cause the instructions don't say anything specifically about that, but we'll just say, "This is a lower priority class." So we can then save that.
- So we don't need anything that's egress related.
- So for this one I'm going to actually just create a YAML file 'cause I don't really know how to pass those flags in on the imperative command.
- It's telling us to inspect both the pvc and the pv and identify why the pvc is not being bound and to fix the issue so that the pvc successfully binds to the pv, do not modify the pv resource.
- So I don't know if this is correct or I don't know if it's wrong, but let's go and take a look and see what port the kube API servers listening on.
- So we still only have one available and we do not have the three that we want.

## 10. Troubleshooting angle
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.
- All right, so it says that we've deployed a new pod called np-test-1 and a service called np-test-services, incoming connections to the service are not working, troubleshoot and fix it.
- And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.
- So we've now successfully fixed the issue.
- Okay, so for this question it says that there's a kubeconfig file called super.kubeconfig in the following location and it says there's something wrong with this con configuration, troubleshoot and fix it.
- Whenever there's a question where it says there's an issue and we need to fix it, always verify the issue first.
- Okay, and when I run this, let's see what error it does, unhandled error couldn't get current server API group list.

## 11. CKA / CKAD relevance
- Instructor: In this video we're gonna walk through these solutions for all of the questions in mock exam three.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- And one little tip, I always recommend that you guys copy anytime it gives you a name, whether it's a name for a pod or a deployment, always copy it from the instructions because when you go to take the exam and it performs validation, it's going ...
- It's going to give us an example configuration.
- But you could, for these mock exams or for the actual exam, you can always just do kubectl, get deployment -o yaml, print it out and make whatever changes and then apply that.
- So we can get an example one.
- CKA/super.kubeconfig.
- So you wanna make sure you know where in the documentation you can get an example configuration so that you could just copy and paste it.
- And that's going to wrap up this mock exam.
- So what we're going to do is we're going to go over the solutions for the questions in Mock Exam two.

## 12. Source Contributions
- Matched Global Concepts:
  - Mock Exam - 3 - Solution _ (Optional) (match score: 2, notes: 485)
  - Mock Exam - 2 - Solution _ (Optional) (match score: 2, notes: 624)
  - Static Pods (match score: 2, notes: 76)
  - Lab Solution - Static Pods (Optional) (match score: 2, notes: 111)
  - Demo - Deployment with Kubeadm (match score: 1, notes: 364)
  - Lab Solution - Control Plane Failure _ (Optional) (match score: 1, notes: 144)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 187 note entries
  - certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_: 364 note entries
  - certified-kubernetes-administrator-with-practice-tests / 14_Troubleshooting: 144 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 1109 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 1 | Type Exam Tip
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 2 | Type Implementation Step
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 5 | Type Implementation Step
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 6 | Type Exam Tip
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 8 | Type Implementation Step
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 10 | Type Implementation Step
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 11 | Type Implementation Step
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 13 | Type Implementation Step
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 14 | Type Implementation Step
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 17 | Type Implementation Step
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 18 | Type Best Practice
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 19 | Type Implementation Step
  - section-maps/BATCH-016_section_concept_map.md | 308_Mock Exam - 3 - Solution _ (Optional).extraction.md | Entry 20 | Type Concept

