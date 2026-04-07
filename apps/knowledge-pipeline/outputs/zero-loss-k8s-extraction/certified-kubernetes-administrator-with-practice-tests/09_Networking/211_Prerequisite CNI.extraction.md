# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 211_Prerequisite CNI

---

## Entry 1
Type: Concept  

Content:
Hello and welcome to this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
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
In this lecture we look at container networking interface.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So far we saw how network namespaces work as in how to create an isolated network namespace environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
Within our system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Exam Tip  

Content:
We saw how to connect multiple such namespaces through a bridged network, how to create virtual cables or pipes with virtual interfaces on either end, and then how to attach each end to a namespace and the bridge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Warning/Pitfall  

Content:
We don't know how to assign IP and bring them on, and finally enable Nat or IP masquerade for external communication, etc. we then saw how Docker did it for its bridge networking option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
It was pretty much the same way, except that it uses different naming patterns.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
Well, other container solutions solve their networking challenges in kind of the same way, like Rocket or Mesos, containerization, or any other solutions that work with containers and requires to configure networking between them like Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Comparison  

Content:
If we are all trying to solve the same networking challenges by researching and finally identifying a similar approach with our own little minor differences.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Exam Tip  

Content:
Why code and develop the same solution multiple times?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Why not just create a single standard approach that everyone can follow?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So we take all of these ideas from the different solutions, and move all the networking portions of it into a single program or code.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And since this is for the bridge network, we call it bridge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
So we created a program or script that performs all the required tasks to get the container attached to a bridge network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Exam Tip  

Content:
For example, you could run this program using its name bridge and specify that you want to add this container to a particular network namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Operational Insight  

Content:
The bridge program takes care of the rest so that the container runtime environments are relieved of those tasks.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Exam Tip  

Content:
For example, when Rocket or Kubernetes creates a new container, they call the bridge program and pass the container ID and namespace to get networking configured for that container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
So what if you wanted to create such a program for yourself, maybe for a new networking type?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Best Practice  

Content:
If you were doing so, what arguments and commands should it support?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
How do you make sure the program you create will work correctly with these runtimes?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Operational Insight  

Content:
How do you know that container runtimes like Kubernetes or Rocket will invoke your program correctly?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Best Practice  

Content:
That's where we need some standards to find a standard that defines how a program should look, how container runtimes will invoke them so that everyone can adhere to a single set of standards and develop solutions that work across runtimes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Basuo container network interface comes in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Best Practice  

Content:
The CNI is a set of standards that define how programs should be developed to solve networking challenges in a container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Operational Insight  

Content:
Runtime environments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
The programs are referred to as plugins, in this case bridge Brits program that we have been referring to is a plugin for CNI.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Best Practice  

Content:
CNI defines how the plugin should be developed and how container runtimes should invoke them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Operational Insight  

Content:
CNI defines a set of responsibilities for container runtimes and plugins for container runtimes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
CNI specifies that it is responsible for creating a network namespace for each container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Best Practice  

Content:
It should then identify the networks the container must attach to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
Container runtime must then invoke the plugin when a container is created using the add command, and also invoke the plugin when the container is deleted using the del command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
It also specifies how to configure a network plugin on the container runtime environment using a JSON file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Best Practice  

Content:
On the plugin side, it defines that the plugin should support add del and check command line arguments, and that these should accept parameters like container and network namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Best Practice  

Content:
The plugin should take care of assigning IP addresses to the pods and any associated routes required for the containers to reach other containers in the network at the end, the results should be specified in a particular format, as long as the container runtimes and plugins adhere to these standards, they can all live together in harmony.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Best Practice  

Content:
Any runtime should be able to work with any plugin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
CNI comes with a set of supported plugins already, such as bridge, Vlan, IP, Vlan, Macvlan one for windows, as well as iPam plugins like host, local and DHCP.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
There are other plugins available from third party organizations as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Exam Tip  

Content:
Some examples are weave, flannel, cilium, VMware, NSX, calico, Infoblox, etc. all of these container runtimes implement CNI standards, so any of them can work with any of these plugins.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
But there is one that is not in this list.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Command  

Command:
```bash
Docker.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Her Docker does not implement.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Command  

Command:
```bash
Docker has its own set of standards known as CNM, which stands for Container Network Model, which is another standard that aims at solving container networking challenges similar to CNI, but with some differences due to the differences.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Warning/Pitfall  

Content:
These plugins don't natively integrate with Docker, meaning you can't run a Docker container and specify the network plugin to use is CNI and specify one of these plugins.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
But that doesn't mean you can't use Docker with CNI at all, you just have to work around it yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Exam Tip  

Content:
For example, create a Docker container without any network configuration and then manually invoke the bridge plugin yourself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
That is pretty much how Kubernetes does it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
When Kubernetes creates Docker containers, it creates them on the network.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
It then invokes the configured CNI plugins who take care of the rest of the configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
We talk about CNI in Kubernetes in the upcoming lectures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 211_Prerequisite CNI
- File: 211_Prerequisite CNI.txt
- Topic: Prerequisite CNI
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
