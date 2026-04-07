# Extraction: certified-kubernetes-administrator-with-practice-tests / 10_Design and Install a Kubernetes Cluster / 244_ETCD in HA

---

## Entry 1
Type: Architecture  

Content:
In this lecture we will talk about etcd in a high availability setup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So this is really a prerequisite lecture for the next lecture where we talk about configuring Kubernetes in a highly available mode.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Architecture  

Content:
Well one portion of that deals with configuring etcd in a Ha mode.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Architecture  

Content:
So in this lecture we will discuss about etcd in Ha mode.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Architecture  

Content:
So in the beginning of this course we took a quick look at etcd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Architecture  

Content:
We will now recap real quick and more importantly focus on the cluster configuration on etcd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So let's recap real quick and look at the number of nodes in the cluster, what raft protocol is, etc..

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So what is STD?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
It's a distributed, reliable key value store that is simple, secure and fast.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So let's break it up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Traditionally, data was organized and stored in tables like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Exam Tip  

Content:
For example, to store details about a number of individuals.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
A key value store stores information in the form of documents or pages.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So each individual gets a document and all information about that individual is stored within that file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
These files can be in any format or structure, and changes to one file does not affect the others.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
In this case, the working individuals can have their files with salary fields.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
While you could store and retrieve simple key and values.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
When your data gets complex, you typically end up transacting in data formats like JSON or YAML.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Architecture  

Content:
So that's what etcd is and how you quickly get started with it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Architecture  

Content:
We also said that etcd is distributed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So what does that mean.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And that is what we're going to focus in this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Architecture  

Content:
We had etcd on a single server but it's a database and maybe storing critical data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Exam Tip  

Content:
So it is possible to have your data store across multiple servers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Architecture  

Content:
Now you have three servers, all running etcd and all maintaining an identical copy of the database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So if you lose one, you still have two copies of your data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Perfect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Concept  

Content:
But how does it ensure the data on all the nodes are consistent?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
You can write to any instance and read your data from any instance.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Architecture  

Content:
Etcd ensures that the same consistent copy of the data is available on all instances at the same time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So how does it do that with reads is easy since the same data is available across all nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
You can easily read it from any node, but that is not the case with writes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
What if two write requests come in on two different instances?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Which one goes through?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Exam Tip  

Content:
For example, I have writes coming in for the name set to John on one and with the name Joe on the other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Of course, we cannot have two different data on two different nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
When I said SSHd can write through any instance, I wasn't 100% right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Architecture  

Content:
Etcd does not process the writes on each node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Operational Insight  

Content:
Instead, only one of the instances is responsible for processing the rights internally.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
The two nodes elect a leader among them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Of the total instances, one node becomes the leader and the other node becomes the followers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
If the rights came in through the leader node, then the leader processes the right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
The leader makes sure that the other nodes are sent a copy of the data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Implementation Step  

Content:
If the rights came in through any of the other follower nodes, then they forward the rights to the leader internally and then the leader processes the rights again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
When the rights are processed, the leader ensures that copies of the rights are distributed to other instances in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Thus, a right is only considered complete if the leader gets consent from the other members in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So how do they elect the leader among themselves, and how do they ensure a right is propagated across all instances?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Architecture  

Content:
Etcd implements distributed consensus using Raft protocol.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
Let's see how that works in a three node cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Warning/Pitfall  

Content:
When the cluster is set up, we have three nodes that do not have a leader elected.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Raft algorithm uses random timers for initiating requests.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Exam Tip  

Content:
For example, a random timer is kicked off on the three managers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Implementation Step  

Content:
The first one to finish the timer sends out a request to the other nodes requesting permission to be the leader.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
The other managers, on receiving the request responds with their vote, and the node assumes the leader role.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Warning/Pitfall  

Content:
Now that it is elected the leader, it sends out notification at regular intervals to other masters, informing them that it is continuing to assume the role of the leader in case the other nodes do not receive a notification from the leader at some point in time, which could either be due to the leader going down or losing network connectivity, the nodes initiate a re-election process among themselves, and a new leader is identified.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Exam Tip  

Content:
Going back to our previous example, where a right comes in, it is processed by the leader and is replicated to other nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
The right is considered to be complete only once it is replicated to the other instances in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Best Practice  

Content:
We said that the etcd cluster is highly available, so even if we lose a node, it should still function.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Exam Tip  

Content:
Say for example, a new raid comes in, but one of the node is not responding, and hence the leader is only able to write to two nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
Is the write considered to be complete?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Does it wait for the third node to be up or does it fail?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
A write is considered to be complete if it can be written on the majority of the nodes in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Exam Tip  

Content:
For example, in this case of three nodes, the majority is two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
So if the data can be written on two of the nodes, then the write is considered to be complete.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
If the third node was to come online, then the data is copied to that as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
So what is the majority?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Well, a more appropriate term to use would be quorum.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
Quorum is the minimum number of nodes that must be available for the cluster to function properly, or make a successful write in case of three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
We know is two for any given number of nodes, quorum is the total number of nodes divided by two plus one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
So quorum of three nodes is three by two, which is 1.5 plus one equals 2.5.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
If there is a 0.5, consider the whole number only.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So that's two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
Similarly, quorum of five nodes is three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
So here is a table that shows the quorum of clusters of size 1 to 7.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
Quorum of three and five are what we calculated.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Implementation Step  

Content:
Quorum of one is one itself, meaning if you have a single node cluster, none of these really apply.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
If you lose that node, everything is gone.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
If you look at two and apply the same formula, the quorum is two itself, two by two is one and one plus one is two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
So even if you have two instances in the cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
The majority is still two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Troubleshooting  

Content:
If one fails, there is no quorum, so rights won't be processed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
So having two instances is like having one instance.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Best Practice  

Content:
It doesn't offer you any real value as quorum cannot be met, which is why it is recommended to have a minimum of three instances in an etcd cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
That way it offers a fault tolerance of at least one node.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
If you lose one, you can still have quorum and the cluster will continue to function.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Implementation Step  

Content:
So the first column minus the second column gives you the fault tolerance.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
The number of nodes that you can afford to lose while keeping the cluster alive.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
So we have 1 to 7 nodes here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
One and two are out of consideration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
So from 3 to 7 what do we consider.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
As you can see, three and four have the same fault.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
Tolerance of one five and six have the same fault tolerance of two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Best Practice  

Content:
When deciding on the number of master nodes, it is recommended to select an odd number as highlighted in the table.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
Three or 5 or 7.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
Say we have a six node cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Troubleshooting  

Content:
Say for example, due to a disruption in the network, it fails and causes the network to partition.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
We now have four nodes on one and two on the other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
In this case, the group with four nodes have quorum and continues to operate normally.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
However, if the network got partitioned in a different way, resulting in nodes being distributed equally between the two, each group now has three nodes only, but since we originally had six nodes, the quorum for the cluster to stay alive is four.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
But if you look at the groups here, neither of these groups have four managers to meet the quorum, so it results in a failed cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
So with even number of nodes, there is possibility of the cluster failing during a network segmentation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Implementation Step  

Content:
In case we had odd number of managers originally say seven, then after the network Segmentation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
We have four on one segmented network and three on the other.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
And so our clusters still lives on the group with four managers as it meets the quorum of four.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
No matter how the network segments, there are better chances for your cluster to stay alive in case of network segmentation with odd number of nodes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
So an odd number of nodes is preferred over even number.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Architecture  

Content:
Having five is preferred over six, and having more than five nodes is really not necessary, as five gives you enough fault tolerance to install etcd on a server, download the latest supported binary, extract it, create the required directory structure, copy over the certificate files generated for etcd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Concept  

Content:
We discussed how to generate these certificates in detail in the TLS certificate section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Architecture  

Content:
Then configure the etcd service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
What's important here is to note that the initial cluster option where we pass in the peer's information.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Architecture  

Content:
That's how each etcd service knows that it is part of a cluster and where its peers are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Architecture  

Content:
Once installed and configured, use the etcd cuddle utility to store and retrieve data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Architecture  

Content:
Run the etcd cuddle command and specify the key as name and value as John.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Architecture  

Content:
To retrieve data, run the etcd cuddle git command with the key name and it returns the value.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Architecture  

Content:
John to get all keys from the etcd cuddle.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
Get keys.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
Only command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Best Practice  

Content:
Going back to our design, how many nodes should our cluster have in an Ha environment?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
As you can see, having 1 or 2 instances doesn't really make any sense, as losing one node in either case will leave you without quorum and thus render the cluster non-functional.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Concept  

Content:
Hence, the minimum required nodes in an Ha setup is three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
We also discussed why we prefer odd number of instances over even number.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
Having even number of instances can leave the cluster without quorum in certain network partition Scenarios.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
So all the even number of nodes is out of scope.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
So we are left with three, five and seven or any odd number above that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Implementation Step  

Content:
Three is a good start, but if you prefer a higher level of fault tolerance, then five is better.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
But anything beyond that is just unnecessary.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Best Practice  

Content:
So considering your environment, the fault tolerance requirements, and the cost that you can bear, you should be able to choose one number from this list.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
In our case we go with three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
So how does our design look now with the minimum required number of nodes for fault tolerance is three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
Now, while it would be great to have three master nodes, we are limited by our capacity of our laptop, so we will just go with two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Implementation Step  

Content:
But if you're deploying this setup in another environment and have sufficient capacity, feel free to go with three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Architecture  

Content:
We also chose to go with the stacked topology, where we will have the etcd servers on the master nodes itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 134
Type: Implementation Step  

Content:
Thank you for listening and I will see you in the next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 10_Design and Install a Kubernetes Cluster
- Lecture: 244_ETCD in HA
- File: 244_ETCD in HA.txt
- Topic: ETCD in HA
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
