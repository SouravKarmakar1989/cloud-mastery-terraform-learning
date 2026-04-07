# Extraction: certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics / 261_Lifecycle Management With Helm

---

## Entry 1
Type: Concept  

Content:
Tutor: Let's talk about Lifecycle Management with Helm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
Now, lifecycle management can sound like a fancy technical term that's too abstract to understand at first glance.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Exam Tip  

Content:
So let's translate it into plain English by taking a look at some practical examples.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
Now, each time we pull in a chart and install it, a release is created, as discussed in the previous lessons.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Exam Tip  

Content:
A release is somewhat similar to an app, but more specifically, it represents a package or a collection of Kubernetes objects.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
Now, since Helm knows what Kubernetes objects belong to each release, it can do things like upgrades, downgrades, or uninstalls without touching objects that might belong to other releases.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So each release can be managed independently, even if they're all based on the same chart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
Now let's just create a new release and discuss this as we go along.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
So we'll install a pretty old version of this Nginx chart.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
By the way, you can pass in a specific version of Helm chart to install using the version option in the install command like this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
We now have an Nginx release, plainly called Nginx release.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And now imagine two months go by, which is a long time for any piece of software, but especially for a website, a lot of security vulnerabilities get discovered and they need to be patched up.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Now our Nginx hosted website may have many objects in our Kubernetes cluster, and when we upgrade the pods running Nginx, maybe we also need to make some changes to other Kubernetes objects.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Exam Tip  

Content:
For example, the newer version of Nginx may require a new environment variable to be set, or new secret to be created, which requires changing configuration objects and other files, part of the manifest files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
But it may be hard to keep track of all pieces that need to be changed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Warning/Pitfall  

Content:
Fortunately, as we said, Helm keeps track of everything associated with a release, so we don't have to upgrade our objects one by one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Command  

Command:
```bash
Helm can automatically upgrade them all with one single command.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
But first, let's see what version of Nginx is running in our pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
We initially have to find out the name of our Nginx pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
So we run the, "kubecutl get pods", command to see the pod that we created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
Then we run a "kubectl describe pod" command to see more details about the image, and we see that it's running Nginx version 1.19.2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
So that's pretty old.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Now let's see a Helm upgrade in action.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Implementation Step  

Content:
The command is rather simple, so we just tell Helm what release we want to upgrade and then specify the chart that this release is based on.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So we now run the Helm upgrade command to upgrade the Nginx release.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So Revision 1 is now replaced, and by Revision 2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Note the revision number in the output of the Helm upgrade command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
So did the Helm upgrade command really do its job?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
Let's check.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 30
Type: Implementation Step  

Content:
In the upgrade process the old pod gets destroyed and a new one gets created.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So we need to get the name of the new one.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
So we follow the same Helm process again and get the new pod name then run a describe on it and we see the new version, which is Nginx 1.21.4.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
So there you have it.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
We just went through the so-called Lifecycle Management with Helm.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
A release can exist for months or years, and Helm can manage its lifecycle in many ways by keeping track of its current state, previous states, and bring it into future states.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So in this case, we brought the release into a future state by upgrading it, but Helm kept a record of the previous state too.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
We noticed the revision number changing to 2, so the previous state would be Revision 1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Now, how does that help us?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Let's take a look at our releases.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
Run the Helm list command to list the current releases, and we have our Nginx release listed.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
We see the current revision number, which happens to be 2.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
In this case we know what the previous revision was and what the current one is.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
But say we work in a big team and lots of people manage their releases, this output doesn't really tell us what happened.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So how do we dig deeper?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Run the Helm history command to see more details about a particular release.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
This is a lot more helpful.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
We can clearly see a lot of useful things.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
What chart version was, or is used, in each revision?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
What app version was, or is, used in each revision?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
What action actually created that revision?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
Was it an install, an upgrade, or a rollback?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So this paints a clear picture of the stages our release went through, its lifecycle history.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Warning/Pitfall  

Content:
Now let's assume this upgrade did something that we don't like.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Command  

Command:
```bash
Helm's Lifecycle Management allows for another cool thing called rollback.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
Now, this lets us return a release to a previous date.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
So in this case, we want to return to Revision 1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So in this case, we run the command "helm rollback Nginx release", and specify the revision number that we want to roll back to, and that is Revision 1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
Now, when you do that, remember, Helm reverts all configuration to how it was previously in Revision 1, but technically, it does not go back to Revision 1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Implementation Step  

Content:
Instead, it creates a new revision, Revision 3, with a similar configuration as in Revision 1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So if you list Helm revisions with the Helm history command, now you will see that there are three versions with Revision 1 and 2 having the same chart and the app versions.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
And there is a note in description that says it's a rollback to Revision 1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Exam Tip  

Content:
It's worth mentioning that we chose Nginx here as it's simple to upgrade, but there will be Kubernetes packages that may require a few extra steps to upgrade.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Exam Tip  

Content:
For example, if we had have tried to upgrade the previous WordPress release that we created, we would've got this output.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
Now, that's not to say that this is a problem.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
It can be easily solved by adding some more parameters to the command line as instructed in the text.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
But, why does this happen?

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
In this case, Helm cannot upgrade everything without having access to some administrative passwords.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
It needs administrative access to the database and to the WordPress website itself so that it can get permissions to make necessary changes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Concept  

Content:
It's also worth mentioning that all the rollbacks are very similar to a Backup Restore feature.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
It doesn't cover file or directory data that may be created by our applications.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
Instead, Helm backs up and restores the declarations or manifest files of our Kubernetes objects.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
So for things that use persistent volumes or other forms of persistent data or something that is external, maybe like an external database, the rollback won't restore that data too.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Exam Tip  

Content:
For example, imagine you rollback MySQL database server.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
The MySQL pods will be restored to their previous states, software versions used and so on, but the actual database, its data will remain the same.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
Its data is not going to be backed up or restored.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
So there are options available to take consistent backups of databases before upgrading charts, or even to roll back or restore databases, but they're done using what is known as chart hooks, which we will discuss later in this course.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
Well, that's all for now.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 78
Type: Concept  

Content:
Head over to the labs and get some hands-on practice.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 12_(2025 Updates)Helm Basics
- Lecture: 261_Lifecycle Management With Helm
- File: 261_Lifecycle Management With Helm.txt
- Topic: Lifecycle Management With Helm
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
