# Extraction: certified-kubernetes-administrator-with-practice-tests / 09_Networking / 221_Lab Solution - Explore CNI (optional)

---

## Entry 1
Type: Architecture  

Content:
Instructor: So, for the first question, it's asking us to inspect the kubelet service and identify the container runtime endpoint that's set for this Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Architecture  

Content:
So, I'm gonna do a ps -aux | grep -i kubelet.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
And we can see there's a lot of information.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Operational Insight  

Content:
So I'm gonna further drill that down, hence, I'm gonna grep for container -runtime.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Operational Insight  

Content:
And we can see the --container-runtime-endpoint flag is set to unix:///var/run/containerd/containerd.sock.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So I will select this one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Implementation Step  

Content:
What is the path configured with all binaries of CNI supported plug-ins?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So all of the plug-ins are going to be stored in /opt/cni/bin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
And so, if I then do an ls, we can see all of the binaries here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So, it's going to be /opt/cni/bin.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Identify which of the below plugins is not available in the list of available CNI plugins on the host?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So let's see, vlan, we have vlan there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
We have, let's see, cisco, do we have cisco?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Doesn't look like we have cisco.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Let's just double check if the other two are there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
So bridge, we've got bridge.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Dhcp, we've got dhcp.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So cisco is not there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
What is the CNI plugin configured to be used on this Kubernetes cluster?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So to see that, we can just do a ls /etc/cni/net.d.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
So this is going to tell us which plugin has been configured, and we could see it's flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So I'll select flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Architecture  

Content:
And what binary executable file will be run by the kubelet after a container and its associated namespaces are created?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So if I cat that file, and let me actually move into there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Here we can see that the binary that it's gonna run is flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
And then after that, it's gonna run portmap.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So the answer is flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
And that's gonna match up with this binary here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So we'll say flannel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And that's going to wrap up this lab.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 09_Networking
- Lecture: 221_Lab Solution - Explore CNI (optional)
- File: 221_Lab Solution - Explore CNI (optional).txt
- Topic: Lab Solution - Explore CNI (optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
