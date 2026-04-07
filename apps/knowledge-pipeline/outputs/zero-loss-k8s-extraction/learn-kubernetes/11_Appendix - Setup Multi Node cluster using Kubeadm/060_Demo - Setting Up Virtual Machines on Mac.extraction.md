# Extraction: learn-kubernetes / 11_Appendix - Setup Multi Node cluster using Kubeadm / 060_Demo - Setting Up Virtual Machines on Mac

---

## Entry 1
Type: Concept  

Content:
So in this video, what we're going to do is we're going to set up three virtual machines on a mac OS operating system using Apple silicon.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So that's going to be one of the M series chips.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
I'm going to show you guys how to spin up three virtual machines, so that we can then install a Kubernetes cluster using Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So we need three servers.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
And the easiest way to do that is by using virtualization.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So we can just run it on our local machine.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Warning/Pitfall  

Content:
We don't need to install or we don't need to purchase other physical equipment or hardware servers or other computers.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
We can run it all on our local machine.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
That way you guys can quickly and easily follow along.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
Now, keep in mind, if you're running on a mac that has only eight gigs of Ram, you will see that the script that you run will actually only deploy a single server, and that's just due to the memory limitations of your machine.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Exam Tip  

Content:
With eight gigs, it doesn't give us a lot of flexibility to spin up multiple VMs, so the script will automatically detect that you have eight gigs only, and it'll only deploy a single node for you, and then you're basically going to deploy Kubernetes onto a single node instead of doing it on three different nodes.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Exam Tip  

Content:
So to do that we need to use a tool called Multipass.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Exam Tip  

Content:
So Multipass allows us to create a ubuntu based virtual machines very easily.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Exam Tip  

Content:
And so what you want to do is you want to go to Canonical.com Multipass and you know, you want to go to install.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And here it's going to give us the instructions on how to get started.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Uh, depending on what operating system we're using, this video is focusing on macOS.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
The last video I showed you guys how to set up virtual machines using windows, which is a little bit different for Mac.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Exam Tip  

Content:
We're going to be using Multipass.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
And so it says to install um we're going to use Mac here.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Exam Tip  

Content:
So download Multipass for macOS.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
We're going to go ahead and download that.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
You can see it's going to get downloaded.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
And once it's downloaded we can then run the installer.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 25
Type: Concept  

Content:
So the installer is here we're going to hit continue.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
We're going to hit continue.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Just keep hitting continue.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Agree to the terms of service.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
Then we're going to install.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
It's going to ask for your password.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
And then it's going to proceed with the installation.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 33
Type: Concept  

Content:
So now we could see installation was successful.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
So we can go ahead and close this out.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
And if you want you can then move that installer file to the trash can.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 37
Type: Concept  

Content:
So at this point we've installed multi-pass.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Let's just make sure that it's working.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So what we want to do is we want to open up the terminal app.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So if you just go to spotlight and search for terminal app, you can use that if you have a different terminal like in my case I have Iterm as well.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
You can use that.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
It doesn't really matter.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
Just open up your terminal emulator and we'll make this a little bit bigger for you guys.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Exam Tip  

Content:
And what we need to do is just type in Multipass dash dash version.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
If you get a response back you can see the version that we're using which is 1.15.1.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Exam Tip  

Content:
Um, so that's going to confirm that Multipass was successfully installed.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So Multi-pass is going to help us spin up ubuntu based virtual machines that are going to act as our Kubernetes node.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Exam Tip  

Content:
And what we've done is if you go to the GitHub page here, so if you go to this repository, you're going to see that we've set it up so that it's going to be as easy and as simple as possible for you guys to follow along with our demonstration, because we've provided a script that's going to use Multipass and spin up a cluster or a couple of servers for you that we can then use to install kubectl.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So if you go to kube clusters and you go under Apple silicone, you're going to see that there's a couple of scripts here.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
And so these scripts are going to be what's responsible for deploying and deleting virtual machines.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
So if you want to deploy a setup so that you can use to follow along, you just run this script here.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Exam Tip  

Content:
And that's going to use Multipass to configure the network provision a couple of virtual machines so that we can then connect to them.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So let's go ahead and clone this GitHub repository.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
And so to do that I'm going to go back here.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
We're going to copy this.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Warning/Pitfall  

Content:
And I'm going to go to in this case VS code I don't need this.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
And I'm just going to do a git clone.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
We're going to clone it to the current directory.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 60
Type: Concept  

Content:
So we've now pulled in all of that source code.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
And remember it's the script is going to be in the following file.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So under kube ADM clusters under Apple Silicone.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
And that's where you want to go.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
So I'm going to CD into that directory.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
And we're just going to run that script which is called Deploy Virtual machines.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
So I'll do a dot slash deploy virtual machines.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And we're going to let it do all of the work for us.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 69
Type: Best Practice  

Content:
So now we can see that the script has finished running, so it should have created three virtual machines for us.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
And we can confirm that by running Multi-path list.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Exam Tip  

Content:
And that's going to list out the three nodes or the three servers that Multipass created for us.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So we can see here that we've got three nodes, we've got the control plane node, we've got node one, and we've got node two.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
And we could see the IP addressing information as well as what image was used, which was a ubuntu 22.04 LTS image.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Exam Tip  

Content:
Now if you want to connect to one of these nodes or one of these servers, all you have to do is type in Multipass shell and then the name of the server.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
So if I want to connect to the control plane node, I can run this command.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
And I'm now connected to the control plane node.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
So what you're going to see is that I'm in this demo going to have three terminals.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
And this one is going to be renamed to be Control plane.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
And then here let me do the Multi-pass list.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Implementation Step  

Content:
And then now I could do Multi-pass shell node zero one.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
So this one will be node zero one.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
And then we can open up one more terminal.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
And I'm going to do a multi-pass shell to node zero two.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
And we will rename that accordingly as well.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
So now I've got a three servers control plane node one and node two.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
This is what we're going to install Kubernetes on.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
And so just understand that's what each of these three terminals are for.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
Now I just want to quickly go over the IP addressing real quick.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
So if I go to my control plane node or any of the nodes I can do iPad, you're going to see that there's always going to be two interfaces.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
There's this interface here and then this interface here.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Implementation Step  

Content:
Ignore the first one.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
This is not what we're going to be using for communication.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
It's going to be using this EMP 0S2.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
So the 2168.86.14.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
And I'm going to run this command on all of them.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
And so you're going to see that there's going to be once again two interfaces.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
We want the second one.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
That's what we're going to use to communicate between all of the different nodes.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
And you'll see that the script has automatically set up host entries for your different servers.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
So if I do cat Etsy slash hosts, you're going to see that the control plane node can be accessed by the Dot 8640, which is my address.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
Node one is going to be the dot 41, which is node one here dot 41.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Implementation Step  

Content:
And then node two is the dot 42.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Implementation Step  

Content:
So you know, anytime in your you know, as we're following along and setting up kube adm, you can either reference the IP addresses or you can use the host entries that we've created and set up on all of the three servers.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
So that's basically everything I wanted to show you guys when it comes to setting up servers on your Mac, we've got everything up and running.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Best Practice  

Content:
We should be good to go.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Implementation Step  

Content:
One last thing I want to show you guys actually, is that if you go to the the repository that I showed you guys, what you want to do is you want to go under cube, atrium, apple silicone and then docks.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Implementation Step  

Content:
And then if you look at the documentation you go under compute resources.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
It's going to show you, you know, once you're done with following the demo, you're going to want to know how to destroy all the virtual machines.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
So tear down the environment.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
And we have a script for that which is delete virtual machines SSH which you see we've got this delete virtual.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
So all you have to do is just open up a new tab and just do dot slash.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
All you have to make sure you change into that folder.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
Go under Apple Silicone.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Implementation Step  

Content:
And then you could do dot slash delete virtual machines.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Implementation Step  

Content:
And then after you do that it's going to give you a one last instruction.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
Because that script can't do one thing which is clean stale DHP leases.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
So to do that you just go to this file right here and you delete basically all of the entries in that file.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Best Practice  

Content:
But you should be good to go.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Implementation Step  

Content:
So in the next video we can actually get started with deploying a Kubernetes cluster using cube ADM.

Source:
- Course: learn-kubernetes
- Module: 11_Appendix - Setup Multi Node cluster using Kubeadm
- Lecture: 060_Demo - Setting Up Virtual Machines on Mac
- File: 060_Demo - Setting Up Virtual Machines on Mac.txt
- Topic: Demo - Setting Up Virtual Machines on Mac
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
