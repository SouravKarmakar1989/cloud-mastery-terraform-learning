# Extraction: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 019_Pods with YAML

---

## Entry 1
Type: Concept  

Content:
In this lecture we will talk about creating a pod using a YAML based configuration file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 2
Type: Concept  

Content:
In the previous lecture we learned about YAML files in general.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 3
Type: Concept  

Content:
Now we will learn how to develop YAML files specifically for Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 4
Type: Implementation Step  

Content:
Kubernetes uses YAML files as inputs for the creation of objects such as pods, replicas, deployments, services, etc. all of these follow a similar structure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 5
Type: Concept  

Content:
A Kubernetes definition file always contains four top level fields the API version, kind, metadata, and spec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 6
Type: Concept  

Content:
These are the top level or root level properties.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 7
Type: Concept  

Content:
These are also required fields, so you must have them in your configuration file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 8
Type: Concept  

Content:
Let us look at each one of them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 9
Type: Implementation Step  

Content:
The first one is the API version.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 10
Type: Implementation Step  

Content:
This is the version of the Kubernetes API we are using to create the object, depending on what we are trying to create.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
We must use the right API version for now since we are working on pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
We will set the API version as v1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Few other possible values for this field are apps v1, beta, extensions v1, beta, etc. we will see what these are for later in this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
Next is the kind.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 15
Type: Implementation Step  

Content:
The kind refers to the type of object we are trying to create, which in this case happens to be a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 16
Type: Concept  

Content:
So we will set it as pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 17
Type: Implementation Step  

Content:
Some other possible values here could be replica set or deployment or service, which is what you see in the kind field in the table on the right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 18
Type: Implementation Step  

Content:
The next is metadata.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 19
Type: Implementation Step  

Content:
The metadata is data about the object like its name, labels, etc. as you can see, unlike the first two where you have specified a string value, this is in the form of a dictionary.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 20
Type: Concept  

Content:
So everything under metadata is intended to the right a little bit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 21
Type: Concept  

Content:
And so names and labels are children of metadata.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 22
Type: Best Practice  

Content:
The number of spaces before the two properties, name and labels doesn't matter, but they should be the same as they are siblings.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
In this case, labels has more spaces on the left than name, and so it is now a child of the name property instead of a sibling, which is incorrect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 24
Type: Concept  

Content:
Also, the two properties must have more spaces than its parent, which is metadata, so that it's intended to the right a little bit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
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
In this case, all three of them have the same number of spaces before them, and so they are all siblings, which is not correct under metadata.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 26
Type: Concept  

Content:
The name is a string value.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So you can name your pod my app pod and the labels is a dictionary.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So labels is a dictionary within the metadata dictionary.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 29
Type: Concept  

Content:
And it can have any key and value pairs as you wish.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 30
Type: Concept  

Content:
For now I have added a label app with the value My app.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 31
Type: Concept  

Content:
Similarly, you could add other labels as you see fit, which will help you identify these objects at a later point in time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 32
Type: Exam Tip  

Content:
Say, for example, there are hundreds of pods running a front end application and hundreds of pods running a back end application or a database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
It will be difficult for you to group these pods once they are deployed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 34
Type: Concept  

Content:
If you label them now as front end, back end, or database, you will be able to filter the pods based on this label at a later point in time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 35
Type: Concept  

Content:
It's important to note that under metadata, you can only specify name or labels or anything else that Kubernetes expects to be under metadata.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 36
Type: Concept  

Content:
You cannot add any other property as you wish under this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
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
However, under labels you can have any kind of key or value pairs as you see fit.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 38
Type: Concept  

Content:
So it's important to understand what each of these parameters expect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 39
Type: Implementation Step  

Content:
So far, we have only mentioned the type and name of the object we need to create, which happens to be a pod with a name Myapp pod, but we haven't really specified the Divide the container or image we need in the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
The last section in the configuration file is the specification section, which is written as spec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 41
Type: Implementation Step  

Content:
Depending on the object we are going to create.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 42
Type: Concept  

Content:
This is where we would provide additional information to Kubernetes pertaining to that object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 43
Type: Concept  

Content:
This is going to be different for different objects.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 44
Type: Concept  

Content:
So it's important to understand or refer to the documentation section to get the right format for each.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 45
Type: Concept  

Content:
Since we are only creating a pod with a single container in it, it is easy.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 46
Type: Concept  

Content:
Spec is a dictionary, so add a property under it called containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 47
Type: Concept  

Content:
Containers is a list or an array.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 48
Type: Exam Tip  

Content:
The reason this property is a list is because the pods can have multiple containers within them, as we learned in the lecture earlier.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 49
Type: Concept  

Content:
In this case though, we will only add a single item in the list since we plan to have only a single container in the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 50
Type: Implementation Step  

Content:
The dash right before the name indicates that this is the first item in the list.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 51
Type: Concept  

Content:
The item in the list is a dictionary, so add a name and image property.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 52
Type: Concept  

Content:
The value for image is nginx, which is the name of the Docker image in the Docker repository.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 53
Type: Implementation Step  

Content:
Once the file is created, run the command kubectl create dash f followed by the file name, which is pod definition YAML and Kubernetes creates the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
So to summarize, remember the four top level properties API version kind, metadata and spec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 55
Type: Implementation Step  

Content:
Then start by adding values to those depending on the object you are going to create.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 56
Type: Implementation Step  

Content:
Once we create the pod, how do you see it?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
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
Use the kubectl get pods command to see a list of pods available.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 58
Type: Concept  

Content:
In this case it's just one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
To see detailed information about the pod, run the kubectl describe pod command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 60
Type: Implementation Step  

Content:
This will tell you information about the pod when it was created, what labels are assigned to it, what Docker containers are part of it, and the events associated with that pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 019_Pods with YAML
- File: 019_Pods with YAML.txt
- Topic: Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
