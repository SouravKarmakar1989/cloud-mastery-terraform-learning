# Extraction: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 281_Overlays

---

## Entry 1
Type: Concept  

Content:
(bright music) Instructor: Now that we've learned how to work with kustomization.yaml files and the different functionalities that come with it, we can finally put everything together and address the main use case of Kustomize.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
As mentioned before in one of the first lectures of this course, Kustomize was created to allow us to take a base Kubernetes config and customize it on a per-environment basis.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
And so if we have a development environment and a staging environment and a production environment, we may wanna tweak certain properties on a per-environment basis, and that's where Kustomize really does come into play.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
So how exactly do we accomplish this?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Concept  

Content:
Well, it's with something called overlays.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
And if you take a look at a usual folder structure of a customized project, it's gonna be broken down into two different sections.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
So you're gonna first have the base section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
So this is going to be where all of your shared configuration, so all of your Kubernetes configs that are gonna be shared across all of your environments or all of your default configs are going to reside.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
So your base config is going to have all of these shared and default configurations.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 10
Type: Implementation Step  

Content:
And then what we're gonna do is on a per-environment basis, we're gonna define a overlay folder for each environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
And here we get to specify all of the environment specific configs so that we can take the base configs and then modify it to our liking for that specific environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
And so that's why we have a folder for dev, and a folder for staging, and a folder for production.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And if you haven't guessed, right, we're gonna accomplish this by providing patches.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Best Practice  

Content:
That's it, so your dev folder is going to have a certain number of patches that will change things to match what the dev should have.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Staging folder is gonna do the same thing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
They're gonna have a bunch of patches for the staging environment, and the same thing goes for production.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So let's take a look at this in action.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
So I've got the same directory structure, and in my base folder I have my nginx-depl.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
And here I've set the replicas to 1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And let's say on a per-environment basis, I wanna change this value.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
So, to get this set up, the first thing that we need to do is we need to define our kustomization.yaml file in our base folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And this is just a regular kustomization.yaml file, and you can see we're just importing the resources like we normally do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Nothing special up to this point.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
Now where things get interesting is in the overlays.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 25
Type: Concept  

Content:
So if we take a look at the kustomization.yaml file in the dev folder, you're gonna see something new that we haven't seen.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
We've got this bases property.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So what is that?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
Well, we're basically telling this kustomization.yaml file, how do I get to the base directory with all of the base configs?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
So we just have to provide the relative path to that folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
So, relative path means how do I get there from this kustomization.yaml file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
Since this file is in the dev folder, we have to go up two directories and then into the base directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So if you guys aren't familiar with this syntax, if you see two dots and a slash, that means go up a directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Implementation Step  

Content:
So we see two dots and a slash, so that means we go from the dev folder to the overlays folder, and then we have another two dots and a slash, so that means we go from the overlays folder to the k8s folder, and then we go into the base directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Best Practice  

Content:
Once that's defined, Kustomize will look for the kustomization.yaml file in the base directory to know all the resources it should be importing.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 35
Type: Implementation Step  

Content:
And then we're gonna provide a patch.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
So let's say we wanna update the replicas to a value of 2, and that's all you have to do.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
That is the entire concept of overlays.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
You see, we're not really learning anything new.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 39
Type: Concept  

Content:
We've already learned everything that we need to learn.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
It's just a matter of providing patches on a per-environment basis.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
And the same thing goes for production.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
We're gonna provide the path to the base folder, and then we're gonna update and provide a patch to update the value to be of 3 for the replicas count.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
Now overlays is a simple concept, and we've kind of already covered everything that we need to do, right?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
That's really all we need to know about overlays.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
It's just a matter of importing the base configs and then providing patches.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Warning/Pitfall  

Content:
But I wanna make sure that you guys don't think that, you know, overlays can only have patches.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Concept  

Content:
We can actually do a little bit more.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 48
Type: Concept  

Content:
So in your overlay folder, what can happen is, you're gonna have your kustomization.yaml file, and that's going to have all of your patches.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
But in one of these environment folders, in your overlay folders, you can have new configs that weren't defined in your base folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 50
Type: Exam Tip  

Content:
So in this example, I have a grafana-depl.yaml, and you'll notice that doesn't exist in the base folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 51
Type: Implementation Step  

Content:
So this means that in my production environment, I'm going to add a Grafana deployment that isn't available in any of my other environments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 52
Type: Concept  

Content:
And so I just wanted to highlight the fact that in these environment-specific folders, you can add as many brand new resources as you want.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Warning/Pitfall  

Content:
You don't have to just modify preexisting ones, you can use new ones.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
And so the way that this would look like in your kustomization.yaml file is, under the resources section, we just import it like a regular file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
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
So we have our bases, we have our patches, and then we import our resources that are in our current folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 56
Type: Concept  

Content:
So, just something to keep in mind, you can add new resources inside your overlay folder.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Warning/Pitfall  

Content:
So one final note, I wanna make sure that you guys don't think that we're kind of forced into a certain directory structure.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Concept  

Content:
In fact, kustomize gives you a lot of flexibility in how you wanna structure your Kubernetes configs.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 59
Type: Concept  

Content:
So you can break it out into subfolders.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So your base folder can be broken out into, you know, extra subdirectories based off of features like we've done before, and you could break it out however you want to.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Warning/Pitfall  

Content:
Don't think that you just have to jam everything under the base directory.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 62
Type: Concept  

Content:
And the same thing goes for your overlays.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Concept  

Content:
If you wanna break it out into features as well, you can do that as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 64
Type: Warning/Pitfall  

Content:
And remember, these subdirectories don't have to match up with what the base directory is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
They can be completely separate.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 66
Type: Concept  

Content:
They can follow their own patterns.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 67
Type: Concept  

Content:
It's completely up to you, just make sure that you have the resources being imported properly into the proper kustomization.yaml files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 281_Overlays
- File: 281_Overlays.txt
- Topic: Overlays
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
