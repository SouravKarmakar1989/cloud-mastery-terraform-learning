# Extraction: certified-kubernetes-administrator-with-practice-tests / 11_Install _Kubernetes the kubeadm way_ / 248_Deployment With Kubeadm - Provision VMs With Vagrant

---

## Entry 1
Type: Concept  

Content:
Instructor: In this demo, we will see how to provision VMs for our Kubernetes cluster that will include a single master node and two worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
And we're gonna accomplish this by using two different pieces of software.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
The first one is going to be VirtualBox. so this is our hypervisor which is ultimately responsible for running our virtual machines.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And the other tool is going to be Vagrant, so this is like a automation tool that makes it really easy to spin up a whole bunch of VMs with a specific configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So we're gonna make use of Vagrant so that all of us can kind of follow along with the exact same configuration for our VMs and we can get those VMs up and running with just one single command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So the prerequisites, obviously, for this video is you have to install VirtualBox and you have to install Vagrant.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So if you take a look at VirtualBox, you could just go to the virtualbox.org and there's going to be a downloads page, and you could just select the specific operating system you're using, and then you could just follow the steps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Pretty simple.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
And then Vagrant, if you go to the Vagrant documentation, they have a walkthrough on how to install Vagrant as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Couple of different ways to do that depending on what your operating system is, just use whichever is most convenient for you.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Now for Vagrant, we have a Vagrant file which is going to contain all of our configurations for our VMs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And this file has already been written out for all of you guys and you can find that at the repository for the course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So, go ahead and just clone this repository so that you can have access to the Vagrant file and you can use that to spin up the VMs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
And to clone the repository, all we have to do is go to this code dropdown right here and just copy the URL of this specific repository.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
Then once you do that, go to your Terminal and run a git clone, and then pass in the URL, and that's going to clone the repository.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
All right, so I cleared out the Terminal but after we cloned the repository, it's going to create a folder with all of those files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
And so, I'm going to cd into that folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Best Practice  

Content:
And within here, if I just do an ls, you should see the Vagrant file right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So let's open up the Vagrant file and let's take a look at the configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
All right, and so, in the configuration, you could see here we've set it up to have one master node and two worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
The IP address is for the host, so this has nothing to do with Kubernetes yet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
The IP addresses of the actual VMs or the nodes, they're going to make use of the 192.168.56 network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Warning/Pitfall  

Content:
And if you'd like to, you can go ahead and poke around at the rest of the configuration but we don't need to worry too much about that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
The great part about Vagrant is we could just run one command and get all of our VMs up with the same exact configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So I'm gonna close this out and I'm going to run a vagrant status.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
And so, what this is gonna do is it's gonna check the status of the VMs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
And for these statuses for the VMs, we can see that they're all set to not created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
And so, you could see that we've got the three different VMs here, kubemaster, which is going to be our master node, and then the two worker nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
And they're all in a not created state because we actually haven't brought up the VMs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So let's go ahead and do that now and we can do that with a vagrant up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
And this is going to provision all three of those VMs with the exact specifications from the Vagrant file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
And so, what it's going to do is it's actually going to pull the Ubuntu Bionic 64 base image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
And then once that image is pulled, it's able to then provision all of the different VMs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
This part is going to take a decent amount of time to get all of those VMs up and running, so we're just gonna have to sit there and wait.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Just understand that it's not a big deal if it takes a long time, it's kind of expected.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
Okay, so now that it's complete, if you just take a look at the logs, you can see it actually goes step by step and provision the different VMs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
So it first started provisioning the kubemaster, after it provisioned that, it then moved down to the kubenode01, which is the first worker node, and then it wrapped up by provisioning the kubenode02.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So we've got all three VMs provisioned.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
And now if I do a vagrant status, we could take a look at the status of the VMs now that they're provisioned.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
And we can see that all three nodes are in a running state, which is exactly what we want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So now that we've got the three nodes in a running state, how do we connect to it?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
Well, we do this by running the command vagrant ssh and then the name of the specific node we want to connect to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So if I want to connect to kubemaster, I'm just gonna copy that, and this is automatically going to connect us to the kubemaster node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And so, now you can see, based off of the command prompt, you can see we are now in the kubemaster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
And if I just do an ls -la, we can see that I am in fact in the kubemaster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So to log out, or to exit out of the session, I can just do a logout and that's going to take me back to my local machine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
And if I once again do a vagrant status, I can then do a vagrant ssh, and I'll connect to kubenode01.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And connected to kubenode01, if I just run an uptime, we can see that it's been up for three minutes so we are, in fact, connected to kubenode01.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
And then I'll log out of this one and then we'll just quickly connect to kubenode02.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So I'll do a vagrant ssh kubenode02 and now we're successfully connected onto kubenode02.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
So that's how you access all of your VMs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So we've got all of our VMs provisioned and we're good to go.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
So in the next video, we're going to actually bootstrap the Kubernetes cluster using Kubeadm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 11_Install _Kubernetes the kubeadm way_
- Lecture: 248_Deployment With Kubeadm - Provision VMs With Vagrant
- File: 248_Deployment With Kubeadm - Provision VMs With Vagrant.txt
- Topic: Deployment With Kubeadm - Provision VMs With Vagrant
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
