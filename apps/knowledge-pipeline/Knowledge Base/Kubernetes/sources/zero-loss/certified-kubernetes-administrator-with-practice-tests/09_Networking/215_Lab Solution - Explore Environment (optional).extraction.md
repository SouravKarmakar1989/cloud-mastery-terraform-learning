# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 215_Lab Solution - Explore Environment (optional)

---

## Entry 1
Type: Implementation Step  

Content:
Instructor: For the first question, it's asking us how many nodes are part of this cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So we can do this by running a kubectl get nodes and we can see there's two nodes, control-plane and node01.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
So I'll select two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
What is the internal IP address of the controlplane node in the cluster?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So we're gonna run the same command, kubectl get nodes, but this time passing a -o wide.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
That's gonna give us a little bit more information.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
And what we specifically want is the INTERNAL-IP column.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So this is gonna give us the internal IP address, which is what it's asking for.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So for under controlplane, we can see it's 192.5.114.3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So I'll select that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
What is the network interface configured for cluster connectivity on control-plane node?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So here, I'm going to run the command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So there's two commands, you can either do ip address, or you can do ip link.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
It doesn't matter which one you use, each one will give you the same information.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So we do ip address and what you want to do is find the interface that has this specific IP.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So we will go down and we'll see one 114.3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
And if you go through all the interfaces, when we get down to eth0, we could see that it's got the one 114.3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So this IP address is bound to this interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So this is what's gonna be used for cluster connectivity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So I'll select eth0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Now, it's asking for what is the MAC address of the interface on the control-plane?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So it's asking us what's the MAC address of the interface of eth0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
So we're already here, we've already got the output open.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So we can just run this right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So this is the answer, 72:03, it's gonna be this guy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
But if you wanted to, you could also run ip address show and then the name of the interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So if you just wanted to see the information for this interface without it cluttering your screen, you could do show eth0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
And that's gonna give us all of the same information, but just for this interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Now it's asking us, what is the IP address assigned to node01?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So we'll do kubectl get nodes -o wide.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
And now, we grab the INTERNAL-IP of node01, which is the one 114.6.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So I'll grab, that's this guy right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
And so I'll grab one 114.6.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
What is the MAC address assigned to node01?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
So we're gonna do the same steps for node01.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
I'm gonna SSH to that one first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
So now we're on node01 and I can just do an ip address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
And we gotta look for the one 114.6.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So if I scroll down, we can see one 114.6, that's also eth0 on node01.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
And then, if you take a look at the MAC address for that interface, we can see it's 72:06.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So I'll select 72:06.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
The next question is asking us, we use the Containerd as our container runtime.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
What is the interface/bridge created by on that host?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So this is asking specifically, you know, back on the controlplane, we'll do ip address, or ip link.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
And we wanna look for the bridge/interface that the Containerd is gonna be using, so that's going to be the cni0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Now, I know that's what's going to be the bridge/interface, but if you didn't know that that was a bridge/interface on a Linux host, what you can do is you can run this command, ip address show.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So this is gonna show you, you know, based off a certain criteria what interfaces you're interested in and you type in type and bridge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So this is gonna show you all of the bridge interfaces on this machine.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
And so here, you can see the only bridge interface is cni0, so we'll select cni0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
What is the state of interface cni0?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
So we've already got this information up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Best Practice  

Content:
If you just scroll to the right, you should see a state of UP, right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
The next question is asking us, if you were to ping Google from the control-plane node, what route does it take?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Basically, it's asking us what is the IP address of the default gateway?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
So I'm gonna do a ip route.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
This is gonna list all of the routes on this host and we can see that the default route is via 172.25.0.1 on eth1 interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So that's the IP address of the default gateway, 172.25.0.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So basically, anytime you send a request to anybody that's outside of any of the following networks, which you already have routes for, it's, by default, going to go to this IP address right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Architecture  

Content:
The next question is asking us, what is the port the kube-scheduler is listening on in the controlplane.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So to figure out what port it's listening on, we're gonna want to use the netstat command and I recommend you take a look at the different flags so we can figure out what we want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
And I realize that there's a typo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
Okay, so we do netstat.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
Now, a couple of things that we want, since we want to figure out what port it's listening on, we want the -l.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
This is gonna be display listening server sockets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Architecture  

Content:
Also, I want to be able to do, you know, like a netstat and then filter based off of, you know, scheduler, to figure out the schedule process.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Architecture  

Content:
So we want to do the -p flag, which is gonna list out the program name, so that we can actually grep for the scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Warning/Pitfall  

Content:
And then finally, the other flag that I usually like to do, in general, which is the -n flag here, which is saying don't resolve the names of the ports, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Warning/Pitfall  

Content:
Don't resolve the names of the ports or the IP addresses.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
I want to be able to physically see the number, or then it's going to try to figure out what is the protocol that uses that specific port.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
So let's run those flags.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
I'll do -npl, and then I'm gonna do a | grep -i, the -i means we're going to, it's going to be case-insensitive, so it doesn't matter if we capitalize it or not.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Architecture  

Content:
And I'll do scheduler.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Architecture  

Content:
And we see that the scheduler is listening on this port right here, 10259.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Architecture  

Content:
Now, it's saying notice that the ETCD is listening on two ports.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
Which of these have more client connections established?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Architecture  

Content:
And so to do that, we will run the same command, but this time we're going to grep for ETCD.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
All right, so you could see that we are listening on 2379 and 2381.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
So those are the two ports.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
And now we want to figure out how many established connections there are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So once again, we're gonna do the --help.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Warning/Pitfall  

Content:
We're not gonna be using the listening flag anymore because we don't care about what's listening.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
We wanna find the the established connections.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
So we're gonna display all sockets, that's gonna be the -a.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Architecture  

Content:
We're gonna do the -p again, so we can see all the programs that we can grep for ETCD.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Warning/Pitfall  

Content:
And then, we'll do the n flag, numeric, so we don't resolve the names.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Architecture  

Content:
So now I'll do netstat -npa | grep -i ETCD.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So this is gonna show us all of the established connections.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
And this is going to show us for all the ports, 2379, 2380.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
You can see most of the connections are 2379.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Warning/Pitfall  

Content:
You don't see a lot of 2380 zeros.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
So we already kind of know the answer, but let's go ahead and run a command that's going to actually count the total number of connections.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Architecture  

Content:
So I'm gonna do grep -i ETCD, then I'm gonna do | grep -i and I'm gonna grep for 2379.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Implementation Step  

Content:
And then we could do a wc -l.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
That's gonna count the number of lines.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
So we could see there's 67, and if I change this to 2380, we can see there's one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
So we can see clearly that the 2379 has way more connections, so I'll select that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Architecture  

Content:
And we could see that this is just saying that the reason for this is because 2379 is the port of ETCD to which all control plane components connect to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
2380 is only for peer-to-peer connectivity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Warning/Pitfall  

Content:
And so that's only used when you have multiple control plane nodes, which in this case we don't.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
And so that's going to wrap up this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 215_Lab Solution - Explore Environment (optional)
- File: 215_Lab Solution - Explore Environment (optional).txt
- Topic: Lab Solution - Explore Environment (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
