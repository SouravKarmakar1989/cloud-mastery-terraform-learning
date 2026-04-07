# Normalized Concept: Cluster Design

- Concept Key: cluster-design
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 897

## 1. Definition
- And when you browse through charts and blogs online, you may come across either of these versions.
- Now, let's look at a brief history of Helm.
- Now, since the initial launch in 2016, the project has matured, and it got better and better.
- The improvements were also made possible by the fact that Kubernetes itself was improving, so Helm had more tools at its disposal it could leverage right off of Kubernetes.
- In our lessons, we'll use Helm 3, which has a simpler and better design than the previous Helm 2 and is also a bit smarter.
- Since Helm 2 was around for a few years, a lot of users had already been using it, but there are several important changes made when Helm 3 was launched.
- When Helm 2 was around, Kubernetes lacked features such as role-based access control and custom resource definitions.
- To allow Helm to do its magic, an extra component called Tiller had to be installed in the Kubernetes cluster.
- So, whenever you wanted to perform a Helm specific operation, your Helm client communicated with Tiller that was running on some server.
- Tiller, in turn, communicated with Kubernetes and proceeded to take actions to make whatever you requested happen.

## 2. First-Principles Mental Model
- This will create revision number 1 for this install.
- New revisions are created whenever important changes are done with the Helm command.
- And even when we roll back, a new revision is created, revision 3.
- Say we install a WordPress deployment using a Helm chart, which creates revision 1 just like before.
- Then a user manually goes in and updates the application image using the kubectl set image command.
- And this does not create a new revision in Helm, because the change was not performed through Helm.
- Since there is only one revision, Helm does not detect any changes, and so it does not roll back or make any changes to the deployment.
- Well, that's all for this lecture and I'll see you in the next one.
- Now, question one, it says that you have to create a pod called mc-pod in the mc-namespace with three containers.
- So I'm just gonna copy this or if you wanted to, you could also do kubectl run and then you could do mc-pod and then provide some random image.

## 3. Why This Exists
- Instructor: There were some significant changes when Helm 3 was released compared to Helm 2.
- So, it is important to understand the differences between them.
- To allow Helm to do its magic, an extra component called Tiller had to be installed in the Kubernetes cluster.
- So, whenever you wanted to perform a Helm specific operation, your Helm client communicated with Tiller that was running on some server.
- Tiller, in turn, communicated with Kubernetes and proceeded to take actions to make whatever you requested happen.
- So, Tiller was the middleman, so to speak.
- By default, Tiller was running in God mode or otherwise said, it had the privileges to do anything that it wanted.
- This was good since it allowed it to make whatever changes necessary in your Kubernetes cluster to install your charts, but this was bad since it allowed any user with Tiller access to do whatever they wanted in the cluster.
- And before, you had to set these limits in Tiller and that was not the best option, but with RBAC built from ground up to fine-tune user permissions in Kubernetes, it's now straightforward to do.
- As far as Kubernetes is concerned, it doesn't matter if the user is trying to make changes within the cluster with kubectl or with Helm commands, the user requesting the changes has the same RBAC-allowed permissions, whatever tool they use.

## 4. Internal Working
- This will create revision number 1 for this install.
- New revisions are created whenever important changes are done with the Helm command.
- And even when we roll back, a new revision is created, revision 3.
- Say we install a WordPress deployment using a Helm chart, which creates revision 1 just like before.
- Then a user manually goes in and updates the application image using the kubectl set image command.
- And this does not create a new revision in Helm, because the change was not performed through Helm.
- Since there is only one revision, Helm does not detect any changes, and so it does not roll back or make any changes to the deployment.
- Well, that's all for this lecture and I'll see you in the next one.
- Now, question one, it says that you have to create a pod called mc-pod in the mc-namespace with three containers.
- So I'm just gonna copy this or if you wanted to, you could also do kubectl run and then you could do mc-pod and then provide some random image.
- We might as well use the image of the first pod.
- So I'll just say enginx:1-alpine and then I could do --dry-run equals client and then I'll put it to a YAML file and I'll just set it as question one and that way we can make changes to it.

## 5. Key Objects / Fields / Relationships
- Instructor: There were some significant changes when Helm 3 was released compared to Helm 2.
- Now, let's look at a brief history of Helm.
- The improvements were also made possible by the fact that Kubernetes itself was improving, so Helm had more tools at its disposal it could leverage right off of Kubernetes.
- In our lessons, we'll use Helm 3, which has a simpler and better design than the previous Helm 2 and is also a bit smarter.
- Since Helm 2 was around for a few years, a lot of users had already been using it, but there are several important changes made when Helm 3 was launched.
- When Helm 2 was around, Kubernetes lacked features such as role-based access control and custom resource definitions.
- To allow Helm to do its magic, an extra component called Tiller had to be installed in the Kubernetes cluster.
- So, whenever you wanted to perform a Helm specific operation, your Helm client communicated with Tiller that was running on some server.
- After cool stuff like role-based access control and custom resource definitions appeared in Kubernetes, the need for Tiller decreased, and so it was removed entirely in Helm 3.
- Now, there's nothing sitting between Helm and the cluster.

## 6. YAML Deep Dive
- So, whenever you wanted to perform a Helm specific operation, your Helm client communicated with Tiller that was running on some server.
- The chart we want to revert to, and also the live state, how our Kubernetes objects currently look like their declarations in the yaml form, this is where that fancy three-way Strategic Merge Patch name comes from.
- So I'll just say enginx:1-alpine and then I could do --dry-run equals client and then I'll put it to a YAML file and I'll just set it as question one and that way we can make changes to it.
- Now, this value is kind of dynamic based off the node it gets assigned to so to do that we say, value from and you say fieldRef and then you say fieldPath spec.node name And so that will give it the name of the node and pass it into this environme...
- So to create a service for it, we can either create a YAML file or just use the command for it, The imperative command.
- And then, you specify what port and it says port 6379.
- So everything else kind of seems normal and then we have our init container and our init container, we could see that state is terminated and reason is error.
- So what we're gonna do is I'm gonna do a kubectl get pod orange -: O yaml piper two a file, call it question6.yaml.
- Then I'm gonna open question6.yaml and we're going to fix this.
- Remove two of the e's and then we can do kubectl replace -: f question6.yaml and then we do a --force.

## 7. kubectl / command usage
- Instructor: There were some significant changes when Helm 3 was released compared to Helm 2.
- Now, let's look at a brief history of Helm.
- The improvements were also made possible by the fact that Kubernetes itself was improving, so Helm had more tools at its disposal it could leverage right off of Kubernetes.
- In our lessons, we'll use Helm 3, which has a simpler and better design than the previous Helm 2 and is also a bit smarter.
- Since Helm 2 was around for a few years, a lot of users had already been using it, but there are several important changes made when Helm 3 was launched.
- When Helm 2 was around, Kubernetes lacked features such as role-based access control and custom resource definitions.
- To allow Helm to do its magic, an extra component called Tiller had to be installed in the Kubernetes cluster.
- So, whenever you wanted to perform a Helm specific operation, your Helm client communicated with Tiller that was running on some server.
- After cool stuff like role-based access control and custom resource definitions appeared in Kubernetes, the need for Tiller decreased, and so it was removed entirely in Helm 3.
- Now, there's nothing sitting between Helm and the cluster.

## 8. Real-world scenarios
- To allow Helm to do its magic, an extra component called Tiller had to be installed in the Kubernetes cluster.
- This was good since it allowed it to make whatever changes necessary in your Kubernetes cluster to install your charts, but this was bad since it allowed any user with Tiller access to do whatever they wanted in the cluster.
- Now, there's nothing sitting between Helm and the cluster.
- As far as Kubernetes is concerned, it doesn't matter if the user is trying to make changes within the cluster with kubectl or with Helm commands, the user requesting the changes has the same RBAC-allowed permissions, whatever tool they use.
- Here's an example.
- Then if you change something, for example, you upgrade to a newer chart to upgrade your WordPress install, you will arrive at revision number 2.
- For example, when we first install a package, a revision 1 is created.
- And when a rollback command is issued, Helm compares the current chart, which is the chart that has the WordPress image 5.8 in it with the previous chart, which is the chart that has a WordPress 4.8 image in it and realizes that they're different.
- Now, let's look at another example.
- Say we install a WordPress deployment using a Helm chart, which creates revision 1 just like before.

## 9. Pitfalls and misunderstandings
- The name might sound intimidating, but don't worry.
- So the pod should be called mc-pod, which we have, we don't really need a label because it doesn't really say anything about labels.
- So what I'm gonna do is, I'm gonna copy this and then I'm going to copy that and then, I can go to that file it told us, which is /root/vpa-crds.txt, we'll paste it in, and we don't need this information so it just wants the name so I'm just gonna...
- So we don't need to add anything else and we can just run this as is.
- So if you don't know how to create a persistent volume off the top of your head, remember you always have access to the documentation.
- So we don't actually have to change anything else.
- Okay, we don't see anything, but that's because it's in the kk-ns namespace.
- And actually I'm gonna do a, because I've lost the information, it's all the way back up and I don't feel like scrolling.
- And by default, if you do not set any context, you should be accessing the cluster1.
- When the cluster is set up, we have three nodes that do not have a leader elected.

## 10. Troubleshooting angle
- And when a rollback command is issued, Helm compares the current chart, which is the chart that has the WordPress image 5.8 in it with the previous chart, which is the chart that has a WordPress 4.8 image in it and realizes that they're different.
- Okay, so for question six, a new application origin is deployed and there's something wrong with it, identify and fix the issue.
- So everything else kind of seems normal and then we have our init container and our init container, we could see that state is terminated and reason is error.
- This got terminated due to an error.
- And so as you probably expected, this is the issue with the typo, it should just be two e's.
- So let's go ahead and fix that.
- Then I'm gonna open question6.yaml and we're going to fix this.
- So we have now successfully finished fixing the orange pod, it's now up and running.
- Service networking is 20%, storage is another 10% and finally, the biggest section of them all is troubleshooting, which accounts for 30% of the questions.
- Now the sixth question as you can see, is from the troubleshooting section.

## 11. CKA / CKAD relevance
- Here's an example.
- Then if you change something, for example, you upgrade to a newer chart to upgrade your WordPress install, you will arrive at revision number 2.
- These revisions can be considered something like snapshots, the exact stage of a Kubernetes package at that moment in time.
- This would get your package app to the same state it was when you first installed your chart.
- For example, when we first install a package, a revision 1 is created.
- Then when we upgrade that package, a new revision appears, that's revision 2 in this case.
- Now, let's look at another example.
- For example, say you install a chart, but then you make some changes to some of the Kubernetes objects installed.
- Instructor: Okay, so what we're gonna do is we're gonna walk through the solutions for the mock exam one.
- Now, if you want you can go to the documentation, you can search for pod to see an example configuration and it's gonna give you one.

## 12. Source Contributions
- Matched Global Concepts:
  - A Quick Note on Helm2 vs Helm3 (match score: 1, notes: 66)
  - Solution - Mock Exam -1 (Optional) (match score: 1, notes: 344)
  - What's Next_ (match score: 1, notes: 118)
  - Configure High Availability (match score: 1, notes: 84)
  - ETCD in HA (match score: 1, notes: 134)
  - Deployment With kubeadm - Introduction (match score: 1, notes: 21)
  - Introduction to Kubernetes Practice Test (match score: 1, notes: 51)
  - Why Stateful Sets_ (match score: 1, notes: 79)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster: 218 note entries
  - certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_: 21 note entries
  - certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics: 66 note entries
  - certified-kubernetes-administrator-with-practice-tests / 17_Mock Exams: 344 note entries
  - certified-kubernetes-administrator-with-practice-tests / 18_Bonus Section: 88 note entries
  - certified-kubernetes-application-developer / 02_Core Concepts: 51 note entries
  - certified-kubernetes-application-developer / 08_State Persistence: 79 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 30 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 1 | Type Comparison
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 3 | Type Comparison
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 5 | Type Command
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 10 | Type Comparison
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 11 | Type Command
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 14 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 16 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 19 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-012_section_concept_map.md | 255_A Quick Note on Helm2 vs Helm3.extraction.md | Entry 20 | Type Concept

