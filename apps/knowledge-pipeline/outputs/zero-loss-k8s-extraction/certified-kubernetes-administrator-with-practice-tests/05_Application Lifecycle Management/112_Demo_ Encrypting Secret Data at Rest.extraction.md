# Extraction: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 112_Demo_ Encrypting Secret Data at Rest

---

## Entry 1
Type: Concept  

Content:
Instructor: Okay, so in this video, we're going to look into encrypting secret data at rest.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So if you go to the Kubernetes documentation pages and under Tasks, you have Administer a Cluster and Encrypting Secret Data at Rest, you have these following documents.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
I'm gonna follow this, but also kind of try and explain what we are trying to do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
So the first thing, first things first, I'm going to start up a Kubernetes playground.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So this is a single node cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
All right, so this basically uses, it is built with the kubeadm tool and has containerd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
I'm just gonna maximize this and we'll just work on the terminal.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
All right, so first things first, I'm gonna first create a secret object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
So I'm going to do a kubectl create secret, and I want a generic secret, so I'll do that, and I'll probably create a secret from literal, so I'm just going to copy this command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Okay, so I'm gonna call it key1 and supersecret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So that's my secret object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Implementation Step  

Content:
So my secret object is created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Concept  

Content:
So if I now do a get secret, I get to see my secret object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Concept  

Content:
And if I do a describe secret, my-secret, I get to see the secret name and the data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
If I wanna see a little bit more, I do a dash o yaml and I'm gonna do a get secret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Okay and I get to see the data here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
Now if you look here, so this is key1, and this is kind of the encoded format of the secret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So remember that, you know, anyone could take this and decode it and easily view the actual secret, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Concept  

Content:
So if I do, let me see if I have base64, yup, I do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So gonna get that again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So I'm gonna do a echo, copy and paste this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Let's pass it through base64 and do a decode.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And I get to the, the secret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
Okay, so that's the first thing to know that the secrets object stored in the secret configuration as you see it here is just Base64 encoded.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So if you just do a base64 decode, you're gonna see this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
So remember not to create your secret definition files and push it to GitHub or something because anyone could just pick this up and run this command and see the secret, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
So that's the first step, but I wanna make it clear that the scope of this video is not really relevant to this encoding here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
We are going to focus on the data that's stored within the etc server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Okay, so after we are done, this part is still gonna remain the same.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So we're not really focusing on this part right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Architecture  

Content:
What we're focusing on is how the data is stored in the etcd server, so that's the focus.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Architecture  

Content:
So let's first look at how this data is stored in the etcd server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Okay, so for that, if you go to the bottom of this, there is this command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Architecture  

Content:
It uses the ETCDCTL_API version three.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Architecture  

Content:
It runs the etcdctl command, passing the CA certificates for authentication, and we're gonna get this particular secret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Architecture  

Content:
So the way that it's stored in etcd is it's stored in registry/secrets/default and this is the secret name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Architecture  

Content:
So let me first see if we have the etcdctl command line.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Warning/Pitfall  

Content:
So we don't have that, so the first step is to get that installed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So I'm just gonna go apt-get install.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Architecture  

Content:
I think it's it etcd-client.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Warning/Pitfall  

Content:
Yup, so if you do not have the etcd, so remember that the etcd server is running in a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Architecture  

Content:
So you can either ssh into the pod and then run the etcdctl command from within that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Architecture  

Content:
Or you wanna run it locally from your control plane node, you could use the etcdctl client utility.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
Now, if the client command line utility is not available, you have different options to install it on different systems.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So let me see.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Exam Tip  

Content:
Okay, so I have it installed on my machine using the package etcd-client.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Architecture  

Content:
So look up for whatever it is the version of etcd that you're running.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Architecture  

Content:
Okay, so that's there, so now we've got etcdctl utility.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So remember that's client only, the server is still running on as a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Architecture  

Content:
So if you do kubectl get pods dash kube-system, I have the etcd control plane here, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Implementation Step  

Content:
Okay, so the next step is to run this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Implementation Step  

Content:
So first, remember that you need the certificate files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
So let's see if we have that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 54
Type: Concept  

Content:
Yup, we do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Architecture  

Content:
So under etcd, you have all the certificates files needed for connecting or authenticating to the etcd server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So that's good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 57
Type: Concept  

Content:
So I'm gonna copy this command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Architecture  

Content:
Remember to set the version, ETCDCTL_API version to three, and the name of the secret is secret1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
See what I created, get secret, so it's named my-secret, so I'm gonna replace that with my-secret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
I'm gonna do a my-secret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
If I just run this command, you can see that it kind of gives me kind of a jumbled information, but you can kind of see the secret there as is, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
You can see the secret there in the text format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
To see it in this format, you just need to append the hexdump to it because sometimes you may not be able to see it in the right format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Architecture  

Content:
So this is the data that's stored in etcd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
And if you look closely, you'll see that the secret that I have, the password or whatever it is that I've stored, is actually visible like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Architecture  

Content:
So the data is stored in etcd in an unencrypted format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Architecture  

Content:
So anyone with access to etcd will be able to just go through and get all the secrets and other confidential information stored as a secret object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So that's the problem here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Architecture  

Content:
So this is the problem that we are trying to solve by enabling encryption at rest in etcd.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Implementation Step  

Content:
Now, if you go through this document, first thing that it says is, first we need to determine if encryption at rest is already enabled or not.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So this is done with a property called encryption-provider-config.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Architecture  

Content:
So if I go to my kube-api server, so let's say my kube-api server is running as a process here, and let me just grep for kube-api server, and I get to see the Kube API server process running with all the options.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
Let's first see if it has the encryption-provider-config option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
So that's the first thing that we'll do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 75
Type: Concept  

Content:
This is to check if encryption at rest is already enabled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
And as you can see, it does not return a result.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 77
Type: Implementation Step  

Content:
So that means this option is not configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Concept  

Content:
We can also kind of verify this because this is a kubeadm setup, it uses the var /manifest etc/ kubernetes/manifests, yeah, etc/kubernetes/manifests, and here you have the kube-apiserver.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
So configuration, so if you look at this particular file, you can do a cat, we'll be able to see all the options provided.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Warning/Pitfall  

Content:
And here, you don't see the encryption option that we've talked about here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
So this means that encryption at rest is not enabled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
So that's the first step, and we've already verified that by creating the secrets object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
Okay, so the next step is to create a configuration file and then pass it in as this particular option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Implementation Step  

Content:
So that's it, so that's basically the steps required to enable encryption, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Implementation Step  

Content:
You create a configuration file and you pass it in as an option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 86
Type: Concept  

Content:
So let's look at the configuration file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 87
Type: Implementation Step  

Content:
So this is what it is, so you have the API version, you have the kind, it's encryption configuration, and then you have resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
Now, you can pick and choose which resources you want to encrypt, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Implementation Step  

Content:
So you have pods and deployments and secrets and services.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 90
Type: Concept  

Content:
Do you want to store all of them as encrypted?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
You might not because not everything is confidential, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
So you need not necessarily encrypt and save all the data about pods and deployments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
Here our concern is just secrets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 94
Type: Concept  

Content:
So under Resources, you specify the targets.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 95
Type: Concept  

Content:
So this is secrets, that means only the secret objects are going to be encrypted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
Now, you can encrypt something using a set of providers, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
So the default one is called identity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 98
Type: Concept  

Content:
The identity provider just means that there's no encryption at all.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
So you can see the list of providers here, and it says the identity provider says there's no encryption.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
Resources are written as-is without any encryption.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Implementation Step  

Content:
And then you have other providers which are these, and those are listed here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
So you have the secretbox, you have the aes, gcm, the aescbc, so all of these are encryption algorithms, different encryption algorithms, and you can see the details about how they encrypt here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
So you can choose whichever one you want and provide a key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 104
Type: Concept  

Content:
So this key has a secret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 105
Type: Exam Tip  

Content:
You can provide multiple keys, keys and secrets, and this secret is what will be used for the encryption by the encryption algorithm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
Now, one thing to note here is the order.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
As you can see, providers is a list.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Implementation Step  

Content:
So this is the first item in the list, second item in the list, third item, and fourth item in the list.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Implementation Step  

Content:
So this order matters because when the encryption happens, at first it uses this to encrypt and then it could use any of these to decrypt, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
So always encryption happens with this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 111
Type: Implementation Step  

Content:
So if identity provider, which has no encryption is the first one, then there's no encryption enabled at all.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
So that's how it works.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Implementation Step  

Content:
So if this is the first one, that means this is what is going to be used for encryption.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
And since it's identity, it's not going to encrypt anything at all.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Best Practice  

Content:
So if you really want to encrypt the data in etcd, then one of these should be at the top.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Implementation Step  

Content:
Okay, whatever is the first one is what's going to be used for encryption.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
So let's just do this real quick.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 118
Type: Implementation Step  

Content:
So we're gonna create a very simple version of this file, which is this, and this, as you can see, we have specified that all the secrets are gonna be encrypted and we're gonna use the aescbc encryption provider.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
And as you can see, identity is at the bottom.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Implementation Step  

Content:
So the first one is aescbc, so this is what is going to be used for encryption.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
Now, this requires a secret object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
So we could generate a 32-byte random key using this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Implementation Step  

Content:
I'm just gonna copy this, I'm gonna get that key first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 124
Type: Concept  

Content:
So that's what our key is going to be.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Implementation Step  

Content:
Then I'm gonna copy this and create encryption object file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 126
Type: Best Practice  

Content:
So I'll call it enc.yaml and I'm gonna paste this, okay, should have copied the secret value first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
I'm gonna copy this and I'm gonna go here and replace the secret object here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 128
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 129
Type: Concept  

Content:
Okay, so that's that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 130
Type: Concept  

Content:
So now I have the encryption configuration file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 131
Type: Concept  

Content:
It's currently in my home directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 132
Type: Concept  

Content:
Now all I need to do is go and edit this file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 133
Type: Implementation Step  

Content:
So that's the next step shown here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 134
Type: Implementation Step  

Content:
So in the kube-apiserver, I'm gonna add this line to point to the encryption file that I just created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Implementation Step  

Content:
Then, of course, we need to, since the file is created locally, I have to mount it inside, so I'm gonna use volumes and volume mount.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Implementation Step  

Content:
If you have not gone through the volumes and volume mounts yet, then you might want to take a look at that and come back.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Concept  

Content:
But this is pretty straightforward.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 138
Type: Concept  

Content:
So here you have the directory, the local directory, and that's on my control panel node here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Concept  

Content:
And this directory is gonna be mapped to this path within the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 140
Type: Concept  

Content:
So anything that's available here is gonna be available here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Concept  

Content:
That's it, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 142
Type: Implementation Step  

Content:
So first, I'm gonna create this local directory so that I can put my file there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Concept  

Content:
Okay, I'm gonna move my encryption file from here to that local directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
Make sure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
Yup, so I have the file there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Implementation Step  

Content:
So now I'm gonna edit the kube-apiserver manifest file and then make these changes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Implementation Step  

Content:
Okay, so that's the next step.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
So I'm gonna go into etc/kubernetes/manifests /kube-apiserver.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Implementation Step  

Content:
And the first thing that I'm gonna do is I'm going to add this line.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Concept  

Content:
So this is what tells where the encryption configuration file is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 151
Type: Implementation Step  

Content:
So that's the first step.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 152
Type: Implementation Step  

Content:
And then I'm gonna go down.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 153
Type: Concept  

Content:
So I have two things.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 154
Type: Concept  

Content:
I have volume mount.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
So this is inside my volume, inside the pod where it is gonna be mounted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Concept  

Content:
So I'm gonna copy this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 157
Type: Concept  

Content:
So the directory, the local directory is gonna be mounted into this path.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 158
Type: Implementation Step  

Content:
So that's the first step.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 159
Type: Implementation Step  

Content:
And then below under mount, I'm going to specify the location of my local directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 160
Type: Concept  

Content:
Okay, so this is how it works on my local host, the etc/kubernetes/enc directory is going to be mapped to the etc/kubernetes/enc directory inside the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 161
Type: Implementation Step  

Content:
And then, so since my enc.yaml file is available locally, that file is gonna be available inside.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Concept  

Content:
And that's it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 163
Type: Concept  

Content:
Okay, let me save that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 164
Type: Best Practice  

Content:
So now that I've saved and made changes to this file, the kube-apiserver should be restarting.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 165
Type: Concept  

Content:
So let's just give it a few seconds.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 166
Type: Concept  

Content:
Let's see.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 167
Type: Concept  

Content:
Okay, so this is now, it's now gone, so I'm gonna wait for it to come back.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 168
Type: Concept  

Content:
Waiting.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
And if you wanna see the status of the kube-apiserver, since we are using containerd, so you could use the crictl command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 170
Type: Concept  

Content:
So you could do the crictl pods to see.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 171
Type: Concept  

Content:
It's come up, okay, so it looks like it's ready three seconds ago.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 172
Type: Concept  

Content:
Just gonna do, yup, so it's back.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 173
Type: Concept  

Content:
Okay, so now let's do a ps aux and grep for kube-apiserver.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 174
Type: Concept  

Content:
And let's see if it has, just to confirm if it has the encryption.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 175
Type: Implementation Step  

Content:
Yeah, so it looks like it has the encryption provider configured.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 176
Type: Concept  

Content:
Okay, so that's good.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 177
Type: Implementation Step  

Content:
Now what we're going to do is we're going to create another secrets file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 178
Type: Implementation Step  

Content:
So we're going to create a secret object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 179
Type: Implementation Step  

Content:
So we're gonna do a kubectl create secret generic.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 180
Type: Implementation Step  

Content:
Okay, and we are going to, let's pick this, and this time we'll just create the second one, which is key2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 181
Type: Concept  

Content:
So you have key2 and it's called, the value is topsecret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 182
Type: Implementation Step  

Content:
Create that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 183
Type: Concept  

Content:
My secret already exists.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 184
Type: Concept  

Content:
I'm gonna say my-secret-2 maybe.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 185
Type: Concept  

Content:
Yup.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 186
Type: Concept  

Content:
Okay, so I now have two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 187
Type: Implementation Step  

Content:
This is the first one I created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 188
Type: Implementation Step  

Content:
This is the second one I just created after encryption was enabled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 189
Type: Architecture  

Content:
So I'm gonna go and run the same command as I did previously to check the status of that within etcd So run this and the name is my-secret-2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 190
Type: Concept  

Content:
Okay, and as you can see, I can no longer see the topsecret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 191
Type: Concept  

Content:
So the value was topsecret and no longer see that here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 192
Type: Concept  

Content:
That means encryption is enabled.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 193
Type: Concept  

Content:
Okay, and if I do the same for the old one, I still see the supersecret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 194
Type: Implementation Step  

Content:
Now this is because after encryption is enabled, only things that you create newly will be encrypted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 195
Type: Concept  

Content:
Everything that existed previously won't be re-encrypted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 196
Type: Implementation Step  

Content:
But if you update an existing configuration, then that will be re-encrypted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 197
Type: Implementation Step  

Content:
So one other thing that you have here is to ensure all secrets are encrypted and what this is doing is basically you're getting the secrets and then just replacing them with the same JSON file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 198
Type: Concept  

Content:
So essentially, you're just updating the objects with the same data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 199
Type: Concept  

Content:
So I'm just gonna do that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 200
Type: Concept  

Content:
So that's done.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 201
Type: Concept  

Content:
And if I run the same command again, I see that I can no longer see the supersecret.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 202
Type: Concept  

Content:
All right, so that's basically encrypting secret data at rest using one of these encryption algorithms.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 203
Type: Implementation Step  

Content:
Right, thank you very much and I'll see you in the next one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 112_Demo_ Encrypting Secret Data at Rest
- File: 112_Demo_ Encrypting Secret Data at Rest.txt
- Topic: Demo_ Encrypting Secret Data at Rest
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
