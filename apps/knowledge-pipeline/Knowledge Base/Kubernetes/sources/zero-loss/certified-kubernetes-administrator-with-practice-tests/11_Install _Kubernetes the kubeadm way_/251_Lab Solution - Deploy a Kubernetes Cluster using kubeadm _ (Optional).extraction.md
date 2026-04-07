# Extraction: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)

---

## Entry 1
Type: Exam Tip  

Content:
Instructor: For the first question, it's asking us to install kubeadm and the kubelet package on the control plane, as well as node1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So we've got the terminal open here and we can see we're automatically connected to node1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So I'm gonna open up a second terminal.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
The first one's connected to the control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
The second one, I'm gonna SSH into node1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And I've got the documentation right here for installing kubeadm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
And so the first thing that we have to do is let's go to the container runtime and let's set up these forwarding rules first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
So we always have to set these rules up first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So I'm gonna copy this and we're gonna go back and we're gonna paste this in both terminals.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So we're gonna set this up on the control plane, as well as node1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Exam Tip  

Content:
Now, the next thing that we have to do is install kubeadm and the kubelet package.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And it's telling us to install this specific version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So that's something to keep in mind.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So let's go back to the documentation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And if we scroll down here, this is gonna give us instructions on how to set up the kubeadm tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
And there's gonna be different instructions based off of which distribution you're using.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So let's verify what distribution we're actually using.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
And so we could do that by running, cat /etc/*-release.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Okay, and we could see that this is using Ubuntu and I'm gonna run this on the control plane node, as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Yep, and we could see that this is using Ubuntu as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
All right, so we're gonna leave this on Debian and we're gonna just copy this and I'm gonna paste this into both terminals.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
Then, we have to download the Google Cloud public signing key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So we'll copy this and we're gonna run this on both nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Troubleshooting  

Content:
So when we paste this, we see that we get this error.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
It says, curl failed writing body.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Troubleshooting  

Content:
This error is a little misleading, but what's happening is, we're downloading the gpg key and we're downloading it to this folder /etc/apt/keyrings.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And if we actually go back to the documentation, it says that in releases older than Debian 12 and Ubuntu 22.04, this folder doesn't exist.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
So you're gonna have to create this yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
So let's go ahead and just do a mkdir to create the folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
So we'll do etc/apt/keyrings, and we'll run this on both to create that directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Troubleshooting  

Content:
And after we create it, if we run the same command, we should see that there's no issues when we run it now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
And then, we'll run it on the node1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
Then, we'll add the Kubernetes apt repository on both nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
And then here, we're going to do an update.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
Then, we're going to install all of these.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
And we're gonna, instead of copying all of this all at once, I'm gonna do this one by one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
And that's because this is going to install the latest version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Warning/Pitfall  

Content:
We don't want the latest version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
The instructions are specifically asking 1.26.0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So let's do this one by one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Warning/Pitfall  

Content:
And then, I'm gonna copy this, but I don't actually wanna run the command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
So we'll do, sudo apt install, we want kubeadm and then to specify a version, we'll say =, and then we'll copy this version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
And I'm gonna do a -y here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Architecture  

Content:
So we'll do kubeadm, we want kubelet and we'll copy this same version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
And then we want kubectl, as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
And I will copy this command and we will run this on the other node, as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
Okay, so that's set up and then, we'll just copy this last command, as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Best Practice  

Content:
All right, and so that should be everything we need to do for the first question.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So we'll just validate that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Architecture  

Content:
Okay, so the next question is asking us, what version of the kubelet is installed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Architecture  

Content:
So we can just run a, kubelet --version and we already know it's gonna be version 1.26.0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
The next question is asking, how many nodes are part of the Kubernetes cluster?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So for that, we'll go to the control plane and run, kubectl get nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Troubleshooting  

Content:
We can see that there's an error, couldn't get current server API group list.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Troubleshooting  

Content:
So this error is actually expected because we actually haven't initialized our cluster yet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
We haven't run the kubeadm tool to actually initialize it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So that's to be expected.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So go ahead and just select a zero.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Okay, so now, we're going to bootstrap our Kubernetes cluster using the kubeadm tool.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
And so, we want to initialize the control plane node, the master node, and we're gonna pass in two flags.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Architecture  

Content:
So here, we're gonna set the API server advertise IP address to be whatever the IP address of ethernet zero is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
And then, we're also going to set the pod network CIDR flag to be 10.244.0.0/16.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
So let's go ahead and get the IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So if we run an, ip add, we can see that for eth0, the IP address is 192.7.220.6.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
So now, we can just do a, kubeadm init, and then we gotta do, --, and I'm gonna copy the name of this flag and we're gonna set it to this IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
And then, we'll do a, --pod-network-cidr, which is gonna be set to 10.244.0.0/16.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And that's going to initialize the control plane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
And I realize there's a typo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
This is just kubeadm, and we'll let that run.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
Okay, and once that's complete, the instructions does say, once done, set up the default kubeconfig file and wait for the node to be part of the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
So I'm going to, then, just copy these instructions right here, paste that, that's going to set up our kubeconfig.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Best Practice  

Content:
And so now, we can just do a, kubectl get nodes and we should see that we've got our one control plane node, which at the moment is in a NotReady state, but that's to be expected.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
And we'll go ahead and run the verification.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
The next question is asking us to generate a kubeadm join token.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
Or you can just copy the one we received from the kubeadm init command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
And that's gonna be this one right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
So just go ahead and copy that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
We'll hit OK.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
The next question is telling us to have node1 join the cluster using this join token.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So make sure you copy that, go to node1 and all you have to do is just paste the join token.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Best Practice  

Content:
We run the validation, we should see it should be good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
And then, we'll go to the next question.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
And so for the final question, we want to install a network plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
And in this case, the instructions are telling us to install flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
So we're gonna have to go to the documentation to figure out how to do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
And if you go back to the output of the kubeadm init command, it's gonna give us a link where we can take a look at all of the network addons.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Implementation Step  

Content:
So we'll just hit control and then click.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
That's gonna open up a tab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
In here, there's gonna be all of the network addons.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
So look for, what was it, flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
So we wanna select flannel and it's gonna take us to this link.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
And you'll see that deploying flannel is very easy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
It's just one command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 94
Type: Implementation Step  

Content:
So we can just copy this, go to our control plane, hit paste and it's going to create all of the necessary configurations to get flannel up and running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
We'll go ahead and hit Check and we'll probably need to give it a couple seconds to actually initialize.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
And so let's do, kubectl get pod -A and we can see that's up and running now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
So let's go ahead and run the validation again and we can see it's succeeded.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
And so, that's going to wrap up this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- File: 251_Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional).txt
- Topic: Lab Solution - Deploy a Kubernetes Cluster using kubeadm _ (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
