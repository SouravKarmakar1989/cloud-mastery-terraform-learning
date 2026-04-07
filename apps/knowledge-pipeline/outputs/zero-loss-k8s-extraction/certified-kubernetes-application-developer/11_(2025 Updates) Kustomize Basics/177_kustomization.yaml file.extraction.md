# Extraction: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 177_kustomization.yaml file

---

## Entry 1
Type: Implementation Step  

Content:
(whimsical music) Instructor: Now that we have the customized tool installed and configured, we're gonna finally get started playing with the tool itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
So the first thing that we have to do is we have to learn about the kustomization.yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Implementation Step  

Content:
And that's going to be the focus of this video, we're gonna take a look at what is the kustomization.yaml file, why do we need it, and how we configure it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Exam Tip  

Content:
In this example, I have a k8s directory that's going to contain all of my Kubernetes configs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
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
I have two yaml files, one is for the Nginx deployment and one is for the Nginx service.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And we're gonna point kustomize to this folder 'cause this is where all of my Kubernetes configs are, but kustomize won't look at either one of these files.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Instead, kustomize looks for one specific file called a kustomization.yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
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
And so, this is a file that you have to create yourself, and it does have to be named kustomization.yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And in this file there's going to be two things that we need to have in it, and it's gonna be very simple but it's gonna be broken down into two different sections.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Best Practice  

Content:
The first is it's going to contain a list of all of the Kubernetes resources that should be managed by kustomize.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
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
And so, this is going to be just a list of all of the yaml files that you want kustomize to manage.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
And so, in this case, I have my nginx-deployment.yaml file and I have my nginx-service.yaml file, and those are both listed under the resources section of my kustomization.yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
The second thing is going to be all of the customizations that we want to apply to our transformation.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So what are the things that we need to change?

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Exam Tip  

Content:
So in this example I have a very simple one where we're going to add a common label to all of the resources that we create using kustomize, and it's going to add a label that has a key of company and a value of KodeKloud.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Exam Tip  

Content:
Keep in mind, this is just one simple example of a transformation, there's a ton of different customizations and transformations that can be applied.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
I just want to keep it simple for now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
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
And so, I really just want to hammer home the idea that it's just two different things in the kustomization.yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Implementation Step  

Content:
You have all of the resources that you want managed, and then whatever it is that you want to change.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
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
Once we have our kustomization.yaml file configured and completed, we can now run the kustomize build command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
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
So we're gonna point the kustomize build command to the K8s directory, 'cause that's where our kustomization.yaml file is.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
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
It's gonna look for that file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 23
Type: Implementation Step  

Content:
In that file it's going to point to the two resources that we defined, it's going to import them and then it's going to apply all of the transformations that we have defined.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
And then, once it's done that, it's going to spit out what the final configs are gonna look like.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
And so, if you take a look at the output at the terminal after you run this command, you'll see that we can see the nginx service that we defined, you can see the nginx-deployment that we defined and, most importantly, you can see the transformations, which is we applied an extra label called company: KodeKloud, and it's gonna get applied to both the service and the nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
And that's what the common label transformation does, it applies a specific label to all of your Kubernetes resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Now, I wanna quickly summarize what we've learned so far in this video.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Best Practice  

Content:
We learned that kustomize will look for a kustomization file, which is going to contain the two following things; a list of all of the Kubernetes resources or manifests that kustomize should manage, as well as all of the customizations that should be applied.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
Then, when we run the kustomize build command, this is going to take all of the resources, all of the manifests that were defined in the kustomization.yaml file, and it's going to apply all of the transformations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 30
Type: Implementation Step  

Content:
But it's important to understand that when we run this command, it does not actually apply or deploy the Kubernetes resources.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
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
Instead, what's happening is it's just spitting out what the final config is going to look like in the terminal.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
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
If we want to actually apply these configs to a cluster, we actually have to take the output of this command and redirect it to the kubectl apply command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
And that's something that we'll cover in the next video.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 177_kustomization.yaml file
- File: 177_kustomization.yaml file.txt
- Topic: kustomization.yaml file
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
