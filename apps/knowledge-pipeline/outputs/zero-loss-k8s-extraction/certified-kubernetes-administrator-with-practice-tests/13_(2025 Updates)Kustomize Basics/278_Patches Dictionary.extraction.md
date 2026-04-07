# Extraction: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 278_Patches Dictionary

---

## Entry 1
Type: Exam Tip  

Content:
(pleasant music) Instructor: Let's take a look at another example on how to update a key in a dictionary in our Kubernetes config using a JSON 6902 patch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So I've got my deployment configuration here.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
And I've got one label called component API, and I wanna update that to be component web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So how do we do that?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
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
Let's take a look at the kustomization.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Concept  

Content:
So we're gonna have our target, which is going to specify what Kubernetes object we wanna match on.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
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
So it's gonna look for a deployment configuration with the name of API deployment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
Under patch, you can see that the operation is set to replace 'cause we wanna replace component with a new value.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Warning/Pitfall  

Content:
We don't want to add or delete a label, we want to replace this one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
And then we have to provide the path.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Concept  

Content:
So the path is, how do we actually get to the labels property in our config?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Well, we have to go under spec, so we do /spec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
Then we go under template, so /template.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
Then we go under metadata, metadata and then labels, labels.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
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
And that's going to get us to that dictionary.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Implementation Step  

Content:
And then we wanna update the component property.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
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
So how do we update component?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
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
Well, under the path you finally just provide the name of the specific key we wanna update.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So that's gonna be component.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Implementation Step  

Content:
And then we provide the new value, so that's going to change it to web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
And so the final result is going to be, the label's going to be change to component web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Now, let's take a look at how we can do the same exact thing of changing a key and a dictionary using a strategic merge patch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
And so, I've got my usual API deployment configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And I wanna change that one label, component API, to be component web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So how do I do that?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
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
Well, let's take a look at our kustomization.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 27
Type: Implementation Step  

Content:
First thing to note is that instead of doing this inline, I've decided I'm gonna use a separate file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Concept  

Content:
You can do this inline as well, I just think it kind of makes it a little cluttered.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So I've decided to move it to a separate file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Concept  

Content:
And so, I have the patches section, which is going to list out all of the YAML files that are gonna contain all of my patches.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
And I've got one file called label-patch.yaml.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 32
Type: Implementation Step  

Content:
And if we take a look at label-patch.yaml, you can see that this is basically a copy and paste of our original API deployment configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So that's what I did, I copy pasted it into this file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
And then what I did is I went in and I deleted all the properties that weren't changing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
So like the containers, that's still gonna be an Nginx container.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
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
So I just deleted that, and I just keep all the things that it absolutely needs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
So the first thing it needs is going to be the metadata and the name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
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
So it has to be able to know what specific Kubernetes object do we want to update, and then the exact property that I wanna change.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So I've set the component to be web this time.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 40
Type: Implementation Step  

Content:
And so, customize is then gonna take this config, merge it with the original API deployment config.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
And it's going to see that the only thing that's changing between the two is the component label is getting changed to web.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Implementation Step  

Content:
And so, it's going to then change that label and then give us the outputted result.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
So we saw how we can replace or modify a key and a dictionary using a JSON 6902 patch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
Let's now take a look at how we can add a new key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 45
Type: Implementation Step  

Content:
So I've got my deployment configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Concept  

Content:
I've got one label called component API, and I want to add in a second label.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
So I want to add in a label that says, that's gonna be org kodekloud.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So what is that gonna look like in our kustomization.yaml file?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 49
Type: Implementation Step  

Content:
Well, the first thing that we need to focus on is the operations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So if you take a look under the patch section, the operation gets changed to an add.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Concept  

Content:
So this is going to add a new key to that dictionary.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 52
Type: Implementation Step  

Content:
And then we have to provide a path to the specific dictionary that we want updating.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Implementation Step  

Content:
So we go under spec, then template, then metadata, and then we get down to labels.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 54
Type: Implementation Step  

Content:
And then finally, we have to provide the new key.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 55
Type: Implementation Step  

Content:
So you provide the key in the path, and then you provide the value.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
So then this is gonna give us org kodekloud.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
And the final result is going to be, we have two labels now with the original component API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
And then we have the org kodekloud 'cause this is a add operation.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Now, let's see how we can add a key to a dictionary using a strategic merge patch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
So I've got the same exact deployment configuration with one label, component API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
And then in my kustomization.yaml file, I'm gonna use the separate file method just because I didn't wanna do this inline.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 62
Type: Implementation Step  

Content:
And if we take a look at what that label-patch.yaml configuration looks like, you can see, once again, I've just copied the original deployment configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
And then I've just deleted all the things that won't change.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
And so, under spec/template/metadata/labels, I've added the new label that I want added.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
And what this is gonna do is it's gonna take that label-patch.yaml file, and it's going to merge it with the API-deployment.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Implementation Step  

Content:
And it's gonna see that the original API deployment YAML file had a component API label.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
And then the label-patch.yaml has a label, org kodekloud.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
It's gonna see both of them are different, and it's gonna merge it together.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
And the final result is we get both of those labels added.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
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
We saw how we can add and replace a key in a dictionary.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 71
Type: Concept  

Content:
So now we're gonna take a look at how we can remove a key from a dictionary using a JSON 6902 patch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Implementation Step  

Content:
So this is my deployment configuration.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 73
Type: Comparison  

Content:
The only difference now is that you can see I have two labels.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
If we take our kustomization.yaml file, the most important thing to notice is that we've changed the operation to be a remove.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
And then for the path, we have to provide the path to get to the specific labels dictionary.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 76
Type: Implementation Step  

Content:
So we have to go into spec/template/metadata/labels, and then we provide the specific key of the label that we wanna remove.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
So in this case, I wanna remove org kodekloud.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
So then I just provide org, and that's going to delete that label.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
And so, the final result is that I end up with just one label and that's the component API.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
So now, let's take a look at how we can remove a key from a dictionary using a strategic merge patch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
And so, I've got the same two labels here, and the label that I wanna delete is the org kodekloud.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
So I've got my kustomization.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
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
This is going to point to a separate file called label-patch.yaml.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
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
And in here, the way we're going to actually delete a key is we're gonna set it to null.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 85
Type: Implementation Step  

Content:
So I just go under spec/template/metadata/labels, and then I specify org and give it a value of null.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
And that's going to delete the key effectively.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 278_Patches Dictionary
- File: 278_Patches Dictionary.txt
- Topic: Patches Dictionary
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
