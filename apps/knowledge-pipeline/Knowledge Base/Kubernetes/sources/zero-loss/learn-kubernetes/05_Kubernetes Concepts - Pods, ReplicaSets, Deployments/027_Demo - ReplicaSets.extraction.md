# Extraction: learn-kubernetes / 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments / 027_Demo - ReplicaSets

---

## Entry 1
Type: Implementation Step  

Content:
In this demo, we're going to create a replica sets based on the pod definition file that we created earlier.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So in the last demo we created a pod using YAML.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So here what I've done is I've created a directory called pods under the Kubernetes for beginners directory, which is my project directory.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
And here are the two files that we created earlier for pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
So now let us create a new directory for replica sets called replica sets.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
And inside this directory let's create a new file called replica set dot YAML.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So let's start with the API version.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Best Practice  

Content:
And if you remember from the lecture the the version for replica set should be apps slash v1.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
And next we'll use kind and we'll use the suggestions available.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
And here we are going to make use of replica sets.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
The next root element is the same as that of pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So we are going to add metadata and the name of the replica set which would be my dash my App Dash replica set, and we'll assign a label for our replica set as well.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
So the key would be app and the value will be my app.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
Now I'm going to set the last, um, the last property, which is, uh, spec.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
And as you can see for replica set, uh, the Visual Studio code extension, the ML extension is, uh, automatically understood that the object is replica set and that it needs a selector.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
So it has already created the selector field for us.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So we'll just have to fill it in.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
So here we are.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
And we have two possible options.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
It can be uh, match expressions or match labels.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So let's use the match label option.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And here we're going to use the same label that we used for the pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Um we'll tie the pods to the replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So let us use the same label that we used before while creating pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
So for this let me first open the, uh, the nginx pod definition file. on the right side of the screen, so you can just right click and open it on the right side.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
The labels we used there were the env label which is set to production.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So I'm just going to copy that over.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
Now the next property is replicas.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Exam Tip  

Content:
So for this example let's make use of three replicas.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Implementation Step  

Content:
And then the next mandatory value that we need to add here is the template.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
So for template we can make use of the pod definition file that we created earlier and copy the template.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So I'm just going to copy this whole section here from metadata and paste it under the templates section.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So now as soon as we paste the the contents we see that the and the indentation is all out of order.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Troubleshooting  

Content:
So in order to fix this, um, one easy way to do it is to select the, the whole section that we just pasted, except for the the first line and then press tab twice and then or until, um, you know, um, it fixes, uh, the, the, the indentation.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
Right now, some editors, um, are intelligent enough to automatically correct that for you.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
Right.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
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
However, this, uh, this one doesn't, um, but I know that there's an extension available, uh, for this.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Um, so if you're interested in that, um, check it out.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Um, I think it's called, um, paste and indent or something like that.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 41
Type: Troubleshooting  

Content:
So for now, we will just stick to the manual way of fixing it.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Troubleshooting  

Content:
Um, so, uh, now the the format is corrected and there are no more errors in the file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So one thing to note here is the labels used for the pod and the labels used under the selector at the top.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So they have to be the same, right?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
The label used at the top of the replica set itself doesn't really matter.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
The it is the the two labels, um, that are set on the pod and then the one set on the selector that matters.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
That's what ties them together.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So they have to be the same.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So say we change the labels on the pod template to something else like app and set it to my app.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
Then we must change it at the top as well to use the same.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Right.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
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
So now, um, we're done with the file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 54
Type: Concept  

Content:
So now that we have the replica set definition file ready, um, let's go back to the terminal.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
And here in the project root directory we see that we have the new directory called replica sets.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
And underneath that there is the replica set YAML definition file that we just created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Implementation Step  

Content:
So let's quickly check to make sure that the file has the contents we created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
So I'm just going to um use cat to view the contents of the file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So it has everything as expected.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
So now let me clear the screen and we're going to create this replica set using the kubectl create command with the dash f option.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
So as soon as the replica set is created uh let's check the status using kubectl uh, get replica set command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
And we noticed that there is, uh, one replica set which is, uh, created already.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
The desired number of replicas is equal to three, and the current Android number of replicas are three as well.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
And it was created, uh, about eight seconds ago.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
So we can further inspect the status of the pods by running the kubectl get pods command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
And we notice here that we have three replicas or three pods for the replica set we created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And all of the pods have a unique name.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
But you will notice that the name of the pod begins with the name of the replica set, which is Myapp replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
Uh, so that way you can look at the pod, um, any pod, and you can identify that if it is a standalone pod or a pod that is part of a replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
Now all of them are in a running state.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So we said that a replica set ensures that a sufficient number of replicas or pods are available at all times.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
Now let's see what happens if we were to delete one of these pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
So let's go back and copy one of the pod names.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
So in this case I'm copying this one here that has the name that ends with um a10 XXL.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
So I'm going to use the kubectl delete pod command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
And I'm going to paste the pod name here.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Now whenever you delete a pod, it takes a few seconds for the pod to fully terminate.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
So just give it a few seconds for the pod to fully terminate.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
So once we get the prompt back, let's check the status of the pods again.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
But you'll notice that the replica set still has three pods running.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Implementation Step  

Content:
And you'll notice that, uh, one of the pods, uh, was, uh, just created 15 seconds ago.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
And you'll notice that the name of the older pod that that ended with the A10, XXL has been deleted.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Implementation Step  

Content:
And a new pod with the name with a different name has been created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
So that's the, uh, the replica sets, ensuring that sufficient number of pods are always available on the cluster.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
Now, if you run the kubectl describe replica set command for the new replica set, um, we will see that the desired number of replicas history.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
And here we see more information about replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
Just like what we saw with the um kubectl describe pod command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
Um, so here we see the, the name of the replica set the selectors, the label for the replica sets itself.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
If you scroll down, you'll see the labels that the selector above makes use of, which is the labels on the pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
And we also see the nginx container definition.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
And if you scroll down below we see the events.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Implementation Step  

Content:
So initially um, when we created the replica set it actually came up with three replicas.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Implementation Step  

Content:
But then we deleted one of the replicas and then it spun up one additional replica for it to maintain that desired number.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
Right.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 95
Type: Concept  

Content:
And you see all of that in the history of events here.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Troubleshooting  

Content:
So this is, um, a handy tool and command if you would like to inspect, um, what happened to a replica set in case, you know, you're troubleshooting something or you're just looking for more information on what's happening with the replica set, um, etc..

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
So, so we said that, um, a replica set ensures that a minimum number of replicas are available all the time.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
But what if there are more number of replicas than what's required?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
So let's try to, uh, let's try something else.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Implementation Step  

Content:
Let's try to create a new pod by making use of the the same label that the replica set selector uses, uh, which is, um, the app set to my app.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
And to do this, let's go back to our pod definition file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Implementation Step  

Content:
And so here, um, I have the nginx dot YAML file that we created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Implementation Step  

Content:
And I will notice that we have a pod template which tries to create a pod by the name nginx two.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
But we also, uh, but we have now changed its label to the same label as the pod definition template used in our replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Implementation Step  

Content:
So now let's create the pod directly and not through the replica set, but just, you know, directly the pod like as we have done before.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Concept  

Content:
And we'll see what happens.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Implementation Step  

Content:
Um, when we create a new pod outside of the replica set, uh, but one that has the same labels that the replica set selector uses.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Implementation Step  

Content:
So, uh, before doing that, let me run the kubectl get pods command, and I see that there is only, uh, the three pods that were created by the replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Implementation Step  

Content:
And so now I'm going to use the kubectl create command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
And with the dash f option and I'll specify the nginx dot YAML file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Implementation Step  

Content:
And you will see that the nginx dash two pod has been created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
But if I run the kubectl get pods command now, I will see that the status of that pod is in a terminating state already.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
The replica set is terminating.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Implementation Step  

Content:
The new pod that we just created is not allowing more pods with the same labels than the number of replicas configured on the replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Implementation Step  

Content:
So if we run the kubectl describe command now, we'll see that at the bottom under the events section of the output of uh describe command, the replica set controller, um, deletes the new nginx two pod that we just created.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Best Practice  

Content:
So now if I go back and run the kubectl get pods command, I see that it is under terminating state, and soon, um, it should go away from it from the list altogether.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
Okay.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 118
Type: Concept  

Content:
So now let's see how to update a replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
So what, What if we want to change the number of replicas to, say, four instead of the current three?

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Concept  

Content:
Say, for instance, we're trying to scale up our application.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Concept  

Content:
So for this we must edit the replica set definition file and update its replicas.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
Count to four.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
For this, we will make use of a new command called kubectl edit replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Concept  

Content:
And we will provide the name of the replica set, which is my replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
And now when we run this command, we see that it opens up the running configuration of the replica set in a text editor in a text format.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
In this case, it opens up in vim.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Implementation Step  

Content:
So note that this is not the actual file that we used that we created at the beginning of this demo.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Implementation Step  

Content:
This is a temporary file that that's created by Kubernetes in memory, to allow us to edit the configuration of an existing object on Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Concept  

Content:
And that's why you'll see a lot of additional fields in this file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
Other than the details that you provided.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
So changes made to this file are directly applied on the running configuration on the cluster as soon as the file is saved.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Concept  

Content:
So you must be very careful with the changes that you're making here.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
So now if I scroll down all the way to the the spec section which is over here, and we can see the, the running configuration and the current number of replicas, which is set to three.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
I can change this to scale it up by another pod.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Implementation Step  

Content:
So for in this case and then I will save and exit from the editor.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Best Practice  

Content:
Now it should now spin up a new pod in addition to the three that we already had to match the new number of replicas that we specified.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Concept  

Content:
So if we run the kubectl get pods command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Concept  

Content:
Now we see that there is a new pod which was spun up six seconds ago, and we can use the same approach to scale down as well.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Concept  

Content:
And there's also a command available to scale the number of replicas, um, without having to go in and edit, um, the definition file.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
And that is using the kubectl scale replica set command.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Concept  

Content:
So we will provide the name of the replica set.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
And we will set the number of replicas for it to scale to two.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Concept  

Content:
So you could specify a number which is greater or less than the current number of replicas.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
And uh note uh, take a note of the double dashes before the replicas option.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Concept  

Content:
So if I run the kubectl get pods command again, we will see that the replica set is now scaling down to two replicas by terminating two of the pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Concept  

Content:
Well, so let's wait for these two replicas, um, to be terminated.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Concept  

Content:
And there you go.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 148
Type: Concept  

Content:
And now we just have two pods.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Concept  

Content:
Well, that's it for this demo.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - learn-kubernetes

---

## Entry 150
Type: Implementation Step  

Content:
I will see you in the next.

Source:
- Course: learn-kubernetes
- Module: 05_Kubernetes Concepts - Pods, ReplicaSets, Deployments
- Lecture: 027_Demo - ReplicaSets
- File: 027_Demo - ReplicaSets.txt
- Topic: Demo - ReplicaSets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---
