# Normalized Concept: Backup And Restore

- Concept Key: backup-and-restore
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 477

## 1. Definition
- Let's now look at the operator framework.
- So we've talked about creating a custom resource definition or CRD and a custom controller that has the logic to work with that CRD.
- And currently these are separate entities.
- But let's look at a real life use case of an operator.
- And one of the most popular operator is the etcd operator.
- It is used to deploy and manage an etcd cluster within Kubernetes.
- So it has an etcd cluster, CRD, and a custom controller that watches for the etcd cluster resource and deploys etcd within the Kubernetes cluster.
- However, it can do much more, such as take a backup of etcd cluster, as well as restore a backup to the etcd cluster by simply creating a CRD.
- There are additional code in the operator named Backup and restore operators that are responsible for performing these additional tasks.
- All operators are available at the operator hub.

## 2. First-Principles Mental Model
- And we have to manually create the CRD and the resources using the CRD.
- And then we deploy the controller as a pod or a deployment.
- So by deploying the flight operator, it internally creates the custom resource definition and the resources, and also deploys the custom controller as a deployment.
- Now the operator framework does much more than just deploying these two components.
- And one of the most popular operator is the etcd operator.
- It is used to deploy and manage an etcd cluster within Kubernetes.
- So it has an etcd cluster, CRD, and a custom controller that watches for the etcd cluster resource and deploys etcd within the Kubernetes cluster.
- However, it can do much more, such as take a backup of etcd cluster, as well as restore a backup to the etcd cluster by simply creating a CRD.
- You can find operators for many of the popular applications like etcd, MySQL, Prometheus.
- Deploying an application is as easy as following the three steps.

## 3. Why This Exists
- So we've talked about creating a custom resource definition or CRD and a custom controller that has the logic to work with that CRD.
- And we have to manually create the CRD and the resources using the CRD.
- However, these two entities can be packaged together to be deployed as a single entity using the operator framework.
- It is used to deploy and manage an etcd cluster within Kubernetes.
- However, it can do much more, such as take a backup of etcd cluster, as well as restore a backup to the etcd cluster by simply creating a CRD.
- So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across t...
- Select any operator to view additional details and the installation instructions are available on clicking the install button.
- So we've talked about creating a custom resource definition or C-R-D and a custom controller that has the logic to work with that C-R-D.
- And currently, these are separate entities and we have to manually create the C-R-D and the resources using the C-R-D and then we deploy the controller as a pod or a deployment.
- It is used to deploy and manage and S-C-D cluster within Kubernetes, but it has an S-C-D cluster, C-R-D, and a custom controller that watches for the S-C-D cluster resource and deploys S-C-D within the Kubernetes cluster.

## 4. Internal Working
- And we have to manually create the CRD and the resources using the CRD.
- And then we deploy the controller as a pod or a deployment.
- So by deploying the flight operator, it internally creates the custom resource definition and the resources, and also deploys the custom controller as a deployment.
- Now the operator framework does much more than just deploying these two components.
- And one of the most popular operator is the etcd operator.
- It is used to deploy and manage an etcd cluster within Kubernetes.
- So it has an etcd cluster, CRD, and a custom controller that watches for the etcd cluster resource and deploys etcd within the Kubernetes cluster.
- However, it can do much more, such as take a backup of etcd cluster, as well as restore a backup to the etcd cluster by simply creating a CRD.
- You can find operators for many of the popular applications like etcd, MySQL, Prometheus.
- Deploying an application is as easy as following the three steps.
- That's first, installing the Operator Lifecycle manager and then installing the operator itself.
- And, um, I'll see you in the next one.

## 5. Key Objects / Fields / Relationships
- So we've talked about creating a custom resource definition or CRD and a custom controller that has the logic to work with that CRD.
- And then we deploy the controller as a pod or a deployment.
- So by deploying the flight operator, it internally creates the custom resource definition and the resources, and also deploys the custom controller as a deployment.
- So it has an etcd cluster, CRD, and a custom controller that watches for the etcd cluster resource and deploys etcd within the Kubernetes cluster.
- So we've talked about creating a custom resource definition or C-R-D and a custom controller that has the logic to work with that C-R-D.
- And currently, these are separate entities and we have to manually create the C-R-D and the resources using the C-R-D and then we deploy the controller as a pod or a deployment.
- It is used to deploy and manage and S-C-D cluster within Kubernetes, but it has an S-C-D cluster, C-R-D, and a custom controller that watches for the S-C-D cluster resource and deploys S-C-D within the Kubernetes cluster.
- Tutor: Let's talk about Lifecycle Management with Helm.
- Now, since Helm knows what Kubernetes objects belong to each release, it can do things like upgrades, downgrades, or uninstalls without touching objects that might belong to other releases.
- By the way, you can pass in a specific version of Helm chart to install using the version option in the install command like this.

## 6. YAML Deep Dive
- So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across t...
- So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the ap...
- A release is somewhat similar to an app, but more specifically, it represents a package or a collection of Kubernetes objects.
- By the way, you can pass in a specific version of Helm chart to install using the version option in the install command like this.
- And now imagine two months go by, which is a long time for any piece of software, but especially for a website, a lot of security vulnerabilities get discovered and they need to be patched up.
- For example, the newer version of Nginx may require a new environment variable to be set, or new secret to be created, which requires changing configuration objects and other files, part of the manifest files.
- The command is rather simple, so we just tell Helm what release we want to upgrade and then specify the chart that this release is based on.
- So in this case, we run the command "helm rollback Nginx release", and specify the revision number that we want to roll back to, and that is Revision 1.
- Instead, Helm backs up and restores the declarations or manifest files of our Kubernetes objects.
- With respect to resources that we created in the cluster, at times we use the imperative way of creating an object by executing a command, such as while creating a namespace or a secret or configmap, or at times for exposing applications.

## 7. kubectl / command usage
- Tutor: Let's talk about Lifecycle Management with Helm.
- Now, since Helm knows what Kubernetes objects belong to each release, it can do things like upgrades, downgrades, or uninstalls without touching objects that might belong to other releases.
- By the way, you can pass in a specific version of Helm chart to install using the version option in the install command like this.
- Fortunately, as we said, Helm keeps track of everything associated with a release, so we don't have to upgrade our objects one by one.
- So we run the, "kubecutl get pods", command to see the pod that we created.
- Then we run a "kubectl describe pod" command to see more details about the image, and we see that it's running Nginx version 1.19.2.
- Now let's see a Helm upgrade in action.
- The command is rather simple, so we just tell Helm what release we want to upgrade and then specify the chart that this release is based on.
- So we now run the Helm upgrade command to upgrade the Nginx release.
- Note the revision number in the output of the Helm upgrade command.

## 8. Real-world scenarios
- And then we deploy the controller as a pod or a deployment.
- However, these two entities can be packaged together to be deployed as a single entity using the operator framework.
- So by deploying the flight operator, it internally creates the custom resource definition and the resources, and also deploys the custom controller as a deployment.
- Now the operator framework does much more than just deploying these two components.
- But let's look at a real life use case of an operator.
- It is used to deploy and manage an etcd cluster within Kubernetes.
- So it has an etcd cluster, CRD, and a custom controller that watches for the etcd cluster resource and deploys etcd within the Kubernetes cluster.
- However, it can do much more, such as take a backup of etcd cluster, as well as restore a backup to the etcd cluster by simply creating a CRD.
- All operators are available at the operator hub.
- Select any operator to view additional details and the installation instructions are available on clicking the install button.

## 9. Pitfalls and misunderstandings
- For now I do not anticipate any questions on operators itself in the exam.
- Fortunately, as we said, Helm keeps track of everything associated with a release, so we don't have to upgrade our objects one by one.
- Now let's assume this upgrade did something that we don't like.
- You don't have to worry about this.
- Of course you don't have to develop that solutions yourself.
- And you don't have to enable it specifically from the Bios.
- However, note that as you can see here in the documentation page, um, there's a warning that says it can result in security or data loss issues.
- So right now we don't have any virtual machines running.
- So apart from just installing VirtualBox, you don't really have to do anything directly with it.
- The user local bin directory has already been created, so we don't have to do that first step.

## 10. Troubleshooting angle
- So Kubernetes operators do what a human operator typically would do to manage a specific application, such as installing it, maintaining it by taking backups, and restoring backups in case of disasters, uh, fixing any issues that may come across t...
- So Kubernetes operators do what a human operator typically will do to manage a specific application such as installing it, maintaining it, by taking backups, and restoring backups in case of disasters, fixing any issues that may come across the ap...
- Uh, if you run into issues with the installation anytime, feel free to run this command and check the status.
- If the test fails, the container is considered unhealthy and is destroyed and recreated.
- As well as additional options like initial delay before the test is run, periodSeconds to define the frequency, and success and failure thresholds.
- We have some fun and challenging exercises where you will be required to configure probes as well as troubleshoot and fix issues with existing probes.

## 11. CKA / CKAD relevance
- However, these two entities can be packaged together to be deployed as a single entity using the operator framework.
- So let's translate it into plain English by taking a look at some practical examples.
- A release is somewhat similar to an app, but more specifically, it represents a package or a collection of Kubernetes objects.
- For example, the newer version of Nginx may require a new environment variable to be set, or new secret to be created, which requires changing configuration objects and other files, part of the manifest files.
- It's worth mentioning that we chose Nginx here as it's simple to upgrade, but there will be Kubernetes packages that may require a few extra steps to upgrade.
- For example, if we had have tried to upgrade the previous WordPress release that we created, we would've got this output.
- For example, imagine you rollback MySQL database server.
- For example, one of the commands that can be used in a backup script is to get all pods and deployments and services in all namespaces using the kube control utilities.
- A new data directory is created in this example at location var lib etcd from backup.
- So the kubectl utility can work with multiple clusters, local or remote clusters at the same time.

## 12. Source Contributions
- Matched Global Concepts:
  - (2025 Updates) Operator Framework (match score: 2, notes: 32)
  - Operator Framework (match score: 2, notes: 22)
  - Lifecycle Management With Helm (match score: 2, notes: 78)
  - Cluster Maintenance - Section Introduction (match score: 2, notes: 13)
  - Backup and Restore Methods (match score: 2, notes: 57)
  - Demo - Minikube-Setup (match score: 1, notes: 160)
  - Solution_ API Versions_Deprecations (match score: 1, notes: 82)
  - Liveness Probes (match score: 1, notes: 33)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance: 70 note entries
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 32 note entries
  - certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics: 78 note entries
  - certified-kubernetes-application-developer / 05_Observability: 33 note entries
  - certified-kubernetes-application-developer / 09_Security: 104 note entries
  - learn-kubernetes / 03_Kubernetes Concepts: 160 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 4 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 5 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 6 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 7 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 10 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 11 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 12 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 13 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 15 | Type Troubleshooting
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 17 | Type Architecture
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-007_section_concept_map.md | 187_(2025 Updates) Operator Framework.extraction.md | Entry 20 | Type Concept

