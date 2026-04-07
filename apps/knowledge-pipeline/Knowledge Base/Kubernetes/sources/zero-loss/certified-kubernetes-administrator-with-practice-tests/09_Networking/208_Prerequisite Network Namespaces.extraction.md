# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 208_Prerequisite Network Namespaces

---

## Entry 1
Type: Concept  

Content:
In this video, we get introduced to network namespaces in Linux.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
Network namespaces are used by containers like Docker to implement network isolation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
We'll start with a simple host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
As we know already, containers are separated from the underlying host using namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So what are namespaces?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
If your host was your house, then namespaces are the rooms within the house that you assign to each of your children.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
The room helps in providing privacy to each child.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Each child can only see what's within his or her room.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
They cannot see what happens outside their room.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
As far as they're concerned, they're the only person living in the house.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
However, as a parent, you have visibility into all the rooms in the house, as well as other areas of the house.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
If you wish, you can establish connectivity between two rooms in the house.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
When you create a container, you wanna make sure that it is isolated, that it does not see any other processes on the host or any other containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
So we create a special room for it on our host using a namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
As far as the container is concerned, it only sees the processes run by it and thinks that it is on its own host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
The underlying host, however, has visibility into all of the processes, including those running inside the containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
This can be seen when you list the processes from within the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
You see a single process with a process ID of one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
When you list the same processes as a route user from the underlying host, you see all the other processes along with the process running inside the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
This time with a different process ID.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
It's the same process running with different process IDs inside and outside the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
That's how namespaces work.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
When it comes to networking, our host has its own interfaces that connect to the local area network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
Our host has its own routing and arp tables with information about rest of the network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
We want to seal all of those details from the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
When the container is created, we create a network namespace for it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
That way, it has no visibility to any network related information on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Within its namespace, the container can have its own virtual interfaces, routing, and arp tables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
The container has its own interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
To create a new network namespace on a Linux host, run the IP netns add command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
In this case, we create two network namespaces to list the network namespace, run the IP netns command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
To list the interfaces on my host, I run the IP link command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
I see that my host has the loopback interface and the eat zero interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
Now, how do we view the same within the network namespace that we created?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
How do we run the same command within the red or blue namespace?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Troubleshooting  

Content:
Prefix the command with the command IP netns exec, followed by the namespace name, which is red.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Now, the IP link command will be executed inside the red namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Another way to do it is to add the -n option to the original IP link command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Both of these are the same.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
The second one is similar, but remember, this only works if you intend to run the IP command inside the namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
As you can see, it only lists the loopback interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
You cannot see the eight zero interface on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So with namespaces, we have successfully prevented the container from seeing the host's interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
The same is true with the arp table.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
If you run the arp command on the host, you see a list of entries.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
But if you run it inside the container, you see no entries and the same for routing table.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Now, as of now, these network namespaces have no network connectivity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
They have no interfaces of their own and they cannot see the underlying host network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Implementation Step  

Content:
Let's first look at establishing connectivity between the namespaces themselves.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
Just like how we would connect two physical machines together using a cable to an ethernet interface on each machine, you can connect two namespaces together using a virtual ethernet pair or a virtual cable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
It's often referred to as a pipe, but I like to call it a virtual cable with two interfaces on either ends.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
To create the cable, run the IP link add command with a type set to veth and specify the two ends, veth-red and veth-blue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
The next step is to attach each interface to the appropriate namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Use the command IP link set veth-red netns red to do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Similarly, attach the blue interface to the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
We can then assign IP addresses to each of these namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
We will use the usual IP LEDR command to assign the IP address, but within each namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
We will assign the red namespace and IP 192.168.15.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
We then assign the blue namespace and IP 192.168.15.2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
We then bring up the interface using the IP link set up command for each device within the respective namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
The links are up and the namespaces can now reach each other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
Try a ping from the red namespace to reach the IP of the blue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
If you look at the arp table on the red namespace, you see it's identified its blue neighbor at 192.168.15.2 with a MAC address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
Similarly, if you list the arp table on the blue namespace, you see it's identified, it's red neighbor.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Comparison  

Content:
If you compare this with the arp table of the host, you see that the hosts arp table has no idea about this new namespaces we have created and no idea about the interfaces we created in them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
Now, that worked when you had just two namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
What do you do when you have more of them?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
How do you enable all of them to communicate with each other?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Implementation Step  

Content:
Just like in the physical world, you create a virtual network inside your host, create a network, you need a switch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
So to create a virtual network, you need a virtual switch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
So you create a virtual switch within our host and connect the namespaces to it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Implementation Step  

Content:
But how do you create a virtual switch within a host?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Exam Tip  

Content:
There are multiple solutions available, such as the native solution called as Linux Bridge, and the Open vSwitch, et cetera.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Exam Tip  

Content:
In this example, we will use the Linux Bridge option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
To create an internal bridge network, we add a new interface to the host using the IP link add command with the type set to bridge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
We will name it v-net-0.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
As far as our host is concerned, it is just another interface, just like the eight zero interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
It appears in the output of the IP link command along with the other interfaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
It's currently down, so you need to turn it up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
Use the IP link set dev up command to bring it up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
Now, for the namespaces, this interface is like a switch that it can connect to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
So think of it as an interface for the host and a switch for the namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
So the next step is to connect the namespaces to this new virtual network switch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Implementation Step  

Content:
Earlier, we created the cable or the eth pair with the veth-red interface on one end and blue interface on the other because we wanted to connect the two namespaces directly.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
Now, we will be connecting all namespaces to the bridge network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
So we need new cables for that purpose.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
This cable doesn't make sense anymore, so we will get rid of it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
Use the IP link delete command to delete the cable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
When you delete the link with one end, the other end gets deleted automatically since they are a pair.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
That does now create new cables to connect the namespace to the bridge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Implementation Step  

Content:
Run the IP link add command and create a pair with veth-red on one end like before, but this time, the other end will be named veth-red-br as it connects to the bridge network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
This naming convention will help us easily identify the interfaces that associate to the red namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Implementation Step  

Content:
Similarly, create a cable to connect the blue namespace to the bridge network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
Now that we have the cables ready, it's time to get them connected to the namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
To attach one end of the interface to the red namespace, run the IP link set veth-red netns red command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
To attach the other end to the bridge network, run the IP link set command on the veth-red-br end and specify the master for it as the v-net-0 network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
Follow the same procedure to attach the blue cable to the blue namespace and the bridge network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
That has now set IP addresses for these links and turn them up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
We'll use the same IP addresses that we used before, 192.168.15.1 and 192.168.15.2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
And finally, turn the devices up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
The containers can now reach each other over the network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
So we follow the same procedure to connect the remaining namespaces to the same network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
We now have all four namespaces connected to our internal bridge network, and they can all communicate with each other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
They have all IP addresses 192.168.15.1, two, three, and four.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
And remember, we assigned our host the IP 192.168.1.2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
From my host, what if I try to reach one of these interfaces in these namespaces?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
Will it work?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
No.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 109
Type: Concept  

Content:
My host is on one network and the namespaces are on another.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
But what if I really want to establish connectivity between my host and this namespaces?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
Remember, we said that the bridge switch is actually a network interface for the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
So we do have an interface on the 192.168.15 network on our host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
Since this just another interface, all we need to do is assign an IP address to it so we can reach the namespace through it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
Run the IP addr command to set the IP 192.168.15.5 to this interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
We can now ping the red namespace from our local host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
Now, remember, this entire network is still private and restricted within the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
From within the namespaces, you can't reach the outside world, nor can anyone from the outside world reach the services or applications hosted inside.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Concept  

Content:
The only door to the outside world is the ethernet port on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Implementation Step  

Content:
So how do we configure this bridge to reach the LAN network through the ethernet port?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Concept  

Content:
Say there is another host attached to our LAN network with the address 192.168.1.3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
How can I reach this host from within my namespaces?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
What happens if I try to ping this host from my blue namespace?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
The blue namespace sees that I'm trying to reach a network at 192.168.1, which is different from my current network of 192.168.15.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
So it looks at its routing table to see how to find that network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
The routing table has no information about other network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
So it comes back saying that the network is unreachable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
So we need to add an entry into the routing table to provide a gateway or door to the outside world.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
So how do we find that gateway?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
A door or a gateway, as we discussed before, is a system on the local network that connects to the other network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
So what is a system that has one interface on the network local to the blue namespace, which is the 192.168.15 network, and is also connected to the outside LAN network?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
Here's a logical view.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
It's the local host that have all these namespaces on so you can ping the namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
Remember, our local host has an interface to attach to the private network so you can ping the namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
So our local host is the gateway that connects the two networks together.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Concept  

Content:
We can now add a route entry in the blue namespace to say, route all traffic to the 192.168.1 network through the gateway at 192.168.15.5.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Concept  

Content:
Now, remember, our host has two IP addresses, one on the bridge network at 192.168.15.5, and another on the external network at 192.168.1.2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Concept  

Content:
Can you use any in the route?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
No, because the blue namespace can only reach the gateway in its local network at 192.168.15.5.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Best Practice  

Content:
The default gateway should be reachable from your namespace when you add it to your route.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Warning/Pitfall  

Content:
When you try to ping now, you no longer get the network unreachable message, but you still don't get any response back from the ping.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Concept  

Content:
What might be the problem?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
We talked about a similar situation in one of our earlier lectures, where from our home network, we try to reach the external internet through our router.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Warning/Pitfall  

Content:
Our home network has our internal private IP addresses that the destination network don't know about, so they cannot reach back.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
For this, we need NAT enable on our host acting as the gateway here so that it can send the messages to the LAN in its own name with its own address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
So how do we add NAT functionality to our host?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Best Practice  

Content:
We should do that using iptables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Concept  

Content:
Add a new rule in the NAT iptable in the post routing chain to masquerade or replace the from address on all packets coming from the source network 192.168.15.0 with its own IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
That way, anyone receiving these packets outside the network will think that they're coming from the host and not from within the namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Concept  

Content:
When we try to ping now, we see that we are able to reach the outside world.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Concept  

Content:
Finally, say the LAN is connected to the internet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Concept  

Content:
We want the namespaces to reach the internet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 152
Type: Concept  

Content:
So we try to ping a server on the internet at 8.8.8.8 from the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Concept  

Content:
We receive a familiar message that the network is unreachable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Concept  

Content:
By now we know why that is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
We look at the routing table and see that we have routes to the network 192.168.1, but not to anything else.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Concept  

Content:
Since these namespaces can reach any network our host can reach, we can simply say that to reach any external network, talk to our host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 157
Type: Best Practice  

Content:
So we add a default gateway specifying our host, we should now be able to reach the outside world from within these namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 158
Type: Concept  

Content:
Now, what about connectivity from the outside world to inside the namespaces?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 159
Type: Exam Tip  

Content:
Say for example, the blue namespace hosts a web application on port 80.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 160
Type: Concept  

Content:
As of now, the namespaces are on an internal private network and no one from the outside world knows about them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 161
Type: Concept  

Content:
We can only access these from the host itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Concept  

Content:
If you try to ping the private IP of the namespace from another host on another network, you will see that it's not reachable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 163
Type: Concept  

Content:
Obviously, because that host doesn't know about this private network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 164
Type: Concept  

Content:
In order to make that communication possible, you have two options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 165
Type: Concept  

Content:
The two options that we saw previously on that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 166
Type: Implementation Step  

Content:
The first is to give away the identity of the private network to the second host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 167
Type: Warning/Pitfall  

Content:
So we basically add an IP route entry to the second host, telling the host that the network 192.168.15 can be reached through the host at 192.168.1.2, but we don't want to do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 168
Type: Concept  

Content:
The other option is to add a port forwarding rule using iptables to say any traffic coming to port 80 on the local host is to be forwarded to port 80 on the IP assigned to the blue namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
Well, that's it for this video.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 170
Type: Concept  

Content:
Thank you for watching.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 208_Prerequisite Network Namespaces
- File: 208_Prerequisite Network Namespaces.txt
- Topic: Prerequisite Network Namespaces
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
