# Extraction: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 272_Common Transformers

---

## Entry 1
Type: Concept  

Content:
(cheerful piano music) Instructor: Now let's take a look at how we can use Kustomize to modify or transform our Kubernetes configs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
And the way we do this is through something called Kustomize Transformers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
And Kustomize has several different transformers built in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
You can even create your own custom transformers.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
But in this lecture, we're gonna focus on a specific subgroup of transformers called Common Transformations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Troubleshooting  

Content:
And before we even go over what that is and what they do, let's take a look at the issue they're trying to address first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Exam Tip  

Content:
In this example, we have our deployment.yaml file and a service.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Concept  

Content:
So pretty straightforward.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Implementation Step  

Content:
And let's say that we want to apply some common configuration across all of our yaml files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
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
So we want all of our Kubernetes resources to have some common configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Troubleshooting  

Content:
Well, let's say that we want to specifically add a label in this case, so something like org KodeKloud, or maybe we wanna go into all of our Kubernetes objects and add a specific prefix or suffix to the name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
So maybe we wanna append the word -dev to the end of our name, and we'll do the same thing across all of our Kubernetes configs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Now, we can go into each one of our yaml files and add these in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
But keep in mind, in a production environment, you're going to have significantly more than just two yaml files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Troubleshooting  

Content:
And so doing this by hand is not a scalable solution, and it's gonna be very time-consuming and it's going to lead to a lot of errors.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Concept  

Content:
And so this is why we have these common transformations in Kustomize.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 17
Type: Concept  

Content:
What they do is they allow us to make these common configuration changes across all of our Kubernetes resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Implementation Step  

Content:
So let's go over some of the common transformations that we can apply.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
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
So we have the commonLabel transformation, and we just kind of saw what that does.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Concept  

Content:
That basically just adds a common label to all of your Kubernetes resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Troubleshooting  

Content:
We also have the namePrefix and Suffix transformation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Troubleshooting  

Content:
This is going to allow you to add a prefix or suffix to the names of all of your Kubernetes resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Concept  

Content:
We've also got one for Namespace, so you can put all of your Kubernetes resources under a specific namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 24
Type: Concept  

Content:
And we also have commonAnnotations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 25
Type: Implementation Step  

Content:
So if you wanna add some sort of metadata, some annotation to all of your Kubernetes resources, you can use the commonAnnotation transformation to apply it across the board.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So let's take a look at these transformers in action.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Concept  

Content:
We'll start off with the commonLabel one, it's the simplest one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So let's say we wanna add a label to all of our Kubernetes resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Implementation Step  

Content:
Well, we would go into our Kustomization.yaml file, and just add the commonLabel property and then specify the labels that you wanna add, and that's gonna go ahead and add this to all of your Kubernetes resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
Or more specifically, it's going to add it to all of the resources that are being imported by this specific Kustomization.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Concept  

Content:
Now let's take a look at the Namespace Transformer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 32
Type: Concept  

Content:
So the Namespace Transformer is just going to put all of your Kubernetes resources under a specific namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Concept  

Content:
To do that, it's very simple.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Implementation Step  

Content:
You just do namespace, then the name of the namespace, and then that's going to get applied to all of your Kubernetes resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Troubleshooting  

Content:
For the Prefix/Suffix Transformer, we can add in a specific prefix or suffix by providing the name prefix or the name suffix properties.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Troubleshooting  

Content:
And that's gonna map to the prefix of the name as well as the suffix of the name as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 37
Type: Concept  

Content:
And for the last common transformation, we have the annotation transformation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Implementation Step  

Content:
So if you wanna add a specific annotation to all of your Kubernetes resources, you could just specify commonAnnotations in the Kustomization.yaml file, and then specify your desired annotation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
And that's going to get added to all of your Kubernetes objects.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 272_Common Transformers
- File: 272_Common Transformers.txt
- Topic: Common Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
