# Normalized Concept: Daemonsets

- Concept Key: daemonsets
- Matched Global Concept Blocks: 5
- Source-backed Note Entries Used: 342

## 1. Definition
- Instructor: In this video, I'm gonna walk you through a demo of upgrading a Kubernetes cluster from version 1.28 to version 1.29.
- And what we're gonna do is we're gonna follow the documentation when it comes to upgrading using kubeadm.
- And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.
- So you've got one from version 1.28 to version 1.29, which is what I'm on now, which is the latest kind of upgrade, because version 1.29 is the latest at the moment.
- But you can see you could also have 1.27 to 1.28, 1.26 to 1.27, 1.25 to 1.26, and 1.24 to 1.25.
- So just select whichever upgrade path you're performing and just follow those instructions and you'll see that it's gonna be pretty much identical regardless of what versions you're upgrading from and upgrading to.
- All right, so let's go ahead and get started.
- So moving forward, we want to use the pkgs.k8s.io repositories to actually, you know, download the latest versions of like kubectl, kubeadm, and all of the different tools.
- So we're gonna have to, you know, at the early stages of performing the upgrade, we're gonna have to make sure that we're utilizing the newer repositories and not the older ones.
- And I'll show you guys how we can actually go ahead and do that.

## 2. First-Principles Mental Model
- And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.
- So the first thing that we have to do is we have to make sure we know what our, you know, distribution is 'cause the commands are gonna be a little bit different.
- And keep in mind the steps for upgrading a cluster, you know, whether it's, you know, two nodes, three nodes, five nodes, it's all going to be identical.
- All right, and the next thing I'm gonna do is I'm gonna do this same thing on my worker node.
- So first of all, we have to see what are the available versions and we're just gonna select the latest version in the 1.29 train.
- So we're gonna copy this, we're gonna do an update, and then we'll do an apt-cache madison kubeadm.
- So after we update, I'll then run this madison command and this is gonna show us the available versions.
- You always upgrade the control plane and then you upgrade the worker nodes.
- And we're gonna follow the following steps right here.
- So we're gonna upgrade the kubeadm tool first.

## 3. Why This Exists
- Instructor: In this video, I'm gonna walk you through a demo of upgrading a Kubernetes cluster from version 1.28 to version 1.29.
- And what we're gonna do is we're gonna follow the documentation when it comes to upgrading using kubeadm.
- And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.
- And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.
- So you've got one from version 1.28 to version 1.29, which is what I'm on now, which is the latest kind of upgrade, because version 1.29 is the latest at the moment.
- But you can see you could also have 1.27 to 1.28, 1.26 to 1.27, 1.25 to 1.26, and 1.24 to 1.25.
- So I'm gonna scroll down and you can see that there's an important note which is "Changing the package repository." And so if you guys aren't up to date as to what happened, the old package repositories for all of the different Kubernetes tools an...
- So moving forward, we want to use the pkgs.k8s.io repositories to actually, you know, download the latest versions of like kubectl, kubeadm, and all of the different tools.
- So we're gonna have to, you know, at the early stages of performing the upgrade, we're gonna have to make sure that we're utilizing the newer repositories and not the older ones.
- And so what we're gonna do is we're gonna click on this link right here, and this is gonna give us the instructions on how to actually use and set up the new package repositories.

## 4. Internal Working
- And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.
- So the first thing that we have to do is we have to make sure we know what our, you know, distribution is 'cause the commands are gonna be a little bit different.
- And keep in mind the steps for upgrading a cluster, you know, whether it's, you know, two nodes, three nodes, five nodes, it's all going to be identical.
- All right, and the next thing I'm gonna do is I'm gonna do this same thing on my worker node.
- So first of all, we have to see what are the available versions and we're just gonna select the latest version in the 1.29 train.
- So we're gonna copy this, we're gonna do an update, and then we'll do an apt-cache madison kubeadm.
- So after we update, I'll then run this madison command and this is gonna show us the available versions.
- You always upgrade the control plane and then you upgrade the worker nodes.
- And we're gonna follow the following steps right here.
- So we're gonna upgrade the kubeadm tool first.
- So this is what we want to upgrade to, so right here, if we just change the value here to be the specific version that we want, then I can just copy this, go back to my cluster, and paste this into my control plane node.
- So to be able to upgrade to version 1.29, we have to actually upgrade kubeadm first, so that kubeadm can then upgrade the cluster to version 1.29.

## 5. Key Objects / Fields / Relationships
- And what we're gonna do is we're gonna follow the documentation when it comes to upgrading using kubeadm.
- And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.
- And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.
- So moving forward, we want to use the pkgs.k8s.io repositories to actually, you know, download the latest versions of like kubectl, kubeadm, and all of the different tools.
- So if I go to my cluster right here, and just to show you guys, I have a two node cluster.
- So if I do kubectl get node, we can see that I've got two nodes here, one control plane, one worker node.
- And keep in mind the steps for upgrading a cluster, you know, whether it's, you know, two nodes, three nodes, five nodes, it's all going to be identical.
- All right, and the next thing I'm gonna do is I'm gonna do this same thing on my worker node.
- So I'm gonna SSH to my worker node and we'll copy those two commands once again.
- And keep in mind, if you have like a 3, 4, 5, 10-node cluster, you're gonna do this on all of your nodes.

## 6. YAML Deep Dive
- So you've got one from version 1.28 to version 1.29, which is what I'm on now, which is the latest kind of upgrade, because version 1.29 is the latest at the moment.
- So this is using Debian, and so we're gonna follow the instructions for that on this specific page.
- And what I'm gonna do is I'm gonna just copy this and paste this into Notepad or some text editor of my choice, and we're gonna select, or we're gonna have to update one thing, which is the specific minor version that we want.
- And once again, we're gonna make sure that we specify the version that we want to upgrade to, which is gonna be something in the version 1.29 release.
- So now we're gonna go back to the documentation, and right here it's telling us, "Determine which version to upgrade to." So obviously, you know, as I said, we're gonna be upgrading from version 1.28 to version 1.29, but what specific version with...
- So this is what we want to upgrade to, so right here, if we just change the value here to be the specific version that we want, then I can just copy this, go back to my cluster, and paste this into my control plane node.
- And it's gonna let us know if there's going to be some problems if we try to perform an upgrade to a specific version.
- So it's just kind of like a dry run just to make sure that, you know, everything looks okay and it's gonna tell us, like, hey, what are the different components that kubeadm will upgrade for us automatically, and what are the different components ...
- So right here we can see the steps it's kind of going through.
- So run those two commands, then you would want to upgrade kubeadm to that specific version.

## 7. kubectl / command usage
- And what we're gonna do is we're gonna follow the documentation when it comes to upgrading using kubeadm.
- And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.
- And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.
- So moving forward, we want to use the pkgs.k8s.io repositories to actually, you know, download the latest versions of like kubectl, kubeadm, and all of the different tools.
- So the first thing that we have to do is we have to make sure we know what our, you know, distribution is 'cause the commands are gonna be a little bit different.
- So if I do kubectl get node, we can see that I've got two nodes here, one control plane, one worker node.
- And so all we have to do is just copy this command.
- And then there's a second command in here, which is right here, "Download the public signing key "for the Kubernetes package repositories." So this is, once again, we're gonna copy this.
- And then after we run those two commands, we can do an apt-get update and we should be all set.
- So I'm going to go back to my cluster and I'm going to paste those two commands in.

## 8. Real-world scenarios
- Instructor: In this video, I'm gonna walk you through a demo of upgrading a Kubernetes cluster from version 1.28 to version 1.29.
- And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.
- And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.
- So if I go to my cluster right here, and just to show you guys, I have a two node cluster.
- And keep in mind the steps for upgrading a cluster, you know, whether it's, you know, two nodes, three nodes, five nodes, it's all going to be identical.
- So this example uses the new package repository, which is what we want, but there's a different package repository for each minor version.
- So I'm going to go back to my cluster and I'm going to paste those two commands in.
- And keep in mind, if you have like a 3, 4, 5, 10-node cluster, you're gonna do this on all of your nodes.
- So first of all, we have to see what are the available versions and we're just gonna select the latest version in the 1.29 train.
- So after we update, I'll then run this madison command and this is gonna show us the available versions.

## 9. Pitfalls and misunderstandings
- And so those have been deprecated.
- And if we want to do that, we can always do a kubeadm upgrade apply v1.28.8, but we don't want that, we want to upgrade to 1.29.3, which is the instructions down here.
- And so you'll see here you get that same message about changing package repository, but we already did that for our worker node so we don't need to do that again.
- So we don't do an apply, we do an upgrade node.
- Keep in mind, you don't technically need to have that on there, but if you do, go ahead and upgrade that as well.
- Then you don't have to worry about adding or removing monitoring agents from these nodes when there are changes in your cluster, as the Daemonset will take care of that for you.
- And we don't need replicas, because demo sets don't have replicas, so you can actually look at it and compare it here.
- Well, if you don't know about Daemonset yet, don't worry.

## 10. Troubleshooting angle
- So the plan command is just gonna walk us through the different versions that we can upgrade our cluster to and it's gonna make sure that there aren't some sort of like, compatibility issues.

## 11. CKA / CKAD relevance
- So I'm gonna scroll down and you can see that there's an important note which is "Changing the package repository." And so if you guys aren't up to date as to what happened, the old package repositories for all of the different Kubernetes tools an...
- And so what we're gonna do is we're gonna click on this link right here, and this is gonna give us the instructions on how to actually use and set up the new package repositories.
- So this example uses the new package repository, which is what we want, but there's a different package repository for each minor version.
- And then there's a second command in here, which is right here, "Download the public signing key "for the Kubernetes package repositories." So this is, once again, we're gonna copy this.
- Then if we're running multiple control plane nodes, which in our case we only have one, but if you had more than one, then all you would have to do is you'd have to run the same commands.
- So you would go back to when we updated the package repository.
- We made sure multiple copies of our applications are made available across various different worker nodes.
- Daemonsets are like replica sets, as in, it helps you deploy multiple instances of pods, but it runs one copy of your pod on each node in your cluster.
- So this is, of course a very, a simple example.

## 12. Source Contributions
- Matched Global Concepts:
  - Demo - Cluster upgrade (match score: 2, notes: 157)
  - DaemonSets (match score: 2, notes: 41)
  - Lab Solution - DaemonSets (optional) (match score: 2, notes: 49)
  - Lab Solution - Service Networking (optional) (match score: 1, notes: 53)
  - Kube Proxy (match score: 1, notes: 42)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts: 42 note entries
  - certified-kubernetes-administrator-with-practice-tests / 03_Scheduling: 90 note entries
  - certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance: 157 note entries
  - certified-kubernetes-administrator-with-practice-tests / 09_Networking: 53 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 3 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 6 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 8 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 9 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 10 | Type Warning/Pitfall
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 12 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 13 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 14 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 16 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 19 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-006_section_concept_map.md | 136_Demo - Cluster upgrade.extraction.md | Entry 20 | Type Concept

