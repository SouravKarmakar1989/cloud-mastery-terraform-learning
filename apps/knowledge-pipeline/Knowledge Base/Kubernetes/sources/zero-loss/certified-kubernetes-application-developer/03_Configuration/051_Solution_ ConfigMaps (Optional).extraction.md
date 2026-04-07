# Extraction: certified-kubernetes-application-developer / 03_Configuration / 051_Solution_ ConfigMaps (Optional)

---

## Entry 1
Type: Concept  

Content:
-: Hey, I'm Sanji, one of the co-instructors of this course, and I'll be walking you through this solutions video for the ConfigMap section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
For the first question, we have to find out how many pods exist in the system.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
And we can do this by doing a kubectl get pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And so we can see here we have exactly one pod running and that pod's name is web app dash color.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So we'll select one here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
For the next question, we have to figure out what is the environment variable name set on the container in the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
And so, now we can do a kubectl describe pod and then just grab the pod name here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
And in this output, we wanna go up to the containers section.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
And in here, there's going to be a section called environment.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So this is gonna be where all of the environment variables are set.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
And we can see that there is an environment variable called app underscore color.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
And so, we'll select that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
And make sure you select the one that's app underscore color 'cause there's also an app dash color, as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
The next question is asking what is the value set on the environment variable called app underscore color?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Warning/Pitfall  

Content:
And so, we don't actually have to run another command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
We can just see that the value's set to pink.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
And we'll select pink.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Implementation Step  

Content:
The next question is just telling us to click the web app color tab so that we can take a look at the web app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
And when it opens up, we can see that this is what the web app looks like.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
And so, I'll just hit okay right here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Implementation Step  

Content:
The next question is asking us to update the environment variable on the pod to display a green background.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
And it gives a few extra notes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Warning/Pitfall  

Content:
It's saying that we need to delete and recreate the pod and only make the necessary changes, and to make sure that we don't modify the name of the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Best Practice  

Content:
And so, down here, there's a couple of bullet points and it's just letting us know what is the name we should give it, the pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
And we can see it's the same web app dash color.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
We're gonna give it the same label.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Implementation Step  

Content:
And then, the important part is we have to provide an environment variable called app underscore color and this time, set it to be green instead of pink.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
So the first thing that I'm gonna do is I'm gonna run kubectl get pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
And so, we can see that the pod right now is called web app dash color.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And what I wanna do is I wanna get the current yaml configuration for this pod so that I can just copy it and just change the environment variable name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Implementation Step  

Content:
So I'll do a kubectl get pod and then, we'll do web app dash color.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
And I'll say dash 0.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Yam, also, that's gonna get the yaml configuration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
And I'm gonna just pipe it to a file and I'll call this pod dot yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
And the next thing I wanna do is I wanna delete the current running pod, so I'll do kubectl delete pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
And then, we'll do the web app dash color.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
And now that the pod's deleted, let's go into the pod dot yaml file and make some modifications.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
So I'll do a VI pod dot yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
And what we wanna do is we wanna go down to the environment section here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Concept  

Content:
And so, we can see that the value is set to pink.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
And we wanna change this to green.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Best Practice  

Content:
And that should be the only thing that we have to change.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Implementation Step  

Content:
And so, now we can do a kubectl apply dash F, and then pass in the pod dot yaml file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
And let's verify that that worked.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
So I'll run check here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
And we can see that everything passed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Implementation Step  

Content:
And the next question is just telling us to verify that the web app actually did, in fact, change its color.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
So we'll go back to our web app and I'm just going to do a refresh.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
And we can see that the color changed to green.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
The next question is asking us how many ConfigMaps exist in the default namespace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
And to take a look at all of the ConfigMaps, we can do a kubectl get, and we can do ConfigMap.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
Or you can just do CM for short.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
And we can see that there are two ConfigMaps.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Concept  

Content:
So we'll go back and answer with two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Implementation Step  

Content:
For the next question, we have to identify the database host from the ConfigMap called DB dash config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Concept  

Content:
And so, we have this ConfigMap called DB dash config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
So we'll do kubectl describe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Implementation Step  

Content:
And once again, you can either type out ConfigMap or we can just do CM, and then DB dash config.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Exam Tip  

Content:
And for the, under the data section, if we go for the database host key, we can see that the value is set to be sql 01 dot example dot com.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So I'll select sql 01.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Implementation Step  

Content:
For the next question, we have to create a new ConfigMap for the web app dash color pod, using the spec given below.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
So we have to give it, the ConfigMap, a name of web app dash config dash map, and a value, our key value pair, of app underscore color set to be dark blue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Implementation Step  

Content:
And so, we're gonna run a imperative command to create this ConfigMap.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Implementation Step  

Content:
So we'll do kubectl create.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Implementation Step  

Content:
And then, you can type out the word ConfigMap or just do CM.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Concept  

Content:
And here we wanna grab the name of the ConfigMap so this is going to be web app dash config dash map.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Warning/Pitfall  

Content:
I'm gonna copy this just to make sure I don't make a mistake.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Implementation Step  

Content:
And then, we have to pass in the dash dash from literal option.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 69
Type: Warning/Pitfall  

Content:
And I'm gonna copy this, as well, just so I don't make a mistake.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Concept  

Content:
And that's all we have to do, so I'll run that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Implementation Step  

Content:
It got created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Concept  

Content:
And I'll just run a check just to verify that it worked.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
And it looks like it was successful so we'll go on to the next question.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Implementation Step  

Content:
For the next question, we have to update the environment variable on the pod to make use of the newly created ConfigMap.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Implementation Step  

Content:
And so, we can see these settings that we have to apply.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Concept  

Content:
So on the pod name of web app dash color, we have to set the environment variable to make use of the new ConfigMap.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Implementation Step  

Content:
All right, so first, let's delete the current pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Concept  

Content:
And I'll do a kubectl get pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
And I'll do a kubectl delete pod web app dash color.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
All right, so now that the pod's deleted, let's modify the pod dot yaml to make use of the ConfigMap.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
And so, right now, the environment variable is set using just a standard key value.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Implementation Step  

Content:
And we need to now make it reference that ConfigMap we created.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Concept  

Content:
And so, what we're gonna do is we're gonna keep the same name, but we're gonna change the value.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Concept  

Content:
So instead of providing the value directly, we're gonna change this to value from.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Implementation Step  

Content:
And then, we'll remove the green here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
And underneath value from, we're gonna say ConfigMap key ref.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Concept  

Content:
So this is gonna reference a ConfigMap.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Implementation Step  

Content:
And then, here, we have to provide the name of the ConfigMap.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
I'll say name, and this is gonna be set to web app dash config dash map.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
And then, we have to provide the specific key from this ConfigMap.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
And the key is gonna be web app underscore color.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Concept  

Content:
And that's actually a mistake.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
It's just app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Concept  

Content:
I'm gonna delete the web part.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
So it's just app underscore color.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Best Practice  

Content:
And that should be all the changes that we have to make.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
So now the environment variable app underscore color is going to be set to this ConfigMap and it's gonna reference this specific key in that ConfigMap.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Implementation Step  

Content:
So now, we can do a kubectl apply dash F pod dot yaml.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Implementation Step  

Content:
Pod's created, and we can now run a check just to verify that that worked.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
And it looks like everything's good to go.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
And the last question is just telling you to verify that the changes were actually made to the web app.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
So I'm just gonna select web app color here.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
And we can see that now it's set to dark blue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
So now that we've verified that it's blue now, I'll just hit okay, and that's going to complete this assignment or this lab session.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 051_Solution_ ConfigMaps (Optional)
- File: 051_Solution_ ConfigMaps (Optional).txt
- Topic: Solution_ ConfigMaps (Optional)
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
