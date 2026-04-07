# Normalized Concept: Operator Framework

- Concept Key: operator-framework
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1263

## 1. Definition
- Narrator: Let's now look at the operator framework.
- So we've talked about creating a custom resource definition or C-R-D and a custom controller that has the logic to work with that C-R-D.
- So let's look at a real life use case of an operator and one of the most popular operator is the S-C-D operator.
- However, it can do much more such as take a backup of the S-C-D cluster as well as restore a backup to the S-C-D cluster by simply creating a C-R-D.
- There are additional code in the operator named backup and restore operators that are responsible for performing these additional tasks.
- All operators are available at the operator hub.
- You can find operators for many of the popular applications like S-C-D, Myas Fuel, Prometheus, Grafana, Argo C-D, S-T-O.
- Select any operator to view additional details, and the installation instructions are available on clicking the installed button.
- And that's about it.
- So that's a high level overview of operators.

## 2. First-Principles Mental Model
- And currently, these are separate entities and we have to manually create the C-R-D and the resources using the C-R-D and then we deploy the controller as a pod or a deployment.
- So by deploying the flight operator, it internally creates the custom resource definition and the resources and also deploys the custom controller as a deployment.
- Now, the operator framework does much more than just deploying these two components.
- It is used to deploy and manage and S-C-D cluster within Kubernetes, but it has an S-C-D cluster, C-R-D, and a custom controller that watches for the S-C-D cluster resource and deploys S-C-D within the Kubernetes cluster.
- Deploying an application is as easy as following the three steps.
- That's first, installing the operator lifecycle manager, and then installing the operator itself.
- So thank you so much, and I'll see you in the next one.
- And we have to manually create the CRD and the resources using the CRD.
- And then we deploy the controller as a pod or a deployment.
- And one of the most popular operator is the etcd operator.

## 3. Why This Exists
- So we've talked about creating a custom resource definition or C-R-D and a custom controller that has the logic to work with that C-R-D.
- And currently, these are separate entities and we have to manually create the C-R-D and the resources using the C-R-D and then we deploy the controller as a pod or a deployment.
- However, these two entities can be packaged together to be deployed as a single entity using the operator framework.
- It is used to deploy and manage and S-C-D cluster within Kubernetes, but it has an S-C-D cluster, C-R-D, and a custom controller that watches for the S-C-D cluster resource and deploys S-C-D within the Kubernetes cluster.
- However, it can do much more such as take a backup of the S-C-D cluster as well as restore a backup to the S-C-D cluster by simply creating a C-R-D.
- So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the ap...
- Select any operator to view additional details, and the installation instructions are available on clicking the installed button.
- So that's a high level overview of operators.
- So we've talked about creating a custom resource definition or CRD and a custom controller that has the logic to work with that CRD.
- And we have to manually create the CRD and the resources using the CRD.

## 4. Internal Working
- And currently, these are separate entities and we have to manually create the C-R-D and the resources using the C-R-D and then we deploy the controller as a pod or a deployment.
- So by deploying the flight operator, it internally creates the custom resource definition and the resources and also deploys the custom controller as a deployment.
- Now, the operator framework does much more than just deploying these two components.
- It is used to deploy and manage and S-C-D cluster within Kubernetes, but it has an S-C-D cluster, C-R-D, and a custom controller that watches for the S-C-D cluster resource and deploys S-C-D within the Kubernetes cluster.
- Deploying an application is as easy as following the three steps.
- That's first, installing the operator lifecycle manager, and then installing the operator itself.
- So thank you so much, and I'll see you in the next one.
- And we have to manually create the CRD and the resources using the CRD.
- And then we deploy the controller as a pod or a deployment.
- And one of the most popular operator is the etcd operator.
- It is used to deploy and manage an etcd cluster within Kubernetes.
- So it has an etcd cluster, CRD, and a custom controller that watches for the etcd cluster resource and deploys etcd within the Kubernetes cluster.

## 5. Key Objects / Fields / Relationships
- So we've talked about creating a custom resource definition or C-R-D and a custom controller that has the logic to work with that C-R-D.
- And currently, these are separate entities and we have to manually create the C-R-D and the resources using the C-R-D and then we deploy the controller as a pod or a deployment.
- So by deploying the flight operator, it internally creates the custom resource definition and the resources and also deploys the custom controller as a deployment.
- It is used to deploy and manage and S-C-D cluster within Kubernetes, but it has an S-C-D cluster, C-R-D, and a custom controller that watches for the S-C-D cluster resource and deploys S-C-D within the Kubernetes cluster.
- So we've talked about creating a custom resource definition or CRD and a custom controller that has the logic to work with that CRD.
- And then we deploy the controller as a pod or a deployment.
- So it has an etcd cluster, CRD, and a custom controller that watches for the etcd cluster resource and deploys etcd within the Kubernetes cluster.
- Now for question one, you can see that it says that you are an administrator preparing your environment to deploy a Kubernetes cluster using kubeadm.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- Let's go ahead and search kubeadm, and there's going to be a guide on how to create a cluster with kubeadm.

## 6. YAML Deep Dive
- So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the ap...
- So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across t...
- So we could do this either using the imperative command like kubectl create, or we can create a YAML file.
- I'm gonna just create a file and I'll just call this one question2.yaml and let's create the spec for a pod.
- So here we get the API version set to V1, the kind set to pod metadata.
- And then for the spec, we'll do containers and we will have a...
- Okay, and so that's how you assign a specific service account to a pod.
- But you could, for these mock exams or for the actual exam, you can always just do kubectl, get deployment -o yaml, print it out and make whatever changes and then apply that.
- And so what we can do is we can just say env from and we'll say - configMapRef, and then we specify the name of the ConfigMap, which is app-config.
- And I'm gonna go back here, I'm gonna create a file, just name it question5.yaml.

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
- And currently, these are separate entities and we have to manually create the C-R-D and the resources using the C-R-D and then we deploy the controller as a pod or a deployment.
- However, these two entities can be packaged together to be deployed as a single entity using the operator framework.
- So by deploying the flight operator, it internally creates the custom resource definition and the resources and also deploys the custom controller as a deployment.
- Now, the operator framework does much more than just deploying these two components.
- So let's look at a real life use case of an operator and one of the most popular operator is the S-C-D operator.
- It is used to deploy and manage and S-C-D cluster within Kubernetes, but it has an S-C-D cluster, C-R-D, and a custom controller that watches for the S-C-D cluster resource and deploys S-C-D within the Kubernetes cluster.
- However, it can do much more such as take a backup of the S-C-D cluster as well as restore a backup to the S-C-D cluster by simply creating a C-R-D.
- All operators are available at the operator hub.
- Select any operator to view additional details, and the installation instructions are available on clicking the installed button.
- Deploying an application is as easy as following the three steps.

## 9. Pitfalls and misunderstandings
- For now, I do not anticipate any questions on operators itself in the exam.
- So for this, if you don't remember how to create a storageclass off the top of your head, we can always just go to the documentation and just search for storageclass.
- I mean it's set to false so it doesn't matter, but we don't really need this configuration.
- We don't need that.
- Now I don't know how to do that off the top of my head, so it's always best to just consult the documentation.
- It's not gonna really make a difference 'cause the instructions don't say anything specifically about that, but we'll just say, "This is a lower priority class." So we can then save that.
- So we don't need anything that's egress related.
- So for this one I'm going to actually just create a YAML file 'cause I don't really know how to pass those flags in on the imperative command.
- It's telling us to inspect both the pvc and the pv and identify why the pvc is not being bound and to fix the issue so that the pvc successfully binds to the pv, do not modify the pv resource.
- So I don't know if this is correct or I don't know if it's wrong, but let's go and take a look and see what port the kube API servers listening on.

## 10. Troubleshooting angle
- So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the ap...
- So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across t...
- And you could see that it deleted the old one, but then we got an error.
- So this error is expected and I recommend you read this error 'cause it tells us everything we need to know.
- So what is the issue?
- And now if we do kubectl apply question5-pod.yaml, we can see it's created, we'll do kubectl get pod -n low- priority and we can see it's running with no issues.
- All right, so it says that we've deployed a new pod called np-test-1 and a service called np-test-services, incoming connections to the service are not working, troubleshoot and fix it.
- And it tells us basically what we need to do to fix it, which is create a network policy by the name of ingress-nptest that allows incoming connections to this service over port 80.
- So we've now successfully fixed the issue.
- Okay, so for this question it says that there's a kubeconfig file called super.kubeconfig in the following location and it says there's something wrong with this con configuration, troubleshoot and fix it.

## 11. CKA / CKAD relevance
- However, these two entities can be packaged together to be deployed as a single entity using the operator framework.
- Instructor: In this video we're gonna walk through these solutions for all of the questions in mock exam three.
- To do this, what I always recommend is remembering that since we are in the process of creating a new cluster, using kubeadm, most likely to figure out where we would get the information to do this inside the documentation, which remember, you hav...
- And one little tip, I always recommend that you guys copy anytime it gives you a name, whether it's a name for a pod or a deployment, always copy it from the instructions because when you go to take the exam and it performs validation, it's going ...
- It's going to give us an example configuration.
- But you could, for these mock exams or for the actual exam, you can always just do kubectl, get deployment -o yaml, print it out and make whatever changes and then apply that.
- So we can get an example one.
- CKA/super.kubeconfig.
- So you wanna make sure you know where in the documentation you can get an example configuration so that you could just copy and paste it.
- And that's going to wrap up this mock exam.

## 12. Source Contributions
- Matched Global Concepts:
  - Operator Framework (match score: 2, notes: 22)
  - (2025 Updates) Operator Framework (match score: 2, notes: 32)
  - Mock Exam - 3 - Solution _ (Optional) (match score: 1, notes: 485)
  - Solution - Taints and Tolerations (Optional) (match score: 1, notes: 72)
  - Solution - Node Affinity (Optional) (match score: 1, notes: 99)
  - Demo - Kubeadm - Configuring Cluster With Kubeadm (match score: 1, notes: 377)
  - Mock Exam -2 (Solution) (match score: 1, notes: 138)
  - Custom Controllers (match score: 1, notes: 38)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 32 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 485 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 171 note entries
  - certified-kubernetes-application-developer / 09_Security: 60 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 138 note entries
  - learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm: 377 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 3 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 4 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 5 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 6 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 11 | Type Troubleshooting
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 15 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 16 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-026_section_concept_map.md | 166_Operator Framework.extraction.md | Entry 20 | Type Warning/Pitfall

