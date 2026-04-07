# Extraction: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 046_Kubectl Apply Command

---

## Entry 1
Type: Implementation Step  

Content:
In this lecture we will understand more about how the kubectl apply command works.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
In the previous lecture, we saw how a kubectl apply command can be used to manage objects in a declarative way.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
In this lecture, we will see a bit more about how the command works.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
Internally, the apply command takes into consideration the local configuration file, a live object definition on Kubernetes, and the last applied configuration before making a decision on what changes are to be made.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
So when you run the apply command, if the object does not already exist, the object is created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
When the object is created, an object configuration similar to what we created locally is created within Kubernetes, but with additional fields to store status of the object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
This is the live configuration of the object on the Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
This is how Kubernetes internally stores information about an object, no matter what approach you use to create the object, but when you use the kubectl apply command to create an object, it does something a bit more.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
The YAML version of the local object configuration file we wrote is converted to a JSON format, and it is then stored as the last applied configuration going forward for any updates to the object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Comparison  

Content:
All the three are compared to identify what changes are to be made on the live object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Exam Tip  

Content:
For example, say when the nginx image is updated to 1.19 in our local file and we run the kubectl apply command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Comparison  

Content:
This value is compared with the value in the live configuration, and if there is a difference, the live configuration is updated with the new value.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
After any change, the last applied JSON format is always updated to the latest so that it's always up to date.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
So why do we then really need the last applied configuration?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 16
Type: Exam Tip  

Content:
So if a field was deleted say for example, the type label was deleted.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
And now when we run the kubectl apply command, we see that the last applied configuration had a label, but it's not present in the local configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
This means that the field needs to be removed from the live configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
So if a field was present in the live configuration and not present in the local or the last applied configuration, then it will be left as is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
But if a field is missing from the local file and it is present in the last applied configuration, so that means that in the previous step or whenever the last time we run the kubectl apply command, that particular field was there and it is now being removed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So the last applied configuration helps us figure out what fields have been removed from the local file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 23
Type: Implementation Step  

Content:
So that field is then removed from the actual live configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
What we just discussed is available for your reference in detail in the Kubernetes document pages.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So follow this link to view that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
Okay.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 27
Type: Concept  

Content:
So we saw the three sets of files, and we know that the local file is what's stored on our local system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
The live object configuration is in the Kubernetes memory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
But where is this JSON file that has the last applied configuration stored?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Well, it's stored on the live object configuration on the Kubernetes cluster itself as an annotation named a last applied configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
So remember that this is only done when you use the apply command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Warning/Pitfall  

Content:
The create or replace commands do not store the last applied configuration like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So you must bear in mind not to mix the imperative and declarative approaches while managing the Kubernetes objects.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Comparison  

Content:
So once you use the apply command going forward, whenever a change is made, the apply command compares all three sections the local pod definition file, the live object configuration, and the last applied configuration stored within the live object configuration file for deciding what changes are to be made to the live configuration, similar to what we saw in the previous slide.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Well, that's it for this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 36
Type: Implementation Step  

Content:
I will see you in the next.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 046_Kubectl Apply Command
- File: 046_Kubectl Apply Command.txt
- Topic: Kubectl Apply Command
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
