# Normalized Concept: Node Affinity

- Concept Key: node-affinity
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 696

## 1. Definition
- Now we have seen how the default scheduler works in Kubernetes in the previous lectures.
- It has an algorithm that distributes pods across nodes evenly, as well as takes into consideration various conditions.
- We specify through taints and tolerations and node affinity, etc..
- But what if none of these satisfies your needs?
- Say you have a specific application that requires its components to be placed on nodes after performing some additional checks, so you decide to have your own scheduling algorithm to place pods on nodes so that you can add your own custom conditio...
- Kubernetes is highly extensible.
- That way, all of the other applications can go through the default scheduler.
- When creating a pod or a deployment, you can instruct Kubernetes to have the pod scheduled by a specific scheduler.
- So let's see how that's done.
- So the default scheduler is named default scheduler.

## 2. First-Principles Mental Model
- Now we have seen how the default scheduler works in Kubernetes in the previous lectures.
- That way, all of the other applications can go through the default scheduler.
- When creating a pod or a deployment, you can instruct Kubernetes to have the pod scheduled by a specific scheduler.
- So the default scheduler is named default scheduler.
- And this name is configured in a kube scheduler configuration file that looks like this.
- But this is how it would look if you were to create one.
- And for the other schedulers, we could create a separate configuration file and set the scheduler name like this.
- So let's start with the most simplest way of deploying an additional scheduler.
- Now earlier we saw how to deploy the Kubernetes Kube scheduler.
- We download the kube scheduler binary and run it as a service with a set of options.

## 3. Why This Exists
- Say you have a specific application that requires its components to be placed on nodes after performing some additional checks, so you decide to have your own scheduling algorithm to place pods on nodes so that you can add your own custom conditio...
- When creating a pod or a deployment, you can instruct Kubernetes to have the pod scheduled by a specific scheduler.
- Now, when there are multiple schedulers, they must have different names so that we can identify them as separate schedulers.
- Now the default scheduler doesn't really need one because if you don't specify a name it sets the name to default scheduler.
- But this is how it would look if you were to create one.
- Now earlier we saw how to deploy the Kubernetes Kube scheduler.
- Now, to deploy an additional scheduler, you may use the same kube scheduler binary or use one that you might have built for yourself, which is what you would do if you needed the scheduler to work differently.
- In this case, we're going to use the same binary to deploy the scheduler, and this time we point the configuration to the custom configuration file that we created.
- Note that there are other options to be passed in, such as the kubeconfig file to authenticate into the Kubernetes API, but I'm just skipping that for now just to keep it super simple.
- So let's look at how it works if you were to deploy the scheduler as a pod.

## 4. Internal Working
- Now we have seen how the default scheduler works in Kubernetes in the previous lectures.
- That way, all of the other applications can go through the default scheduler.
- When creating a pod or a deployment, you can instruct Kubernetes to have the pod scheduled by a specific scheduler.
- So the default scheduler is named default scheduler.
- And this name is configured in a kube scheduler configuration file that looks like this.
- But this is how it would look if you were to create one.
- And for the other schedulers, we could create a separate configuration file and set the scheduler name like this.
- So let's start with the most simplest way of deploying an additional scheduler.
- Now earlier we saw how to deploy the Kubernetes Kube scheduler.
- We download the kube scheduler binary and run it as a service with a set of options.
- Now, to deploy an additional scheduler, you may use the same kube scheduler binary or use one that you might have built for yourself, which is what you would do if you needed the scheduler to work differently.
- In this case, we're going to use the same binary to deploy the scheduler, and this time we point the configuration to the custom configuration file that we created.

## 5. Key Objects / Fields / Relationships
- It has an algorithm that distributes pods across nodes evenly, as well as takes into consideration various conditions.
- We specify through taints and tolerations and node affinity, etc..
- Say you have a specific application that requires its components to be placed on nodes after performing some additional checks, so you decide to have your own scheduling algorithm to place pods on nodes so that you can add your own custom conditio...
- When creating a pod or a deployment, you can instruct Kubernetes to have the pod scheduled by a specific scheduler.
- We download the kube scheduler binary and run it as a service with a set of options.
- Note that there are other options to be passed in, such as the kubeconfig file to authenticate into the Kubernetes API, but I'm just skipping that for now just to keep it super simple.
- This is not how you would deploy a custom scheduler 99% of the time today, because with kube ADM deployment, all the control plane components run as a pod or a deployment within the Kubernetes cluster.
- So let's look at how it works if you were to deploy the scheduler as a pod.
- So we create a pod definition file and specify the Kubeconfig property, which is the path to the scheduler conf file that has the authentication information to connect to the Kubernetes API server.
- The leader elect option is used when you have multiple copies of the scheduler running on different master nodes, as in a high availability setup where you have multiple master nodes with the scheduler process running on both of them.

## 6. YAML Deep Dive
- We specify through taints and tolerations and node affinity, etc..
- Say you have a specific application that requires its components to be placed on nodes after performing some additional checks, so you decide to have your own scheduling algorithm to place pods on nodes so that you can add your own custom conditio...
- However, some specific applications that you may choose can use your own custom scheduler, so your Kubernetes cluster can have multiple schedulers at a time.
- When creating a pod or a deployment, you can instruct Kubernetes to have the pod scheduled by a specific scheduler.
- Now the default scheduler doesn't really need one because if you don't specify a name it sets the name to default scheduler.
- So we create a pod definition file and specify the Kubeconfig property, which is the path to the scheduler conf file that has the authentication information to connect to the Kubernetes API server.
- Note that we have the scheduler name specified in the file, so that's how the name gets picked up by the scheduler.
- Now for this to work there are some additional kind of prerequisites.
- So basically whatever is the contents in the uh, in that particular config map is then mapped to a volume mount to a volume here the specific location.
- And then from this location you have this YAML file which has which basically has this content.

## 7. kubectl / command usage
- So when you run the the get pods command in the kube system namespace, you can then see the new custom scheduler running.
- Now create the pod using the kubectl create command.
- So if the pod is in a the pending state, then you can look at the logs under the pod describe command.
- If you've got a describe command and you'll mostly notice that the scheduler isn't configured correctly.
- Now we can view this in the events using the kubectl get events command with the dash o wire option.
- So for that we have logs using the kubectl logs command and provide the scheduler pod name or the deployment name.
- Set command to view the created daemon set.
- Run the kube control, get daemon, set command and of course to view more details on the kube control, describe daemon sets command.
- Use the command Kube cube control.
- So we're gonna do a kubectl, create deployment, and it's gonna be called mywebapp, then the image is going to be nginx, and we wanna set the replicas to two.

## 8. Real-world scenarios
- In this lecture, we look at deploying multiple schedulers in a Kubernetes cluster.
- You can write your own Kubernetes Scheduler program, package it, and deploy it as the default scheduler, or as an additional scheduler in Kubernetes cluster.
- However, some specific applications that you may choose can use your own custom scheduler, so your Kubernetes cluster can have multiple schedulers at a time.
- When creating a pod or a deployment, you can instruct Kubernetes to have the pod scheduled by a specific scheduler.
- Now the default scheduler doesn't really need one because if you don't specify a name it sets the name to default scheduler.
- So let's start with the most simplest way of deploying an additional scheduler.
- Now earlier we saw how to deploy the Kubernetes Kube scheduler.
- Now, to deploy an additional scheduler, you may use the same kube scheduler binary or use one that you might have built for yourself, which is what you would do if you needed the scheduler to work differently.
- In this case, we're going to use the same binary to deploy the scheduler, and this time we point the configuration to the custom configuration file that we created.
- This is not how you would deploy a custom scheduler 99% of the time today, because with kube ADM deployment, all the control plane components run as a pod or a deployment within the Kubernetes cluster.

## 9. Pitfalls and misunderstandings
- Now the default scheduler doesn't really need one because if you don't specify a name it sets the name to default scheduler.
- Then you don't have to worry about adding or removing monitoring agents from these nodes when there are changes in your cluster, as the Daemonset will take care of that for you.
- So I'm gonna copy this, and I'm gonna delete the host part here, I don't need that.
- We do not want any other pod to be placed on our node.
- However, taints and tolerations does not guarantee that the pods will only prefer these nodes, so the red pods ends up on one of the other nodes that do not have a taint or toleration set.
- The taint effect defines what would happen to the pods if they do not tolerate the taint.
- And third is no execute, which means that new pods will not be scheduled on the node and existing pods on the node, if any will be evicted if they do not tolerate the taint.
- We do not have any chains or tolerations at this point, so they are scheduled this way.
- We do not have any teams or tolerations at this point, so they are scheduled this way.

## 10. Troubleshooting angle
- You could also view the logs of the scheduler in case you run into issues.
- So I'm gonna just copy this, and under spec, let's add that in there, and let me fix the spacings.
- And we have to add a liveness probe to the container to restart if the command ls/bar/www/atm/probe fails.
- There seems to be some error.
- So let's go back, see what the error is.
- Okay, so even though here it said line 26 the issue was a few lines above.
- For example, the operations team takes care of ship handling, traffic control, etc. they deal with issues related to damages, the routes the different ships take, etc. the cargo team takes care of containers when containers are damaged or destroyed.

## 11. CKA / CKAD relevance
- In this lecture, we look at deploying multiple schedulers in a Kubernetes cluster.
- You can write your own Kubernetes Scheduler program, package it, and deploy it as the default scheduler, or as an additional scheduler in Kubernetes cluster.
- However, some specific applications that you may choose can use your own custom scheduler, so your Kubernetes cluster can have multiple schedulers at a time.
- Now, when there are multiple schedulers, they must have different names so that we can identify them as separate schedulers.
- The leader elect option is used when you have multiple copies of the scheduler running on different master nodes, as in a high availability setup where you have multiple master nodes with the scheduler process running on both of them.
- If multiple copies of the same scheduler are running on different nodes, only one can be active at a time, and that's where the leader elect option helps in choosing a leader who will lead the scheduling activities.
- In case you do have multiple masters, just remember that you can pass in this additional parameter to set a log object name.
- And for the one for configuring multiple schedulers.
- And if you look here first of all it shows you how to if you were to build your own scheduler, how you could clone the Kubernetes repo and then make changes to the scheduler and build it and package it into a Docker image.
- So we have multiple schedulers.

## 12. Source Contributions
- Matched Global Concepts:
  - Multiple Schedulers (match score: 1, notes: 105)
  - DaemonSets (match score: 1, notes: 41)
  - Node Selectors Logging (match score: 1, notes: 32)
  - Mock Exam -2 (Solution) (match score: 1, notes: 138)
  - Solution - Node Affinity (Optional) (match score: 1, notes: 99)
  - Taints and Tolerations vs Node Affinity (match score: 1, notes: 44)
  - Taints and Tolerations (match score: 1, notes: 155)
  - Cluster Architecture (match score: 1, notes: 82)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 82 note entries
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 245 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 231 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 138 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 1 | Type Exam Tip
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 2 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 4 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 6 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 8 | Type Exam Tip
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 9 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 10 | Type Exam Tip
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 11 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 13 | Type Exam Tip
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 14 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 15 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 16 | Type Warning/Pitfall
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 17 | Type Implementation Step
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 18 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 19 | Type Architecture
  - section-maps/BATCH-003_section_concept_map.md | 077_Multiple Schedulers.extraction.md | Entry 20 | Type Architecture

