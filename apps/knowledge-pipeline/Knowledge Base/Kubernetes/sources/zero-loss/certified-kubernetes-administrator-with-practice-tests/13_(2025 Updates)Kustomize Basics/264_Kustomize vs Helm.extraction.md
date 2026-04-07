# Extraction: certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics / 264_Kustomize vs Helm

---

## Entry 1
Type: Troubleshooting  

Content:
(bright tinkling music) Instructor: Before we move on to the next section, I wanted to talk about an alternative tool to Kustomize, and this tool's called Helm, and I wanted to just provide a brief, high level overview of how Helm addresses the same issue of providing modification to your Kubernetes manifest on a per environment basis, and I think it's good to see this just because, you know, when you're trying to figure out what is the best tool for your project or application, you should have a good understanding of how both of these tools work and what are the pros and cons of each one so that you can make the best decision for your project.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Troubleshooting  

Content:
So the way that Helm actually tackles this issue is that it makes use of a Go templating syntax to assign variables to various properties, and to give you an example of that, let's take a look at a template.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So this is a regular deployment configuration, except you'll notice something interesting.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Implementation Step  

Content:
There's these weird syntax where there's two curly braces and then some random name or text.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
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
In this case, for the replica's property, you could see that there's two curly braces and then there's a string called replica count in there.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Exam Tip  

Content:
So this is an example of the Go templating syntax, and what this is, is this is a variable.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So we're not hard coding a value, we're just assigning a variable that we can later on provide some specific value and we can tweak that value on a per environment basis.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
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
So how do we actually provide a value to that variable?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 9
Type: Exam Tip  

Content:
So let's take a look at the same exact example.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
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
You can see we have the replica's property and the variable name is called replicaCount.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
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
So to provide a value for the replicaCount variable, we would create a values.yaml file that's going to contain all of the values for the variables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Exam Tip  

Content:
And so for the replicaCount example, we can see that there is a replicaCount property in our values.yaml file, with the value set to one, so when we deploy our application, it's going to insert a value of one into the replica's property.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And if we take a look at the image, more specifically the image tag, we can see that it's going to look for a variable called image with a property called tag.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
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
So in our values.yaml file, you can see that that is set to be 2.4.4, so that value will get inserted in when we go to deploy this application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
So let's see what a traditional Helm project structure would look like that would allow us to kind of customize that values.yaml file on a per environment basis.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 16
Type: Exam Tip  

Content:
So I've got a example directory here and it's broken into two sections.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
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
Under the templates directory, this is going to contain all of our Kubernetes manifests where we've inserted all of those variables using that Go templating syntax.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
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
And then in the environment section, I have a separate values.yaml file for each environment that I have, so I've got values.dev.yaml for my dev environment, and I got the same thing for staging and prod, and so these are going to contain all of the values that I want set on a per environment basis, and when we go to deploy it, we would just specify which one we wanna use and it's going to insert those values into the respective templates.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
Now just a couple of other things to note about Helm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 20
Type: Exam Tip  

Content:
So Helm isn't just about customizing your configurations on a per environment basis, Helm is actually a complete package manager for your application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
So think of like either YUM or APT for a Linux system, it kind of operates the same way for your Kubernetes application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And Helm is a little bit more complex, but it also comes with a few extra features that Kustomize doesn't have, so things like conditionals, loops, functions, and hooks, so you do get a little bit more functionality with Helm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
However, with that extra functionality does come some extra complexity.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
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
So, you know, when you're dealing with these Helm templates, technically they're not valid YAML because they are using that Go templating syntax, and so if you take a look at some of the Helm charts out there, you'll see that they are actually really, really difficult to read, just due to that temping syntax where everything is a variable and it just becomes hard to figure out like, what exactly is our chart doing?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
What values can I replace?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
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
Overall, it just becomes a little bit of a challenge to read those charts, and that's one of the perks about Kustomize, is that Kustomize is very simple.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
It's very easy to read, it's just regular YAML.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 28
Type: Implementation Step  

Content:
The regular base configurations is just regular Kubernetes configs, and then the overlays, where we go to modify it on a per environment basis, that's all valid YAML as well.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So I think one of the big trade offs is, you know, Kustomize is easier and simpler, whereas Helm is a little bit more complex, but it has more features as well, so there are trade offs and you definitely wanna think about what each one brings to the table when you decide on what is the tool that you're going to use for your specific project.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 13_(2025 Updates)Kustomize Basics
- Lecture: 264_Kustomize vs Helm
- File: 264_Kustomize vs Helm.txt
- Topic: Kustomize vs Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
