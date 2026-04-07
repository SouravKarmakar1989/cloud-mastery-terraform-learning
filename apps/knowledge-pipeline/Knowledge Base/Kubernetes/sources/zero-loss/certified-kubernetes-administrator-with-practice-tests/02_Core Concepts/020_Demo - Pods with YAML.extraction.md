# Extraction: certified-kubernetes-administrator-with-practice-tests / 02_Core Concepts / 020_Demo - Pods with YAML

---

## Entry 1
Type: Implementation Step  

Content:
In this demo, we're going to create a pod again.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 2
Type: Implementation Step  

Content:
But this time, instead of making use of the cube cuddle run command, we are going to create it using a YAML definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 3
Type: Implementation Step  

Content:
So our goal is to create a YAML file with the pod specifications in it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 4
Type: Concept  

Content:
Now there are many ways to do it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 5
Type: Implementation Step  

Content:
You could just create one in any text editor.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 6
Type: Concept  

Content:
So if you're on windows you could just use notepad.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 7
Type: Concept  

Content:
Or if you're on Linux as I am, just use a native editor like VI or vim, an editor with support for YAML language would be very helpful, um, in getting the syntax right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 8
Type: Concept  

Content:
So instead of notepad, it's a tool like Notepad Plus plus in Windows or vim in Linux would be better.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 9
Type: Exam Tip  

Content:
Now I'll talk more about tips and tricks and other tools and ideas that can help with this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 10
Type: Concept  

Content:
Um, more in the upcoming lectures.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 11
Type: Concept  

Content:
For now, let's take, uh, with the very basic, uh, form of creating a YAML file using VI editor on my Linux system.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
So here I am on my Linux terminal, and I'm going to make use of vim text based editor to create this Pod definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So the name of the file I'm going to call as pod YAML.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 14
Type: Concept  

Content:
And as seen in the lecture we will start off with the four, uh root level elements or the root level properties that we, that we saw which are API version kind metadata and spec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So we know that the value of for API version for a pod is V1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 16
Type: Concept  

Content:
Uh, the kind is uh, pod with a capital P, so it is case sensitive.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 17
Type: Concept  

Content:
So, uh, that's important.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
And metadata is a dictionary and it can have values where we define the name of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So I'm going to use name as nginx.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
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
And we can have uh additional uh labels that we can specify under it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
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
So labels again is also a dictionary.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 22
Type: Concept  

Content:
And it can have as many labels as you want under it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 23
Type: Concept  

Content:
So we can specify a label which is a key value pair, such as a app and nginx.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And we can also add more labels like tier uh and set it to front end.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 25
Type: Concept  

Content:
Anything that can help us group this particular pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 26
Type: Implementation Step  

Content:
Next um, we have to define the spec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 27
Type: Concept  

Content:
So spec is also a dictionary and it has an object called containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 28
Type: Concept  

Content:
So before we move on to that, uh, we have to make sure that we get the indentation right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 29
Type: Exam Tip  

Content:
For example, the app and tier are children of the labels property.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 30
Type: Concept  

Content:
So it has to be in the same, uh, kind of vertical line here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
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
And similarly under metadata you have name and labels which are the children of metadata.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So they both have to be, uh, within the same vertical line.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Uh, so you have to make sure that the spacing is correct.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 34
Type: Best Practice  

Content:
Typically it would be two spaces or a tab, but it is recommended not to use tabs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 35
Type: Concept  

Content:
So always stick to two spaces and and stick to that throughout.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 36
Type: Implementation Step  

Content:
So the next thing that we're going to configure is the container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 37
Type: Concept  

Content:
So a container is a list of objects.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 38
Type: Implementation Step  

Content:
Now we first give it a name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 39
Type: Concept  

Content:
Note that this is the name of the container within the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 40
Type: Exam Tip  

Content:
And there could be multiple containers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 41
Type: Concept  

Content:
And each can have a different name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 42
Type: Concept  

Content:
So one container could be named app and another container could be named uh helper.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
Any name that makes sense to you, we're going to use the same name as that of the container image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So we will just name it nginx.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 45
Type: Implementation Step  

Content:
And the second object that we're going to add here is the image name, which is the Docker Hub image name of the container that we're going to create.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So the image name is um again nginx.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
Um if you're using other registries than Docker Hub then make sure to specify the full path, um to that image repository here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Now remember that we can add Additional containers, the pod as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 49
Type: Concept  

Content:
So if you have to do that and we have to declare the secondary element, uh, to the list, which would be the second object in the list.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Exam Tip  

Content:
So here I can, for example, add a BusyBox container using the BusyBox image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
And that would be the second element of the array.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 52
Type: Concept  

Content:
So in this case we're going to stick to one single container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 53
Type: Concept  

Content:
So I'm going to just delete that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 54
Type: Concept  

Content:
And I'm now going to hit escape colon wq to save this file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 55
Type: Implementation Step  

Content:
And we will just use the Cat command to make sure that the file was created with the expected contents.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 56
Type: Concept  

Content:
So make sure the format is correct.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 57
Type: Concept  

Content:
So the name and labels are children of metadata.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 58
Type: Concept  

Content:
And you can see that they are on the same, uh, kind of vertical line.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
And similarly labels have two children which are the two labels app and tier and spec has a list.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
Um, and we are defining it as a list with a hyphen followed by the objects.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 61
Type: Implementation Step  

Content:
So we can make use of the kubectl create command or the kubectl apply command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 62
Type: Implementation Step  

Content:
So the create and apply command kind of works the same.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 63
Type: Concept  

Content:
Um if you're creating a new object right.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 64
Type: Implementation Step  

Content:
You can either use create or you can use apply.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 65
Type: Concept  

Content:
Um it doesn't matter.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 66
Type: Concept  

Content:
Um, and we pass in the uh, file name using the dash f option.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 67
Type: Implementation Step  

Content:
And here we can see that the pod has been created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 68
Type: Concept  

Content:
So let's check the status real quick.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 69
Type: Concept  

Content:
And you can see that it's in container creating state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 70
Type: Implementation Step  

Content:
And then when we check again we see that it's in a running state.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 71
Type: Concept  

Content:
And as before if you want to get more details about the pod, you can always run the kubectl describe command and specify the the name of the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 72
Type: Best Practice  

Content:
And you should get a much more in-depth information about the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 73
Type: Concept  

Content:
Okay, so that's it for this demo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 74
Type: Exam Tip  

Content:
In the next section we will learn some tips and tricks of developing YAML files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
Um, easily using IDE's.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 02_Core Concepts
- Lecture: 020_Demo - Pods with YAML
- File: 020_Demo - Pods with YAML.txt
- Topic: Demo - Pods with YAML
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
