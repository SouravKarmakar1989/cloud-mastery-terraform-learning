# Extraction: certified-kubernetes-application-developer / 10_Helm Fundamentals / 167_Helm Introduction

---

## Entry 1
Type: Concept  

Content:
-: In this section, we will talk about Helm.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Concept  

Content:
Now, Kubernetes is awesome at managing complex infrastructures.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
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
We humans tend to struggle with complexity though applications we deploy into our Kubernetes cluster can become very complicated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
A typical app is usually made up of a collection of objects that need to interconnect to make everything work.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Exam Tip  

Content:
For example, even a relatively simple WordPress site might need the following, a deployment to declare the pods that you wanna run like with MySQL database server or the web servers.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
A persistent volume to store the database, a persistent volume claim, a service to expose the web server running in a pod, and a secret to store the admin password and maybe even more if you want extra stuff like periodic backups and so on.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
And for every object, we might need a separate YAML file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
Then we need to kube cuddle apply to every YAML file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
Now, this can be a tedious task, but it's not the end of the world.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
Now imagine we download these YAML files from the internet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
We're not happy with the defaults, so we start changing stuff.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
Persistent volumes are 20GB, but we know our website will need much more storage and we go to the YAML files where persistent volumes and claims are declared.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
We change 20 to 100 and more stuff we wanna change.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
We'll have to open up every YAML file and edit each one according to our needs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
Well, not bad enough yet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
Now imagine two months go by.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Exam Tip  

Content:
We now have to upgrade some components in our app, and back to editing multiple YAML files with great care.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Warning/Pitfall  

Content:
So we don't change the wrong thing in the wrong place.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
We need to delete the app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
We'll need to remember each object that belongs to our app and delete them all one by one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Now you might be thinking, hey, it's not a big deal.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
We can just write all object declarations in a single YAML file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
Well, that's true, but it might make it even harder to find the stuff that we are looking for.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Exam Tip  

Content:
We'd have to continuously search for stuff we need to edit in something that could be 25 pages of text, at least in multiple files, it'd be somewhat organized and we'd know we'll find deployment related stuff, in the the MySQL deployment of YAML file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
Enter Helm.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Command  

Command:
```bash
Helm changes the paradigm.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
Kubernetes doesn't really care about our app as a whole.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
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
All that it knows is that we declared various objects and it proceeds to make each of them exist in our cluster.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
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
It doesn't really know that the persistent volume and that deployment and that secret and that service are all part of a big application called WordPress.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
It looks at all the little pieces that the administrator wanted to have in the cluster and takes care of each one individually.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 31
Type: Command  

Command:
```bash
Helm, however, is built from the ground up to know about such stuff.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Exam Tip  

Content:
That's why it's sometimes called a package manager for Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 33
Type: Warning/Pitfall  

Content:
It looks at those objects as part of a big package as a group, whenever we need to perform an action we don't tell Helm the objects it should touch.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Exam Tip  

Content:
We just tell it what package we want it to act on, like our WordPress app package.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Best Practice  

Content:
And based on the package name, it then knows what objects it should change and how.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Exam Tip  

Content:
And even if there are hundreds of objects that belong to that package.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
To make this easier to understand, well think about this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
A computer game is contained in hundreds or thousands of files.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
There are a few files with the programs executable code, other files with audio, game sounds, and music and other files with graphics, textures, images files with configuration data and so on.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
Now, imagine what would happen if we had to download each of these files separately.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
That would be tedious.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Warning/Pitfall  

Content:
Fortunately, we don't have to go through such horrors as we get a game installer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
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
We run it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
We choose the directory where we want to install, we press install and the installer does the rest, putting thousands of files in their proper location.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Command  

Command:
```bash
Helm does a similar thing and more for the YAML files and Kubernetes objects that make up our application.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
Hence, we get advantages like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
We use a single command to install our whole app, even if it needs a hundred objects.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Command  

Command:
```bash
Helm proceeds to automatically add every necessary object to Kubernetes without bothering us with the details.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Exam Tip  

Content:
We can customize the settings we want for our app or package by specifying desired values at install time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Exam Tip  

Content:
But instead of having to edit multiple files in multiple YAML files, we have a single location where we can declare every custom setting.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
It's called a value.yaml file, and this is where we can change the size of our persistent volumes, choose the name of our WordPress website, the admin password, settings for the database engine and so on.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
We can upgrade our application with a single command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Command  

Command:
```bash
Helm will know what individual objects need to change to make this happen.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
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
We can roll back to the previous so-called revision.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
We use a single command to uninstall our app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
It keeps track of all the objects used by each app, so it knows what to remove.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Warning/Pitfall  

Content:
We don't need to remember each object that belongs to one of our apps anymore or use 10 separate commands to remove everything.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 58
Type: Command  

Command:
```bash
Helm does all the work.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
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
We will look into these commands in more detail in the upcoming lectures.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 60
Type: Exam Tip  

Content:
For now, understand that Helm works as a package manager, with install or uninstall wizard, and also a release manager, helping us upgrade or roll back application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
The core thing is that it lets us treat our Kubernetes apps as apps instead of just a collection of objects.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Warning/Pitfall  

Content:
This takes a huge burden of our shoulders as we don't have to micromanage each Kubernetes object anymore.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Command  

Command:
```bash
Helm can do that for us.
```

Explanation:
- Command preserved exactly as transcript evidence.

Source:
- Course: certified-kubernetes-application-developer
- Module: 10_Helm Fundamentals
- Lecture: 167_Helm Introduction
- File: 167_Helm Introduction.txt
- Topic: Helm Introduction
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
