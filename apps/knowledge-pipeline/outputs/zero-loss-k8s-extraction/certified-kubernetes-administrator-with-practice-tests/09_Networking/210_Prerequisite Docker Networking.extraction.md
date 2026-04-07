# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 210_Prerequisite Docker Networking

---

## Entry 1
Type: Concept  

Content:
Hello and welcome to this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Concept  

Content:
In this lecture we look at networking in Docker.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
We will start with a basic networking options in Docker, and then try and relate it to the concepts around networking namespaces.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Let's start with a single Docker host a server with Docker installed on it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
It has an Ethernet interface at eth0 that connects to the local network with the IP address.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
192.168.1.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
When you run a container, you have different networking options to choose from.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
First, let's see the Non-network with the Non-network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
The Docker container is not attached to any network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
The container cannot reach the outside world, and no one from the outside world can reach the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Exam Tip  

Content:
If you run multiple containers, they are all created without being part of any network and cannot talk to each other or to the outside world.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
Next is the host network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
With the host network, the container is attached to the host's network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
There is no network isolation between the host and the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
If you deploy a web application listening on port 80.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
In the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
Then the web application is available on port 80 on the host without having to do any additional port mapping.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
If you try to run another instance of the same container that listens on the same port, it won't work as they share the host networking and two processes cannot listen on the same port at the same time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
The third networking option is the bridge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
In this case, an internal private network is created which the Docker host and containers attached to the network has an address 172.17.0.0 by default, and each device connecting to this network get their own internal private network address on this network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
This is the network that we are most interested in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
So we will take a deeper look at how exactly Docker creates and manages this network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
When Docker is installed on the host, it creates an internal private network called bridge by default.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
You can see this when you run the Docker network ls command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
Now Docker calls the network by the name, but on the host, the network is created by the docker zero.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
You can see this in the output of the IP link command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Command  

Command:
```bash
Docker internally uses a technique similar to what we saw in the video on namespaces, by running the IP link ad command with the type set to bridge.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So remember the name bridge in Docker network output refers to the name docker zero on the host to run the same thing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Also note that the interface or network is currently down.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Now remember we said that the bridge network is like an interface to the host, but a switch to the namespaces or containers within the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So the interface docker zero on the host is assigned an IP 172.17.0.1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
You can see this in the output of the IP addr command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
Whenever a container is created, Docker creates a network namespace for it, just like how we created network namespaces in the previous video.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Run the IP net command to list the namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Note that there is a minor hack to be done to get the IP Netns command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
To list the namespaces created by Docker.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
Check out the resources section of this lecture for information on that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
The namespace has the name starting B3165.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
You can see the namespace associated with each container in the output of the docker inspect command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
So how does Docker attach the container or its network namespace to the bridge network?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
For the remainder of this lecture, a container and network namespace means the same thing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
When a container, I'm referring to the network namespace created by Docker for that container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So how does Docker attach the container to the bridge?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
As we did before, it creates a cable a virtual cable with two interfaces on each end.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
Let's find out what Docker has created here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
If you run the IP link command on the Docker host, you see one end of the interface which is attached to the local bridge Docker zero.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
If we run the same command again, this time with the dash n option with the namespace, then it lists the other end of the interface within the container namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
The interface also gets an IP assigned within the network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
You can view this by running the IP addr command, but within the container's namespace the container gets assigned 172.17.0.3.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
You can also view this by attaching to the container and looking at the IP address assigned to it that way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
The same procedure is followed every time a new container is created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Command  

Command:
```bash
Docker creates a namespace, creates a pair of interfaces, attaches one end to the container, and another end to the bridge network.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
The interface pairs can be identified using their numbers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
Odd and even form a pair nine and ten are one, pair seven and eight are another.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
11 and 12 are one pair.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
The containers are all part of the network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
Now they can all communicate with each other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
Let us look at port mapping now. the container we created is nginx.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So it's a web application serving web page on port 80.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
Since our container is within a private network inside the host, only other containers in the same network are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
The host itself can access this web page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
If you try to access the web page using curl with the IP of the container from within Docker host on port 80, you will see the web page.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
If you try to do the same thing outside the host, you cannot view the web page to allow external users to access the applications hosted on containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Command  

Command:
```bash
Docker provides a port publishing or port mapping option when you run containers.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
Tell Docker to map port 8080 on the Docker host to port 80 on the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
With that done, you could access the web application using the IP of the Docker host and port 8080.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Any traffic to port 8080 on the docker host will be forwarded to port 80 on the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
Now all of your external users and other applications or service can use this URL to access the application deployed on the host.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
But how does Docker do that?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
How does it forward traffic from one port to another?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
Well, what would you do?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
Let's forget about Docker and everything else for a second.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
The requirement is to forward traffic coming in on one port to another port on the server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
We talked about it in one of our prerequisite lectures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
We create a Nat rule for that using iptables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Implementation Step  

Content:
We create an entry into the Nat table to append the rules to the prerouting chain, to change the destination port from 1880 to 80.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Command  

Command:
```bash
Docker does it the same way.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Command  

Command:
```bash
Docker adds the rule to the Docker chain and sets destination to include the container's IP as well.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
You can see the rule Docker creates when you list the rules in iptables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 81
Type: Implementation Step  

Content:
In the next lecture we will talk about CNI and what a container networking interface is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 210_Prerequisite Docker Networking
- File: 210_Prerequisite Docker Networking.txt
- Topic: Prerequisite Docker Networking
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
