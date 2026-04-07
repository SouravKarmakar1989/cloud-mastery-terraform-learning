# Normalized Concept: Secrets

- Concept Key: secrets
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 949

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
- But then, now we're copying and pasting all of the configs.

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
- Don't complicate it, it's just all of the resources for a specific feature, all of the patches, all of the config maps, secrets, and any other Kubernetes related configs associated with the feature.
- And the problem with doing that is, all three overlays will get the configuration, but remember, only self-hosted and premium should get the caching configuration, we don't want development to get it.
- Don't complicate it, it's just all of the resources for a specific feature, all of the patches, all of the config maps, secrets, and any other Kubernetes-related configs associated with the feature, they go into a component, and then you can enabl...
- We don't want development to get it.
- This may be a bit advanced for some users, so don't worry if you don't fully get it from a certification and exam standpoint.
- So if you don't provide a user or account name, it assumes it to be library.
- So, we have a private registry, and we know that if you do not specify a registry before the image name it's going to the default- It's gonna pull it from the default location on Docker hub.
- And don't worry about the status for now, because we're gonna fix that in a bit.
- So you don't have to change anything for kubelet.

## 10. Troubleshooting angle
- So this is going to create a little bit of an issue 'cause we have these individual features that only apply to a certain subset of our overlays.
- So that's why we get an error.
- Um that's going to be in like troubleshooting scenarios where the kube API server is down and you want to be able to check if a container is running you.
- For those specific troubleshooting scenarios.
- Now the last step here is very specific to our environment, and I want to explain the issue that we're going.
- And this is to help avoid certain issues that you may.
- And it's going to help avoid any potential issues.
- So that's the error.
- And this kind of helps us debug if something is not passed through right.

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
- And so, a component provides the ability to define a reusable piece of configuration logic that can be included in multiple overlays.

## 12. Source Contributions
- Matched Global Concepts:
  - Helm Components (match score: 2, notes: 67)
  - Components (match score: 2, notes: 174)
  - JSON Path in Kubernetes (match score: 2, notes: 113)
  - Image Security (match score: 2, notes: 48)
  - Lab Solution - Image Security (match score: 2, notes: 61)
  - Demo - Kubeadm - Configuring Cluster With Kubeadm (match score: 2, notes: 377)
  - Environment Variables (match score: 2, notes: 10)
  - Solution - Secrets (Optional) (match score: 2, notes: 99)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 07_Security: 109 note entries
  - certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics: 67 note entries
  - certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics: 95 note entries
  - certified-kubernetes-administrator-with-practice-tests / 15_Other Topics: 113 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 109 note entries
  - certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics: 79 note entries
  - learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm: 377 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 2 | Type Command
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 4 | Type Implementation Step
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 5 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 6 | Type Implementation Step
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 7 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 8 | Type Exam Tip
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 9 | Type Implementation Step
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 11 | Type Implementation Step
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 14 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 18 | Type Implementation Step
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 19 | Type Concept
  - section-maps/BATCH-012_section_concept_map.md | 256_Helm Components.extraction.md | Entry 20 | Type Implementation Step

