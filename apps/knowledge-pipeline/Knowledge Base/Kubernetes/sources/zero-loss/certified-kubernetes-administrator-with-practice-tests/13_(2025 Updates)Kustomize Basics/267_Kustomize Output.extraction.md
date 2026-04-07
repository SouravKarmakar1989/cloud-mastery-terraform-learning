# Extraction: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 267_Kustomize Output

---

## Entry 1
Type: Concept  

Content:
(bright music) Instructor: In the last lecture, we learned about the kustomize build command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
And we learned that when we run this command, it's going to take all of our resources, it's going to apply the all...

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
All the necessary transformations, and then it's going to spit out the final configs onto our console.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Warning/Pitfall  

Content:
And what's important to understand is that we don't actually deploy or apply any of these configs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Implementation Step  

Content:
So if you log into your Kubernetes cluster and you run a kubectl get pods, or get deployments, or get services, you'll see that nothing was created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
So you might be thinking, well, "How exactly do we apply these configs?" We're making use of this awesome utility called kustomize, but we can't actually apply it to our Kubernetes cluster.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
Well, the command that you actually have to run, to run kustomize, build all the configs and then apply those configs is this following command right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
It's pretty long, but let me explain what it does.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Concept  

Content:
So when you run this command, it's going to make use of the Linux pipe utility.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Concept  

Content:
And this isn't something that's specific to Kubernetes or kustomize.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
This is a feature of Linux, or really any bash or shell.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
And so what this pipe utility does is it takes the output of the first command, which is the kustomize build, k8s or whatever to the is to the left of the pipe utility.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
And it redirects the output of first command into the input of the second command, which is the command to the right of the pipe utility.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
So we're basically running the traditional kubectl apply -f, but we're applying a file that comes from the output of the first command, which is the kustomize build k8s command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Implementation Step  

Content:
So that's all it's doing is taking the output of one command and applying it as the input of the other command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
And so that allows us to make use of the usual kubectl apply, and that creates our nginx deployment as well as the nginx service.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
And if you want to take a look at how to do this natively with just the kubectl tool, you can do kubectl apply, and then you do a -k instead of a -f, and then you provide the directory where the customization .YAML file exists.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
That's how we apply these resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Now let's take a look at how we can delete resources using kustomize.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
When it comes to deleting, it's almost identical to creating, we just swap out the word apply with delete.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So the command that we're gonna run is kustomize build k8.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
We use the same pipe utility and we do kubectl delete instead of apply -f.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
And that's going to delete the two resources that we had created in the previous slide.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Implementation Step  

Content:
And if you want to see how to do this natively with kubectl, you just do kubectl delete, and then use the -k flag.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So the -k flag basically means kustomize in this case.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 267_Kustomize Output
- File: 267_Kustomize Output.txt
- Topic: Kustomize Output
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
