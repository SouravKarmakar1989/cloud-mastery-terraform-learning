# Extraction: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 274_Transformers Demo

---

## Entry 1
Type: Concept  

Content:
(gentle music) Instructor: So let's take a look at making use of some of these common transformations, as well as the image transformer in a quick demo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
So in this demo, I've got my k8s directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
And within here, I've got a api folder and a db folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
And within the api, I've got the api-depl.yaml file, and then an api-service.yaml file, as well as a kustomization.yaml file within here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
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
And then in the db folder, same thing, I've got a depl, a service, and a config.yaml, as well as a kustomization.yaml file within there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So if we take a look at the kustomization.yaml files in there, they've been set up to import all of the resources within the specific directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 7
Type: Concept  

Content:
So in the kustomization.yaml file within the api directory, I'm importing both of those files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 8
Type: Implementation Step  

Content:
And then if I go inside the db folder one, you can see I'm importing all of the database Kubernetes configs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
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
And then in the parent, or the root kustomization.yaml file, I'm importing api and db.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So I wanna start off by adding a commonLabel to all of the resources here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Implementation Step  

Content:
And so to apply a commonLabel, we would have to go to the root kustomization.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 12
Type: Concept  

Content:
So this is the main one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Implementation Step  

Content:
So this is going to apply it to everything in our Kubernetes environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Implementation Step  

Content:
So if we go here, we're gonna then do a commonLabel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Concept  

Content:
And let's say I want to add the label department, and we'll say engineering.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Well, let's save this and I'm gonna open up the terminal, and let's build out the configs and let's see what happens.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So I'll do a kustomize build k8s, and that's going to look for the root kustomization.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 18
Type: Concept  

Content:
And when it spits it out, let's take a look, just a quick spot check of all of the resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
And let's make sure that the commonLabel that we created, department: engineering, got applied to everything.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So in this case, I've got my ConfigMap here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Concept  

Content:
So we can see that the department was set to engineering.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 22
Type: Concept  

Content:
I've got my API service that's got the department set, I have my db-service, I have my api-dpl.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And just quickly scrolling through, we can see the db-depl as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So everything in our k8s directory got that label applied to it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
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
That includes things in the api folder and then things in the db folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 26
Type: Concept  

Content:
Now I want you to guess what would happen if we had applied an annotation, like we have here, but instead of the root kustomization.yaml file, we put it inside one of these kustomization.yaml files within the subdirectory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
What do you think is gonna happen?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Well, let's take a look.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 29
Type: Concept  

Content:
So here, I'm gonna add a commonLabel.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And for here, I'll just say feature.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
And since we're in the api directory, I'm gonna say the feature and then call it api.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
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
So let's take a look.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 33
Type: Concept  

Content:
I'm gonna go back to the terminal and we're gonna run the same command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 34
Type: Concept  

Content:
And let's take a look at what it spits out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Concept  

Content:
So for the ConfigMap, right, the ConfigMap exists inside the db folder, not inside the api folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 36
Type: Concept  

Content:
The ConfigMap does not have the new label that we assigned.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
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
It's got the department: engineering, but it doesn't have the feature: web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 38
Type: Concept  

Content:
And if we take a look at the api-service, which is in the api directory, we can see that we do now have a label of feature: api.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Implementation Step  

Content:
So it looks like that when you apply it to a kustomization.yaml file within a subdirectory, it's going to only apply it to the resources within this kustomization.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Concept  

Content:
So these two resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So this label gets applied to whatever's in this list right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Implementation Step  

Content:
When we apply it to the root one, this is going to get applied to these resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Concept  

Content:
And since these resources include all of our Kubernetes configs, it's going to get applied globally.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Comparison  

Content:
So that's the difference between applying it inside the root one as well as within the subdirectory one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
And just to get this to match on the database site, let's create a commonLabel for all of the database configs and we'll call it feature: db.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Exam Tip  

Content:
So if we build this now, if we take a look at db-depl as an example, we can see now, we have a feature: db.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Okay, so let's play around with some of the other transformers that we had covered in the previous lecture and let's add all of these resources into a specific namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Implementation Step  

Content:
So I'm gonna go to the root kustomization.yaml file. 'Cause when I apply it here, it's going to apply to everyone.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
And I'll just add namespace, and just give it some arbitrary namespace.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 50
Type: Troubleshooting  

Content:
So maybe, we'll, this will be our debugging environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Best Practice  

Content:
And when the namespace is applied, if we do a build, we should see under everything, so all five of these YAML files, we should see it get applied there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 52
Type: Troubleshooting  

Content:
So for the db side of things, we can see that the namespace was set to debugging.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Troubleshooting  

Content:
For api, we should see that the namespace was set to debugging, so it looks like it was successfully applied to everything.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Troubleshooting  

Content:
So now let's give everything a namePrefix and a nameSuffix.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 55
Type: Concept  

Content:
And I wanna do something specific in this case.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Troubleshooting  

Content:
I want every single object to have a name prefixed with the word KodeKloud, and I want all of the resources to have a suffix that's specific to what folder they're in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So for everything in the api folder, I want it to end in web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Troubleshooting  

Content:
So right now, if we actually take a look at the configs here, it's gonna be api-deployment, I wanted api-deployment-web, and it should be prefixed with KodeKloud.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
So it'd be KodeKloud-api-deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
And then for db, it's gonna be the same thing, but a little bit different.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 61
Type: Troubleshooting  

Content:
We're gonna change it to, it's gonna be prefixed with KodeKloud as well, but it's gonna end in -storage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So let's think about how are we gonna accomplish this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Troubleshooting  

Content:
So for the prefix of KodeKloud, we want this applied to every single resource regardless of what folder they're in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
So in this case, remember, you wanna apply configs to every single resource, you go to the root kustomization.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Troubleshooting  

Content:
So we'll go in here and we'll add a prefix.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Troubleshooting  

Content:
So this will be namePrefix and it's gonna be KodeKloud.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
And we can just test this right now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 68
Type: Concept  

Content:
And we can see that the name, it looks like I missed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 69
Type: Warning/Pitfall  

Content:
Oh, okay, I've realized I wanna put a dash actually so that the words don't get jammed together.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 70
Type: Concept  

Content:
So if I do KodeKloud-, it's gonna look a little bit nicer.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So we'll rebuild that.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
But now we can see it's KodeKloud-db-credentials.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
And then let's find one in the api folder just to make sure it got applied there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 74
Type: Implementation Step  

Content:
And name, it says KodeKloud-api-deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
Perfect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 76
Type: Troubleshooting  

Content:
Now we wanna set up the suffix.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Troubleshooting  

Content:
And like I said, the suffix is going to change depending on which folder that we're in.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
So if you wanna do something specific to one folder, you want to go into the kustomization.yaml file within that folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Troubleshooting  

Content:
So for this one, we're gonna go here, and I'm gonna do a nameSuffix.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
And I'm gonna do a -web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 81
Type: Concept  

Content:
And for the db, I'm gonna do -storage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 82
Type: Troubleshooting  

Content:
So we'll do nameSuffix: -storage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 83
Type: Concept  

Content:
We'll save all of that, go back to the terminal, and we'll do a build.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 84
Type: Concept  

Content:
So let's take a look at what the final names are.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 85
Type: Concept  

Content:
So for this case, we have our db-depl file, and we can see that the name is KodeKloud.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Troubleshooting  

Content:
So the prefix is still there, and the suffix is set to storage.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
Perfect.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 88
Type: Troubleshooting  

Content:
And if we take a look at one of the APIs, we've got KodeKloud, and then the suffix is web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
And for the sake of completing this, let's add a annotation transformation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 90
Type: Implementation Step  

Content:
And so I'm just going to apply a simple annotation that's going to apply to every single resource.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 91
Type: Concept  

Content:
So we'll go to our root kustomization.yaml file, and I'll add in a common annotation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
And here, you know, pick anything that you want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 93
Type: Troubleshooting  

Content:
I'm just gonna say logging, it's gonna be set to debugging, or let's just say verbose.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 94
Type: Best Practice  

Content:
And now, if we take a look at all of our resources, we should see a annotation of logging: verbose.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
Awesome.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 96
Type: Concept  

Content:
So I think the last transformation that we need to cover is the image transformation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 97
Type: Concept  

Content:
So let's set up a transformer to change specifically the image in our database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
So our image is currently using a Mongo database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 99
Type: Concept  

Content:
So let's change this to be a Postgres database.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 100
Type: Implementation Step  

Content:
So where do we apply this transformation?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 101
Type: Concept  

Content:
Do we do it at the root of kustomization.yaml file, or one of these sub directories?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
Specifically the db one?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
Well, it depends.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 104
Type: Implementation Step  

Content:
So remember, when we apply this in, this transformation in a kustomization.yaml file, it's gonna take all the resources.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
And if it finds any resource using that specific image that we specify, it's gonna change all of them.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Implementation Step  

Content:
So you gotta figure out where you want these changes to apply.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 107
Type: Warning/Pitfall  

Content:
So in this case, maybe you don't wanna apply it globally because maybe there's some other features that also use a Mongo database, and we don't wanna actually change those.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 108
Type: Concept  

Content:
Maybe we only want to change the specific database feature.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Implementation Step  

Content:
So in this case, we're gonna apply it to our kustomization.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 110
Type: Concept  

Content:
But obviously, this is going to vary depending on what you're trying to accomplish with your transformation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 111
Type: Concept  

Content:
So here, I'm going to do images, and we'll specify name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Implementation Step  

Content:
And this is going to be set to mongo, because if we take a look at the deployment file for our database, the image is set to mongo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Warning/Pitfall  

Content:
Remember, don't look at the name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
The name of the container doesn't matter.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Concept  

Content:
We wanna specify the image name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 116
Type: Concept  

Content:
So we'll say mongo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 117
Type: Implementation Step  

Content:
Then we wanna specify the newName property, and this is going to be postgres.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
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
And then if we want to, we can also specify a new tag.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 119
Type: Concept  

Content:
So I'm just gonna give it some arbitrary tag, maybe like 4.2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 120
Type: Concept  

Content:
And now let's test this out.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 121
Type: Troubleshooting  

Content:
And if you guys noticed, I got an error.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Troubleshooting  

Content:
And it's important to take a look at these errors and just read it because it's gonna give us some information as to what exactly happened.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Concept  

Content:
But it says it cannot unmarshal number into Go struct field image of type string.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
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
So it looks like it's expecting a string, but for some reason, we gave it a number.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 125
Type: Troubleshooting  

Content:
So I'm suspecting the issue is with the tag right here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 126
Type: Troubleshooting  

Content:
If I actually comment this out, I assume we're probably not going to get an error.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Concept  

Content:
And it seems to work.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Troubleshooting  

Content:
So there seems to be an issue with this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 129
Type: Concept  

Content:
So I found out that we just gotta cover this in quotes and give it a string.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
So it expects a string for the tag.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Best Practice  

Content:
And so now if I do a build, we should see it goes through.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
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
And let's take a look at the final result.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
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
So if we go under our db-depl, so let's see, this is going to be our database deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Concept  

Content:
And if we go down to the specific image, we can see that it is now set to postgres:4.2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 135
Type: Concept  

Content:
Notice the name still remains mongo.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 136
Type: Concept  

Content:
It doesn't change the name of the container, it just changes the images that we're using.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 137
Type: Best Practice  

Content:
And if we scroll through everything else, you should see that we didn't change any other image.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Best Practice  

Content:
It should have left everything else untouched.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 139
Type: Concept  

Content:
That's gonna wrap up this section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Implementation Step  

Content:
In the next section, you're gonna have a lab that's gonna let you get some hands-on experience with working with transformers so that you can modify your Kubernetes configs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 274_Transformers Demo
- File: 274_Transformers Demo.txt
- Topic: Transformers Demo
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
