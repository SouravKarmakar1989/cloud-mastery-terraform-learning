# Extraction: learn-kubernetes / 08_Microservices Architecture / 047_Demo - Deploying Voting App on Kubernetes

---

## Entry 1
Type: Implementation Step  

Content:
So in this video, we're going to deploy the voting application onto a Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
And the first thing that we have to do is we have to create the pod definition file for each one of the services in our application.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So we're going to first create the pod definition file for the voting app.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
So I'm just going to create a file called voting dash app dash pod YAML.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Implementation Step  

Content:
So for the voting app we're going to first specify the API version.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
So this is going to be v1.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
We're going to specify the kind which is.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Implementation Step  

Content:
Since we want to create a pod the kind is going to be set to pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
Then we give it the metadata.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So this is going to be things like what is the name as well as what labels do we want to assign to it.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So I'm just going to call this one vote just to keep it simple.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
And then labels.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
So what I'm going to do is I'm going to follow the convention of I'm going to have a label where it's app and then the name of the service or component.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
So since this is the vote service, we're just going to call this vote.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Implementation Step  

Content:
And then what we have to go under spec and here we will create the list of containers.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
In this pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
There's going to be just one container.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
You can give the container a name.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
We'll just call this one vote the image.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Exam Tip  

Content:
This is going to be the Docker samples slash example voting app underscore vote.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
And then we have to specify what ports is the application or the container going to be listening on.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Uh so we'll say container port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And we know that the voting app is listening on port 80.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
And if you want you can even give the the port that it's listening on a name.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
We'll just call this a vote.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So that's everything we need for the voting app pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
We can then go to and create the results pod uh, we'll say result app pod YAML.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
And here I'm going to be really simple.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
We're just going to copy this and just change a few values.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So the pod spec is going to be almost 100% percent identical.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
We're going to change the name to be result.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
We're going to change the label to be result as well.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
We'll change the name of the container to be result.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
And then the image is going to be Docker samples.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Exam Tip  

Content:
Example voting app underscore result.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
It's going to also listen on port 80.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
And we're going to change that port name to be result.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Implementation Step  

Content:
Now let's create the reader's database pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
So we'll call this reader's pod dot YAML.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
And once again I'm going to copy this.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
Paste it.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And we're going to change the names.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
And what I'm going to do is I'm just going to do a multi-select.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So everything with the word vote I'm just going to change to be reader's.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Implementation Step  

Content:
So we're going to update the name, the label, the name of the container and then the container port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Implementation Step  

Content:
And then we have to change the image.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
This is going to be using The Reedus alpine image.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Implementation Step  

Content:
And then we have to change the container port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So the Reedus image by default listens on six, three, seven, nine.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So we'll update that.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Best Practice  

Content:
And we should be done with the Reedus pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Let's now go to the Postgres database pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
We'll call this DB dash pod YAML.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
And we'll copy the Reedus config.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Concept  

Content:
And I'm going to change the name to be DB, the label to be app db as well.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
This is going to be using a Postgres image.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So we'll set the name to be Postgres.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
And then the actual image will be we'll change this to be Postgres and the tag is going to be 15 alpine the container port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
So the default port that Reedus listens on is 543, two.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Implementation Step  

Content:
And then we'll just update that port name to be Postgres.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Now for the Postgres image.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
If you go to the documentation, we have to provide it some information, which is what's going to be the default username and password for Postgres instance.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
And the way that we provide that information is by passing in environment variables.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
And to do that we just say env.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
And then we just provide a list of key value pairs.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Implementation Step  

Content:
So we say name and then value.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Implementation Step  

Content:
So this is going to be the key for the environment variable and then the value.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So Postgres has a specific convention.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Best Practice  

Content:
It should be Postgres underscore user.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
That's going to be the environment variable that specifies a username.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
And we're going to set the default username to be.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
How about Postgres.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Concept  

Content:
Just to keep it simple.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
And then we're going to do the password.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
So this is the environment variable called Postgres underscore password.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Implementation Step  

Content:
And then we'll set the value to be Postgres.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Concept  

Content:
So in this case if you want to connect to the Postgres database the username is going to be Postgres.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Implementation Step  

Content:
And then the password is also going to be Postgres just to keep it simple for this demonstration.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Implementation Step  

Content:
And then the last thing that we have to create is going to be the worker pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
And I'm going to go to the voting app and copy this one as a template.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
And so for the worker once again I'm going to update the values here all at once to be worker.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Exam Tip  

Content:
And then the image is going to be Docker samples slash example voting app underscore worker.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
And keep in mind that the worker pod isn't going to have a service exposed.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Warning/Pitfall  

Content:
So in this case we don't really need to specify the port because it's not going to have the service associated with it.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
So we can just delete that.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Implementation Step  

Content:
So now that we've finished creating the pod specs for all the different components, we now need to create services so that we can enable communication between all of the different components of our application.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Implementation Step  

Content:
So we're going to create a service for the pod first so that the other components can talk to the database.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Implementation Step  

Content:
I'm going to create a new file I'm going to call this one Readers dash service dot YAML.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
And here we're going to set API version to be v1.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Concept  

Content:
We're going to set the kind to be of type service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Implementation Step  

Content:
And then we'll pass in the metadata.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
So what will the name be.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
I'm just going to keep it simple.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
We'll call this uh readers.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Implementation Step  

Content:
Now the name of a service is kind of important because when you create a service it's going to get an IP address.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Implementation Step  

Content:
And we can configure our application to talk to the to the service using the IP address.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Implementation Step  

Content:
But on top of that it'll also create a DNS entry so that instead of having to remember the IP address of the service, you can just send it to the domain of readers that hostname.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Concept  

Content:
So the name is important.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Implementation Step  

Content:
The applications have already been configured to reach the readers database through the domain of readers.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
So we want to make sure we set the name of the service to be readers as well.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Implementation Step  

Content:
And then if you want, you can have some labels.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
These are purely optional, but we'll just set this to be readers.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Implementation Step  

Content:
Then for spec, We have to specify what type of service do we want.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
Um, and so there's three types of services.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Concept  

Content:
There's clusterip, nodeport and load balancer.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 106
Type: Best Practice  

Content:
The reader's database should not be exposed to the outside world.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 107
Type: Concept  

Content:
So only internal components.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 108
Type: Best Practice  

Content:
Um, so basically components already on our Kubernetes cluster should be able to talk to it, not the outside world.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 109
Type: Concept  

Content:
We're not going to expose it to the end user.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 110
Type: Concept  

Content:
So for that you want to use a cluster IP service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 111
Type: Concept  

Content:
So you just say type cluster IP.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 112
Type: Concept  

Content:
However this is the default type.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 113
Type: Concept  

Content:
So you can actually delete it.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 114
Type: Concept  

Content:
And it's going to default to of type cluster IP.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 115
Type: Implementation Step  

Content:
Then we have to specify the port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 116
Type: Concept  

Content:
Let's give the port a name I'm going to say we'll call this uh redirect service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 117
Type: Concept  

Content:
You have to provide the two values which is going to be port and target port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 118
Type: Best Practice  

Content:
So target port is going to be what port should it forward to on the container.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 119
Type: Concept  

Content:
And so this is going to be based off of what port is the reader's pod listening on.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 120
Type: Concept  

Content:
It's going to be 6379.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 121
Type: Implementation Step  

Content:
So we can copy that and set that to be six, three, seven, nine, and then the port that the server is listening on.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 122
Type: Concept  

Content:
This can be any port that you want, but in general, we're just going to keep it to be the same as the target port, just to keep things as simple as possible.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 123
Type: Implementation Step  

Content:
And then after that we have to provide a selector.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 124
Type: Best Practice  

Content:
So this is basically telling the service what pods should it forward traffic to.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 125
Type: Concept  

Content:
So we have to grab the labels for the pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 126
Type: Concept  

Content:
So the the reader's pod has a label of app reader's.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 127
Type: Implementation Step  

Content:
And so then we go to the reader's service paste that in there.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 128
Type: Concept  

Content:
This is basically saying that if we get a request to the service, forward it to any pod with the label of app Reader's.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 129
Type: Implementation Step  

Content:
So now let's create the service for the Postgres database.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 130
Type: Concept  

Content:
So we'll say DB service dot YAML.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 131
Type: Concept  

Content:
And we can just copy the reader's service and just change the values accordingly.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 132
Type: Implementation Step  

Content:
First things first the name.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 133
Type: Concept  

Content:
Remember the name is important because it automatically sets the DNS entry.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 134
Type: Implementation Step  

Content:
The applications have been configured to talk to the database using the hostname of db, so we have to name the service accordingly.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 135
Type: Concept  

Content:
We'll update the label here to just be DB and we'll call this one the DB service for the type.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 136
Type: Concept  

Content:
The type will once again, just like the reader's database.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 137
Type: Best Practice  

Content:
It should be only internal to our application.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 138
Type: Best Practice  

Content:
We shouldn't allow it to be exposed to the outside world.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 139
Type: Concept  

Content:
So we could set this to be cluster IP.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 140
Type: Concept  

Content:
And once again this is purely optional because this is the default service type.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 141
Type: Warning/Pitfall  

Content:
So you don't technically need it.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 142
Type: Concept  

Content:
But we'll leave it on this file.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 143
Type: Implementation Step  

Content:
And then the target port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 144
Type: Concept  

Content:
Well that's going to be the port that the database listens on which is 5432.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 145
Type: Implementation Step  

Content:
And then we can set the service port to be the same just to keep it simple.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 146
Type: Implementation Step  

Content:
And then finally we need a selector.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 147
Type: Concept  

Content:
So we have to select the database pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 148
Type: Concept  

Content:
So we'll look up the labels for the database pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 149
Type: Concept  

Content:
And paste that there.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 150
Type: Implementation Step  

Content:
Let's now create the service for the voting application.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 151
Type: Concept  

Content:
And I'm going to just grab the DB service, copy it.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 152
Type: Concept  

Content:
And let's go and update the values.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 153
Type: Implementation Step  

Content:
So first of all this is going to be we'll just call this service called vote.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 154
Type: Concept  

Content:
We'll give it the label of vote as well.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 155
Type: Concept  

Content:
Now for the type the vote service needs to be accessible outside of the Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 156
Type: Concept  

Content:
So we need to be able to access the application.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 157
Type: Concept  

Content:
This is kind of like the entry point into our application cluster.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 158
Type: Concept  

Content:
IP does not give that functionality to us.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 159
Type: Concept  

Content:
So we need to use either Nodeport or Loadbalancer.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 160
Type: Concept  

Content:
We're going to use Nodeport for this demonstration.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 161
Type: Implementation Step  

Content:
Then for the DB for the name we'll just call this vote service Target port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 162
Type: Concept  

Content:
Well, to get that we have to go to the voting app.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 163
Type: Concept  

Content:
Here we can see it's listening on port 80.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 164
Type: Best Practice  

Content:
So this should be port 80.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 165
Type: Concept  

Content:
And just to kind of mix things up remember you know normally you just kind of set the service port to be the same.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 166
Type: Concept  

Content:
But technically it can be different.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 167
Type: Concept  

Content:
So if I wanted to I could set this to be 8080, and that's perfectly fine.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 168
Type: Implementation Step  

Content:
That just means that whenever somebody wants to talk to this service, they're going to send it on port 8080 to the service IP, which will then get forwarded to port 80 on the container.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 169
Type: Concept  

Content:
Now, since we are using a type node port, we need to add in another field which is node port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 170
Type: Best Practice  

Content:
And this is basically going to tell the the nodes in our Kubernetes cluster what port they should listen on so that they can forward traffic to these remote servers.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 171
Type: Concept  

Content:
It has to be within the specific range.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 172
Type: Concept  

Content:
So we're going to do 31,000.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 173
Type: Concept  

Content:
So now when a user sends a request to the IP address of one of our nodes, he's going to send it to this port and it's going to forward it to the vote service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 174
Type: Implementation Step  

Content:
And then the vote service can then forward it to the vote pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 175
Type: Implementation Step  

Content:
Then we need a selector.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 176
Type: Concept  

Content:
So we have to go to the voting app.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 177
Type: Concept  

Content:
Grab the app vote.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 178
Type: Best Practice  

Content:
And that should be everything that we need for the vote service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 179
Type: Concept  

Content:
And the final service that we need is going to be the result service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 180
Type: Concept  

Content:
And we can copy the vote service in this case.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 181
Type: Concept  

Content:
And you're going to see that things are going to be fairly close.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 182
Type: Concept  

Content:
Uh, we're going to change the name to be result.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 183
Type: Concept  

Content:
The label is also going to be result.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 184
Type: Concept  

Content:
Uh, since the result service needs to be exposed to the outside world, it needs to be either of type node port or load balancer.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 185
Type: Concept  

Content:
We're going to use node port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 186
Type: Concept  

Content:
In this case we'll name the port to be result service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 187
Type: Concept  

Content:
Let's give it a different node port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 188
Type: Concept  

Content:
So it's going to be accessible on how about 31,001 target port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 189
Type: Concept  

Content:
That's going to be what port is the result app listening on which is port 80.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 190
Type: Concept  

Content:
So that's fine.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 191
Type: Implementation Step  

Content:
And then if you want to you can also change this to be a different value.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 192
Type: Concept  

Content:
You can keep it.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 193
Type: Concept  

Content:
You could be 80.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 194
Type: Concept  

Content:
It can be 8080.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 195
Type: Concept  

Content:
Or in this case we'll just set it to be something different 8081.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 196
Type: Implementation Step  

Content:
And then we have to change the selector to be of whatever the result app is, which is result.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 197
Type: Implementation Step  

Content:
So now that we have all of the specifications and all of the Kubernetes manifest, we can go ahead and deploy it.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 198
Type: Concept  

Content:
I already have a cluster set up.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 199
Type: Concept  

Content:
If I do kubectl get node, you can see I've got a single node cluster here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 200
Type: Concept  

Content:
And if I do kubectl get pod you can see there's nothing.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 201
Type: Concept  

Content:
And if I do kubectl get service there's just the default Kubernetes service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 202
Type: Implementation Step  

Content:
So at this point we can just deploy everything.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 203
Type: Implementation Step  

Content:
And the best way to do that is I can just do kubectl apply dash f.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 204
Type: Concept  

Content:
And I just do current directory.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 205
Type: Implementation Step  

Content:
And it's going to deploy all of these files.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 206
Type: Implementation Step  

Content:
Or if you want to you can go in and deploy each one manually.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 207
Type: Implementation Step  

Content:
So you could do pod dot YAML and then go to DB service, dot YAML and so on.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 208
Type: Implementation Step  

Content:
But you could just apply an entire folder.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 209
Type: Concept  

Content:
So I'll do that.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 210
Type: Implementation Step  

Content:
You can see it went ahead and created everything there.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 211
Type: Concept  

Content:
All right.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 212
Type: Implementation Step  

Content:
So now if we take a look we can verify what's been created.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 213
Type: Concept  

Content:
So if I do kubectl get pod you're going to see that we've got the five pods the pod the result pod.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 214
Type: Concept  

Content:
The readeth.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 215
Type: Concept  

Content:
The database.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 216
Type: Concept  

Content:
The worker.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 217
Type: Concept  

Content:
You want to see that they're ready in a one slash, one state.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 218
Type: Concept  

Content:
And running.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 219
Type: Concept  

Content:
That means everything looks good.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 220
Type: Concept  

Content:
And you can see they've been up for two minutes and 20s.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 221
Type: Concept  

Content:
If I do kubectl get service, you can type in the whole word service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 222
Type: Concept  

Content:
Or you can use the shorthand notation of SVC.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 223
Type: Concept  

Content:
It's going to show us the different services.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 224
Type: Concept  

Content:
So we've got the vote service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 225
Type: Concept  

Content:
And I do want to show you guys how the output kind of lines up to the configuration.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 226
Type: Concept  

Content:
So you can see the port value is here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 227
Type: Implementation Step  

Content:
And then the node port value is here.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 228
Type: Concept  

Content:
So remember this is the port that we're going to send traffic to on whatever the IP address of our node is.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 229
Type: Concept  

Content:
You can see the same thing with the result.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 230
Type: Concept  

Content:
The result service 8081.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 231
Type: Concept  

Content:
And it can be accessible through this node port.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 232
Type: Implementation Step  

Content:
And then we've got the two cluster IP services which you can see of type cluster IP.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 233
Type: Operational Insight  

Content:
They're only going to be accessible internally.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 234
Type: Concept  

Content:
So now let's go ahead and test this out.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 235
Type: Concept  

Content:
So if I do a kubectl get node dash o wide.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 236
Type: Concept  

Content:
When you do o wide it's going to give us the IP address of the nodes.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 237
Type: Concept  

Content:
So here I can access the node using this IP address.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 238
Type: Concept  

Content:
So I'm going to copy this.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 239
Type: Concept  

Content:
And I'm going to go to my browser.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 240
Type: Concept  

Content:
And we can just put in the IP address there.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 241
Type: Implementation Step  

Content:
And then if we want to access the let's say the vote service, you just grab this port and the vote service will be accessible through that port on that node.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 242
Type: Concept  

Content:
So I'll just paste that in.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 243
Type: Concept  

Content:
And you can see we have access to the vote service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 244
Type: Concept  

Content:
So if I select cats and I cast a vote great.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 245
Type: Implementation Step  

Content:
And then now what we want to do is we want to check the results service.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 246
Type: Concept  

Content:
The results service is available on 31001.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 247
Type: Concept  

Content:
So let's go to 31001.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 248
Type: Concept  

Content:
And we can see cats 100%.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 249
Type: Concept  

Content:
Dogs 0%.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 250
Type: Concept  

Content:
So this just confirms we can access the node port services.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 251
Type: Concept  

Content:
And the applications are all communicating with one another destroying the information in the databases and there probably retrieving that data.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 252
Type: Implementation Step  

Content:
So all of the services are working and everything's been deployed properly onto the Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 08_Microservices Architecture
- Lecture: 047_Demo - Deploying Voting App on Kubernetes
- File: 047_Demo - Deploying Voting App on Kubernetes.txt
- Topic: Demo - Deploying Voting App on Kubernetes
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
