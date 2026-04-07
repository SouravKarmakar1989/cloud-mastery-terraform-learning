# Extraction: certified-kubernetes-administrator-with-practice-tests / 06_Cluster Maintenance / 136_Demo - Cluster upgrade

---

## Entry 1
Type: Concept  

Content:
Instructor: In this video, I'm gonna walk you through a demo of upgrading a Kubernetes cluster from version 1.28 to version 1.29.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
And what we're gonna do is we're gonna follow the documentation when it comes to upgrading using kubeadm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
And so if you go to the Kubernetes documentation and you go under Tasks, under Administer a Cluster, and then down here under Administration with kubeadm, select Upgrading a kubeadm cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And this is gonna have all of the instructions necessary to perform an upgrade on a Kubernetes cluster using kubeadm, and it'll have separate instructions for each different upgrade.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So you've got one from version 1.28 to version 1.29, which is what I'm on now, which is the latest kind of upgrade, because version 1.29 is the latest at the moment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
But you can see you could also have 1.27 to 1.28, 1.26 to 1.27, 1.25 to 1.26, and 1.24 to 1.25.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So just select whichever upgrade path you're performing and just follow those instructions and you'll see that it's gonna be pretty much identical regardless of what versions you're upgrading from and upgrading to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
All right, so let's go ahead and get started.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Exam Tip  

Content:
So I'm gonna scroll down and you can see that there's an important note which is "Changing the package repository." And so if you guys aren't up to date as to what happened, the old package repositories for all of the different Kubernetes tools and components was stored at app.kubernetes.io and yum.kubernetes.io.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Warning/Pitfall  

Content:
And so those have been deprecated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So moving forward, we want to use the pkgs.k8s.io repositories to actually, you know, download the latest versions of like kubectl, kubeadm, and all of the different tools.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So we're gonna have to, you know, at the early stages of performing the upgrade, we're gonna have to make sure that we're utilizing the newer repositories and not the older ones.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And I'll show you guys how we can actually go ahead and do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Exam Tip  

Content:
And so what we're gonna do is we're gonna click on this link right here, and this is gonna give us the instructions on how to actually use and set up the new package repositories.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And it's actually pretty straightforward.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So the first thing that we have to do is we have to make sure we know what our, you know, distribution is 'cause the commands are gonna be a little bit different.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So if I go to my cluster right here, and just to show you guys, I have a two node cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So if I do kubectl get node, we can see that I've got two nodes here, one control plane, one worker node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
And keep in mind the steps for upgrading a cluster, you know, whether it's, you know, two nodes, three nodes, five nodes, it's all going to be identical.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
But if I want to see what, what distribution my servers are using, I can do a cat /etc/*release*, and this is gonna tell us what distribution we're using.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
And we can see here we're using Ubuntu 20.04.6.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So this is using Debian, and so we're gonna follow the instructions for that on this specific page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
All right, so I'm gonna scroll down here and it's gonna show the instructions for Debian, Ubuntu operating systems.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And so here we replace the app repository definition so that it points to the new one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And so all we have to do is just copy this command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
And what I'm gonna do is I'm gonna just copy this and paste this into Notepad or some text editor of my choice, and we're gonna select, or we're gonna have to update one thing, which is the specific minor version that we want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Exam Tip  

Content:
So this example uses the new package repository, which is what we want, but there's a different package repository for each minor version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So there's gonna be one for version 1.28, 1 dot version 29.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
You'll even have a one for version 1.27 and 1.26.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So we are going to be upgrading to version 1.29, so we just have to change this to be nine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Exam Tip  

Content:
And then there's a second command in here, which is right here, "Download the public signing key "for the Kubernetes package repositories." So this is, once again, we're gonna copy this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
I'm gonna open up my Notepad and I'm gonna paste it in here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
And once again, we're gonna make sure that we specify the version that we want to upgrade to, which is gonna be something in the version 1.29 release.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Best Practice  

Content:
So now if I just scroll down here, that should be everything that we do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Best Practice  

Content:
And then after we run those two commands, we can do an apt-get update and we should be all set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So I'm going to go back to my cluster and I'm going to paste those two commands in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
All right, and the next thing I'm gonna do is I'm gonna do this same thing on my worker node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So I'm gonna SSH to my worker node and we'll copy those two commands once again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
And keep in mind, if you have like a 3, 4, 5, 10-node cluster, you're gonna do this on all of your nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
All right, so that's all set.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So now we're gonna go back to the documentation, and right here it's telling us, "Determine which version to upgrade to." So obviously, you know, as I said, we're gonna be upgrading from version 1.28 to version 1.29, but what specific version within the 1.29 minor release do we want to upgrade to?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
So first of all, we have to see what are the available versions and we're just gonna select the latest version in the 1.29 train.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
So we're gonna copy this, we're gonna do an update, and then we'll do an apt-cache madison kubeadm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So that's gonna show us what is the latest version in version 1.29 for kubeadm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
And that way we can go ahead and download it and set that up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So I'll just do this on the control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
So after we update, I'll then run this madison command and this is gonna show us the available versions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And we can see all of the different versions, we've got 1.29.0-1.1, and we want the top one here, which is gonna be the latest one, which is 1.29.3-1.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So I'm gonna just copy this and I'm gonna save this in my notes just for reference.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So now if I go back to the documentation, we're gonna start off by upgrading the control plane nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
You always upgrade the control plane and then you upgrade the worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So just pick one of your control plane nodes, doesn't really matter which one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
And we're gonna follow the following steps right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
So we're gonna upgrade the kubeadm tool first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So we're gonna copy this command for upgrading it and we're gonna copy it and paste it into this text editor once again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
Reason why I'm doing this, we have to change a few values here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
So this is what we want to upgrade to, so right here, if we just change the value here to be the specific version that we want, then I can just copy this, go back to my cluster, and paste this into my control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So the only thing it's gonna do is it's going to upgrade the kubeadm tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
So to be able to upgrade to version 1.29, we have to actually upgrade kubeadm first, so that kubeadm can then upgrade the cluster to version 1.29.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
All right, so that's complete.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Let's verify that it actually got upgraded.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Best Practice  

Content:
So if I do kubeadm version, it should show that version 1.29.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
And we can see version 1, minor version 29, and we can see GitVersion 1.29.3, perfect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
Now if we go back to the documentation, the next thing we want to do is run the sudo kubeadm upgrade plan.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Troubleshooting  

Content:
So the plan command is just gonna walk us through the different versions that we can upgrade our cluster to and it's gonna make sure that there aren't some sort of like, compatibility issues.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And it's gonna let us know if there's going to be some problems if we try to perform an upgrade to a specific version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
So it's just kind of like a dry run just to make sure that, you know, everything looks okay and it's gonna tell us, like, hey, what are the different components that kubeadm will upgrade for us automatically, and what are the different components that we'll have to manually upgrade afterwards as well?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So I'll copy this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
We're gonna run this once again on that same control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
So let's take a look at the output of the upgrade plan command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
So right here we can see the steps it's kind of going through.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So it's just verifying a few things.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
Right here, it's going to let us know that right now our kubeadm is set to version 1.29.3, cluster is set to version 1.28.0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Architecture  

Content:
And here it says the components that have to be upgraded manually after you upgrade the control plane, which is gonna be the kubelet process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
And so this first section will show us how to upgrade to the latest version in the 1.28 minor release, which is 1.28.8.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Architecture  

Content:
So if we wanted to go to 1.28.8, we would have to upgrade the kubelet manually, kubeadm never upgrades the kubelet for us, but the components that will get upgraded by kubeadm are the following components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
So it can actually upgrade all of those for us automatically.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Warning/Pitfall  

Content:
And if we want to do that, we can always do a kubeadm upgrade apply v1.28.8, but we don't want that, we want to upgrade to 1.29.3, which is the instructions down here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Architecture  

Content:
And so it's gonna let us know we have to manually upgrade kubelet, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Architecture  

Content:
Because kubelet is not running in a pod, so we have to upgrade it ourselves.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
But kubeadm will upgrade all the other components to version 1.29.3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
All we have to do is just run the kubeadm upgrade apply v1.29.3 command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
And so if we go back to the documentation, right, we ran the plan command, the next thing we have to do is we have to run that sudo kubeadm upgrade apply command, which is exactly what we're gonna do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Implementation Step  

Content:
So I can just copy this, and just do a sudo, and then paste this, and it's going to perform the upgrade process for us.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
All right, so the upgrade was successful and it's successfully completed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
Now if I do a kubectl get node, you're gonna see something interesting.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
You're gonna see that it still points to version 1.28.0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
Well, why is that?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
I thought we just upgraded, it says we've successfully upgraded.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Architecture  

Content:
Well keep in mind when you do a kubectl get node, and you see the version column here, this version column, it pulls the version that your kubelet is running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Architecture  

Content:
So our kubelet, remember, based off the kubeadm plan command, it needs to be upgraded manually afterwards, after kubeadm is run.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Architecture  

Content:
So this version is just getting pulled from whatever version your kubelet is running, so that's why it still says version 1.28.0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Architecture  

Content:
Once we upgrade kubelet, it'll then point to 1.29.3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Implementation Step  

Content:
But let's go back to the documentation and let's go ahead and see the next steps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Implementation Step  

Content:
So after we run the kubeadm upgrade apply, the next thing that we have to do is if we do need to upgrade the CNI provider plugin, you know, maybe after a certain version you have to upgrade the plugin so that it can operate seamlessly with the newer version, then go ahead and upgrade it at this point.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
There's no changes that we need to make to our provider plugin, so we're gonna skip that step.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Exam Tip  

Content:
Then if we're running multiple control plane nodes, which in our case we only have one, but if you had more than one, then all you would have to do is you'd have to run the same commands.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Exam Tip  

Content:
So you would go back to when we updated the package repository.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Implementation Step  

Content:
So run those two commands, then you would want to upgrade kubeadm to that specific version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Implementation Step  

Content:
And then all you have to do is instead of running a kubeadm upgrade apply, you would run a kubeadm upgrade node command on the control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Implementation Step  

Content:
Then once you've done that, we have now successfully upgraded all of the control plane components on the control plane nodes, or the master nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Architecture  

Content:
The next thing we have to do is we have to upgrade the kubelet processes on the control plane nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Architecture  

Content:
So anytime you're messing with the kubelet process, we want to make sure we drain the nodes of all of the pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
And yes, we have to drain the nodes on the control plane nodes as well because they do have pods running on them like the, you know, the core DNS pods and some of the other control plane components which are run as pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
So we do want to make sure we drain them and move them to some of the other control plane components.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Implementation Step  

Content:
So all we have to do is do a kubectl drain, the name of the node, and then --ignore-daemonsets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
So I can just copy this, paste that in, and just change the name of the node, which is going to be controlplane as per the output of kubectl get node, which we got here, the control plane node is just called controlplane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
So that's been drained.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Architecture  

Content:
And then what we'll do is we will upgrade the kubelet process now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Architecture  

Content:
So to upgrade kubelet, I'm gonna copy this command, and keep in mind the command they gave us here will upgrade kubelet as well as kubectl.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
So we'll copy that and I'm gonna paste it below here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
And we're gonna copy the version, that specific version, and change these two fields so that we can upgrade kubeadm, and kubectl to that specific version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Architecture  

Content:
And then we'll go ahead and paste it in and then restart the kubelet process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Architecture  

Content:
So I'll copy this, now we can go ahead and restart the kubelet process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
So now if I do a kubectl get node, we can see that the control plane node got upgraded to version 1.29.3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
We can see that scheduling is still disabled because we drained the node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
So let's go ahead and uncordon the node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
And we can do that by running kubectl uncordon, and the name of the node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
So I'll say kubectl uncordon controlplane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Best Practice  

Content:
Now if I do a get node, we should see we no longer have the scheduling disabled next to our control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
Now if you have more than one control plane node, you would just do the same process on all the other control plane nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Architecture  

Content:
So you would run this command, well first of all, you would drain the specific control plane node that you're working on at the moment, upgrade kubelet and kubectl, and then after you upgrade it, do a restart of the kubelet process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Implementation Step  

Content:
And then you've upgraded the next control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
And you'll just do that one by one until you've got all of them upgraded.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Implementation Step  

Content:
And then once that's done, if we go back to the documentation, we can see that we can now move on to upgrading worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
And so there's gonna be instructions for both types of machines, whether it's a Linux or a Windows machine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
So I'll open up the Linux one 'cause that was what we're using, and we could take a look at the instructions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Warning/Pitfall  

Content:
And so you'll see here you get that same message about changing package repository, but we already did that for our worker node so we don't need to do that again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
And just like we did with the control plane node, we're gonna have to upgrade kubeadm on our worker node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
So we already have the command that we need in our text editor.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
So that's gonna be the kubeadm one right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
So we'll copy this and I'll go to my node01, paste that in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Implementation Step  

Content:
And then once that's done, if we take a look at the documentation, we could run a sudo kubeadm upgrade node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Warning/Pitfall  

Content:
So we don't do an apply, we do an upgrade node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Concept  

Content:
All right, so that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Implementation Step  

Content:
And then if we go down here, it's gonna be very similar to the control plane node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Architecture  

Content:
We have to drain the node of, you know, all of its pods, and then we have to upgrade the kubelet process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
So let's go ahead and drain that node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Concept  

Content:
And obviously I have to go to the control plane node to actually run the command to drain it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
So I'll do kubectl drain node01, and I forgot the --ignore-daemonsets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Architecture  

Content:
And then after we do that, we're gonna upgrade kubelet and kubectl if you do have kubectl on your node machine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Warning/Pitfall  

Content:
Keep in mind, you don't technically need to have that on there, but if you do, go ahead and upgrade that as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Concept  

Content:
And once again, we have the command for that, that's why I saved it in the text editor.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
We'll go back to node01.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Architecture  

Content:
So after upgrading the kubelet process, we're gonna have to then restart it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Concept  

Content:
So I'll copy these two commands.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Implementation Step  

Content:
And then the last thing that we have to do is we have to uncordon the node so that we can deploy pods on it again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
So I'll do kubectl uncordon node01.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Concept  

Content:
And this node has been officially upgraded, so if I do a kubectl get node, we can see that they're both running version 1.29.3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Implementation Step  

Content:
Now you're obviously gonna have more than one worker node, so after you've finished upgrading your first worker node, you just follow these instructions again on the next worker node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Concept  

Content:
So you're going to do the same thing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 152
Type: Concept  

Content:
You're going to upgrade the kubeadm tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Architecture  

Content:
You're gonna run the sudo kubeadm upgrade node, then you'll drain the node before you update the kubelet process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Architecture  

Content:
You'll then update the kubelet process, restart kubelet, and then uncordon the node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
And you'll just do that on all your working nodes one by one until your entire cluster has been upgraded.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Concept  

Content:
And so that's going to wrap up this demo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 157
Type: Concept  

Content:
I just walked you guys through how to upgrade a Kubernetes cluster using the kubeadm tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 06_Cluster Maintenance
- Lecture: 136_Demo - Cluster upgrade
- File: 136_Demo - Cluster upgrade.txt
- Topic: Demo - Cluster upgrade
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
