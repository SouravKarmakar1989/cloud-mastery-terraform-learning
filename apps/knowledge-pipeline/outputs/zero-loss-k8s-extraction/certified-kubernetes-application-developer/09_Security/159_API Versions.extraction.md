# Extraction: certified-kubernetes-application-developer / 09_Security / 159_API Versions

---

## Entry 1
Type: Concept  

Content:
Instructor: We will now discuss about API versions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
We talked about APIs and API groups, resources and verbs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
Now we are going to talk about API versions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
We know that everything under APIs are the API groups such as apps, extensions, networking, et cetera.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
And each API group has different versions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Now, what we see here is the V1 version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
When an API group is at V1 that means it is a GA stable version generally available stable version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
The API group may have other versions such as Beta or Alpha as V1 Beta 1 or V1 Alpha 1 respectively.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So what are these different versions?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
What do these each of these versions mean?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
Now Alpha is when an API is first developed and merged to the Kubernetes code base and becomes part of the Kubernetes released for the very first time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
At this stage, the API version has Alpha in its name indicating that it is an Alpha release.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Exam Tip  

Content:
For example, it could be V1 Alpha 1 or V1 Alpha two, et cetera.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
This API group is not enabled by default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Exam Tip  

Content:
For example, at the time of this recording, the API group internal dot API server dot case dot io, which has the resource storage version is only available as V1 Alpha 1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Architecture  

Content:
This means that if you were to create this object now you will have to say in the amul definition file the API version as internal API server dot case dot io/ V1 Alpha 1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
However, this Alpha version is not enabled by default.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
So if you try to create this object you will not be able to do that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
We'll discuss about how to enable a particular API version specifically those in the Alpha version, a few minutes later in this video.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
Now, since this is an Alpha version it may lack end to end tests and may have bugs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
As such, it is not very reliable.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Also, there is no guarantee that this API will be available in the future releases.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
It may be dropped without any notice in future releases.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
As such, this is only really for expert users who are interested in testing and giving early feedback for the API group.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Architecture  

Content:
As of this recording the API groups in Alpha phase are the internal API server dot case dot IO group.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Troubleshooting  

Content:
Now, after some time the Alpha version and once all the major bug are fixed and it has end to end test, it moves to the Beta stage.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
This is where the API version name gets Beta in name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Exam Tip  

Content:
For example, V1 Beta one or V1 Beta two, et cetera.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
The API groups in Beta stage are enabled by default and they have end-to-end tests.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
But since it is not GA, it may still have minor bugs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
However, there is commitment from the project that it may be moved to GA in the future.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
This is for users who are interested in Beta testing and providing feedback for the features.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
As of now, the flow control group is in Beta phase, as as you can see from this chart.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Now, after being in the Beta stage for a few months and with a few releases the API group moves to the GA or stable version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Now, this is when the version number no longer has Alpha or Beta in it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Instead, it is just V1, and it is of course enabled by default in the API group, and it is part of conformance tests and has all the tests written.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Troubleshooting  

Content:
Now, since most bugs are fixed in Alpha and Beta stages in the API group, this API group is highly reliable and it'll be supported and present in many feature releases to come.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
And of course, this is when it is available to all users.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
Now, as you might have noticed most of the API groups such as apps, authentication authorization certificates, coordination, et cetera are GA and stable now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Exam Tip  

Content:
However, if you look at some of them, they have multiple versions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Exam Tip  

Content:
For example, autoscaling has V1, V2, Beta 2, V2, Beta 1, et cetera.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
The node API group has V1 V1 Beta 1 and V1 Alpha versions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
And so why is that and what does that mean?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Exam Tip  

Content:
So an API group can support multiple versions at the same time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Exam Tip  

Content:
For example, the apps group can have..

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
V1 Beta 1 and V1 Alpha 1 all at the same time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
This would mean that you will be able to create the same object using any of these versions in your YAML file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
So say I want to create an nginx dot yaml, I could create it with the API version set to V1 Alpha 1 or V1 Beta 1 or V1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So any of these will work.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Exam Tip  

Content:
But even though there are multiple versions supported at the same time, only one can be the preferred or storage version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
So what is a preferred version?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Exam Tip  

Content:
Now, when you have multiple versions enabled and you run the cuckoo get deployment command which version is the command going to query?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
That's defined by the preferred version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Implementation Step  

Content:
In this case, if V1 is set to the preferred version then that is the command that it will query.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Or when you run the kubectl explain command the version that it returns is the preferred API version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Exam Tip  

Content:
Also, when multiple versions are present, only one version can be the storage version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Architecture  

Content:
This means if any object is created with the API version set to anything other than the storage version, such as V1 Alpha 1 or V1 Beta 1, then those will be converted to the storage version, which is V1 before storing them into the etcd database.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So that's what the preferred and storage versions mean.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Preferred is the default version used when you retrieve information through the API using kubectl get command or something like that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Architecture  

Content:
And the storage version is the version in which an object is stored in etcd respective of the version you have used in the yaml file while creating the object.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Remember, only one can be the preferred or storage version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
And even though the preferred and storage versions are usually the same they can be different.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Warning/Pitfall  

Content:
They don't necessarily have to be the same.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Exam Tip  

Content:
So how do you identify the the preferred version if there are multiple APIs?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
So the preferred version is listed when you list that specific API.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Exam Tip  

Content:
For example, when I list the APIs available for the batch API group, by going to the URL as shown here I see that it has V1 and V1 Beta 1 versions available which are the supported API versions of which the preferred version is V1 as is shown below.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And as of now it is not possible to see which is the storage version of a particular API through an API or a command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Architecture  

Content:
The one way to find that out is by looking at the stored object in etcd itself by querying the etcd database directly.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Architecture  

Content:
Here's a sample command where we are querying the blue deployment object using the etcd kubectl utility using the get command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
And in the output we see the API version to be apps slash V1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Architecture  

Content:
So to enable or disable a specific version you must add it to the runtime config parameter of the Kube API server service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Exam Tip  

Content:
For example, we talked about a number of Alpha APIs earlier and since these APIs are not enabled by default you will not be able to create objects for them.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Operational Insight  

Content:
So if you'd like to try those out what you could do is you could actually add those to the runtime config parameter and the APIs here are comma separated and you would like to enable and specify the APIs that you would like to enable.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Architecture  

Content:
And of course, once you do that you must remember to always restart the API server service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
And that goes to whenever you edit these options.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Best Practice  

Content:
And once done you should be able to use that API and test it out.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Implementation Step  

Content:
Well, that's all for now and I will see you in the next lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 159_API Versions
- File: 159_API Versions.txt
- Topic: API Versions
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
