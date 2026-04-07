# Normalized Concept: Upgrades

- Concept Key: upgrades
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 604

## 1. Definition
- Instructor: Let's look at the different components of Helm.
- So we have the Helm command line utility on our local system that we will be using to perform Helm actions such as installing a chart, upgrading, rollback, et cetera.
- By using charts and adding the objects according to these specific instructions in the charts, Helm, in a way, installs applications into your cluster.
- A release is a single installation of an application using a Helm chart.
- Now, just like how we can find all kinds of images on Docker hub or Vagrant boxes on the Vagrant Cloud, if you're familiar with that, you know, we can find Helm charts in a public repository.
- And finally, to keep track of what it did in our cluster, such as the releases that it installed, the charts used, revision states and so on, Helm will need a place to save this data.
- This data is known as metadata, and that is data about data.
- Now, it wouldn't be too useful if Helm would save this on our local computer.
- If another person would need to work with our releases through Helm, they would need a copy of this data.
- So instead, Helm does the smart thing and saves this metadata directly in our Kubernetes cluster as Kubernetes secrets.

## 2. First-Principles Mental Model
- Charts are a collection of files, and they contain all the instructions that Helm needs to know to be able to create the collection of objects that you need in your Kubernetes cluster.
- When a chart is applied to your cluster, a release is created.
- Every time a change is made to the applications, such as an upgrade of the image or change of replicas or configuration objects, a new revision is created.
- We can easily download publicly available charts for various applications, and these are readily available and we can use them to deploy applications on our cluster.
- So Helm will always know about everything it did in this cluster and will be able to keep track of every action, every step of the way, since it always has its metadata available.
- First is a simple Hello World application, which is a simple NGINX-based web server and a service to expose it.
- It's a standard deployment object that deploys pods of an image and a service that exposes it as a node port service, for instance.
- The values.yaml file is where the configurable values are stored, and most of the time, this is the only file you'll have to modify to customize the deployment of the application for your needs.
- Now, when a chart is applied to your cluster, a release is created.
- And what if we want to deploy a new chart, say, for deploying Redis or Prometheus, for instance?

## 3. Why This Exists
- So we have the Helm command line utility on our local system that we will be using to perform Helm actions such as installing a chart, upgrading, rollback, et cetera.
- Charts are a collection of files, and they contain all the instructions that Helm needs to know to be able to create the collection of objects that you need in your Kubernetes cluster.
- By using charts and adding the objects according to these specific instructions in the charts, Helm, in a way, installs applications into your cluster.
- When a chart is applied to your cluster, a release is created.
- Every time a change is made to the applications, such as an upgrade of the image or change of replicas or configuration objects, a new revision is created.
- We can easily download publicly available charts for various applications, and these are readily available and we can use them to deploy applications on our cluster.
- And finally, to keep track of what it did in our cluster, such as the releases that it installed, the charts used, revision states and so on, Helm will need a place to save this data.
- If another person would need to work with our releases through Helm, they would need a copy of this data.
- This way, the data survives, and as long as the Kubernetes cluster survives and everyone from our team can access it, so they can do Helm upgrades or whatever it is that they want to do.
- So Helm will always know about everything it did in this cluster and will be able to keep track of every action, every step of the way, since it always has its metadata available.

## 4. Internal Working
- Charts are a collection of files, and they contain all the instructions that Helm needs to know to be able to create the collection of objects that you need in your Kubernetes cluster.
- When a chart is applied to your cluster, a release is created.
- Every time a change is made to the applications, such as an upgrade of the image or change of replicas or configuration objects, a new revision is created.
- We can easily download publicly available charts for various applications, and these are readily available and we can use them to deploy applications on our cluster.
- So Helm will always know about everything it did in this cluster and will be able to keep track of every action, every step of the way, since it always has its metadata available.
- First is a simple Hello World application, which is a simple NGINX-based web server and a service to expose it.
- It's a standard deployment object that deploys pods of an image and a service that exposes it as a node port service, for instance.
- The values.yaml file is where the configurable values are stored, and most of the time, this is the only file you'll have to modify to customize the deployment of the application for your needs.
- Now, when a chart is applied to your cluster, a release is created.
- And what if we want to deploy a new chart, say, for deploying Redis or Prometheus, for instance?
- I'll see you in the next one.
- Now, lifecycle management can sound like a fancy technical term that's too abstract to understand at first glance.

## 5. Key Objects / Fields / Relationships
- Instructor: Let's look at the different components of Helm.
- So we have the Helm command line utility on our local system that we will be using to perform Helm actions such as installing a chart, upgrading, rollback, et cetera.
- Charts are a collection of files, and they contain all the instructions that Helm needs to know to be able to create the collection of objects that you need in your Kubernetes cluster.
- By using charts and adding the objects according to these specific instructions in the charts, Helm, in a way, installs applications into your cluster.
- A release is a single installation of an application using a Helm chart.
- Now, just like how we can find all kinds of images on Docker hub or Vagrant boxes on the Vagrant Cloud, if you're familiar with that, you know, we can find Helm charts in a public repository.
- And finally, to keep track of what it did in our cluster, such as the releases that it installed, the charts used, revision states and so on, Helm will need a place to save this data.
- Now, it wouldn't be too useful if Helm would save this on our local computer.
- If another person would need to work with our releases through Helm, they would need a copy of this data.
- So instead, Helm does the smart thing and saves this metadata directly in our Kubernetes cluster as Kubernetes secrets.

## 6. YAML Deep Dive
- By using charts and adding the objects according to these specific instructions in the charts, Helm, in a way, installs applications into your cluster.
- Now, just like how we can find all kinds of images on Docker hub or Vagrant boxes on the Vagrant Cloud, if you're familiar with that, you know, we can find Helm charts in a public repository.
- This data is known as metadata, and that is data about data.
- So instead, Helm does the smart thing and saves this metadata directly in our Kubernetes cluster as Kubernetes secrets.
- So Helm will always know about everything it did in this cluster and will be able to keep track of every action, every step of the way, since it always has its metadata available.
- By using these charts and adding the objects according to that specific instructions, is how, as we discussed, Helm installs applications into your cluster.
- However, you might notice the image name and replicas are specified in a different form.
- The values that go here are part of another file called as the values.yaml file.
- Now in a Helm chart, we'll often be interacting with a special file.
- The values.yaml file is where the configurable values are stored, and most of the time, this is the only file you'll have to modify to customize the deployment of the application for your needs.

## 7. kubectl / command usage
- Instructor: Let's look at the different components of Helm.
- So we have the Helm command line utility on our local system that we will be using to perform Helm actions such as installing a chart, upgrading, rollback, et cetera.
- Charts are a collection of files, and they contain all the instructions that Helm needs to know to be able to create the collection of objects that you need in your Kubernetes cluster.
- By using charts and adding the objects according to these specific instructions in the charts, Helm, in a way, installs applications into your cluster.
- A release is a single installation of an application using a Helm chart.
- Now, just like how we can find all kinds of images on Docker hub or Vagrant boxes on the Vagrant Cloud, if you're familiar with that, you know, we can find Helm charts in a public repository.
- And finally, to keep track of what it did in our cluster, such as the releases that it installed, the charts used, revision states and so on, Helm will need a place to save this data.
- Now, it wouldn't be too useful if Helm would save this on our local computer.
- If another person would need to work with our releases through Helm, they would need a copy of this data.
- So instead, Helm does the smart thing and saves this metadata directly in our Kubernetes cluster as Kubernetes secrets.

## 8. Real-world scenarios
- Charts are a collection of files, and they contain all the instructions that Helm needs to know to be able to create the collection of objects that you need in your Kubernetes cluster.
- By using charts and adding the objects according to these specific instructions in the charts, Helm, in a way, installs applications into your cluster.
- When a chart is applied to your cluster, a release is created.
- We can easily download publicly available charts for various applications, and these are readily available and we can use them to deploy applications on our cluster.
- And finally, to keep track of what it did in our cluster, such as the releases that it installed, the charts used, revision states and so on, Helm will need a place to save this data.
- So instead, Helm does the smart thing and saves this metadata directly in our Kubernetes cluster as Kubernetes secrets.
- This way, the data survives, and as long as the Kubernetes cluster survives and everyone from our team can access it, so they can do Helm upgrades or whatever it is that they want to do.
- So Helm will always know about everything it did in this cluster and will be able to keep track of every action, every step of the way, since it always has its metadata available.
- By using these charts and adding the objects according to that specific instructions, is how, as we discussed, Helm installs applications into your cluster.
- The WordPress example will help you understand its real life usage.

## 9. Pitfalls and misunderstandings
- And you don't have to go to each of these repositories to search for charts.
- Fortunately, as we said, Helm keeps track of everything associated with a release, so we don't have to upgrade our objects one by one.
- Now let's assume this upgrade did something that we don't like.
- And so those have been deprecated.
- And if we want to do that, we can always do a kubeadm upgrade apply v1.28.8, but we don't want that, we want to upgrade to 1.29.3, which is the instructions down here.
- And so you'll see here you get that same message about changing package repository, but we already did that for our worker node so we don't need to do that again.
- So we don't do an apply, we do an upgrade node.
- Keep in mind, you don't technically need to have that on there, but if you do, go ahead and upgrade that as well.
- The name might sound intimidating, but don't worry.
- The second strategy is where we do not destroy all of them at once.

## 10. Troubleshooting angle
- So the plan command is just gonna walk us through the different versions that we can upgrade our cluster to and it's gonna make sure that there aren't some sort of like, compatibility issues.
- And when a rollback command is issued, Helm compares the current chart, which is the chart that has the WordPress image 5.8 in it with the previous chart, which is the chart that has a WordPress 4.8 image in it and realizes that they're different.
- Suppose one of the upgrades you performed resulted in an unexpected error, and you're asked to undo the recent change You would like to be able to roll back the changes that were recently carried out.

## 11. CKA / CKAD relevance
- Within each release, you can have multiple revisions, and each revision is like a snapshot of the application.
- The WordPress example will help you understand its real life usage.
- For example, in this simple Hello World application, we have two objects, a deployment and a service.
- But what we'll almost always need to do or want to do is configure the package that we installed through that chart.
- Well, one simple reason why it makes more sense to have releases based on charts is that we can install multiple releases based on the same chart.
- For example, you can have a release for a WordPress website that your customers use and another release for a WordPress website that is only visible to your internal team of developers.
- Now we saw an example of a very basic chart developed in Helm.
- And earlier we saw an example of a chart to deploy a WordPress application.
- As of this recording, there are over 6,300 packages available there, and you may search for the chart you're looking for or browse through available ones, and sometimes the charts are actually published by the actual developers of that project.
- So let's translate it into plain English by taking a look at some practical examples.

## 12. Source Contributions
- Matched Global Concepts:
  - Helm Components (match score: 2, notes: 67)
  - Lifecycle Management With Helm (match score: 2, notes: 78)
  - Demo - Cluster upgrade (match score: 2, notes: 157)
  - A Quick Note on Helm2 vs Helm3 (match score: 2, notes: 66)
  - Deployments - Update and Rollback (match score: 2, notes: 52)
  - Kubernetes on GCP (GKE) (match score: 2, notes: 96)
  - Recap - Deployments (match score: 2, notes: 36)
  - Rolling Updates & Rollbacks in Deployments (match score: 2, notes: 52)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance: 157 note entries
  - certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics: 211 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 36 note entries
  - certified-kubernetes-application-developer / 06_POD Design: 52 note entries
  - learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments: 52 note entries
  - learn-kubernetes / 09_Kubernetes on Cloud: 96 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 2 | Type Command
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 4 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 6 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 8 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 9 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 11 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 18 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 20 | Type Implementation Step

