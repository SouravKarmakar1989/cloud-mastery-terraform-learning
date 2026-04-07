# Extraction: certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management / 105_Configuring ConfigMaps in Applications

---

## Entry 1
Type: Concept  

Content:
In this lecture we will discuss how to work with configuration data in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 2
Type: Concept  

Content:
In the previous lecture we saw how to define environment variables in a Pod definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 3
Type: Concept  

Content:
When you have a lot of Pod definition files, it will become difficult to manage the environment data stored within the various files.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 4
Type: Concept  

Content:
We can take this information out of the Pod definition file and manage it centrally using configuration maps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
Config maps are used to pass configuration data in the form of key value pairs in Kubernetes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 6
Type: Implementation Step  

Content:
When a pod is created, inject the configmap into the pod so the key value pairs are available as environment variables for the application hosted inside the container in the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
There are two phases involved in configuring Configmaps.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
First, create the Configmap and second, inject them into the pod just like any other Kubernetes object.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Concept  

Content:
There are two ways of creating a Configmap.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
The imperative way without using a config map definition file and the declarative way by using a config map definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 11
Type: Warning/Pitfall  

Content:
If you do not wish to create a config map definition file, you could simply use the cube control create config map command and specify the required arguments.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
Let's take a look at that first.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
With this method, you can directly specify the key value pairs in the command line to create a config map of the given values.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 14
Type: Concept  

Content:
Run the cube control.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 15
Type: Implementation Step  

Content:
Create config map command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
The command is followed by the config name and the option from literal.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
The firm literal option is used to specify the key value pairs in the command itself.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Exam Tip  

Content:
In this example, we are creating a config map by the name appconfig with a key value pair of app color equals blue.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Exam Tip  

Content:
If you wish to add additional key value pairs, simply specify the from literal options multiple times.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
However, this will get complicated when you have too many configuration items.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
Another way to input configuration data is through a file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
Use the from file option to specify a path to the file that contains the required data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
The data from this file is read and stored under the name of the file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
Let us now look at the declarative approach for this.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
We create a definition file just like how we did for the pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
The file has an API version kind metadata instead of spec.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
Here we have data.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
The API version is v1.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
The kind is configmap.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
Under metadata we specify a name for the Configmap.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
We will call it App.config under data and the configuration data in a key value format.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
Run the cube control, create command and specify the configuration file name.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
So that creates the App.config Configmap map with the values we specify.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
You can create as many config maps as you need in the same way for various different purposes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
Here I have one of my application, other for MySQL and another one for redes.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So it is important to name the config maps appropriately as you will be using these names later while associating it with pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
To view config maps, run the kube control.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
Get Configmaps command.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Implementation Step  

Content:
This lists the newly created config map named Appconfig.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
The describe configmaps command lists the configuration data as well under the data section.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
Now that we have the config map created, let us proceed with step two.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 42
Type: Concept  

Content:
Configuring it with a pod.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
Here I have a simple pod definition file that runs my simple web application.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
To inject an environment variable, add a new property to the container called env from the env from property is a list so we can pass as many environment variables as required.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Each item in the list corresponds to a config map item.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 46
Type: Implementation Step  

Content:
Specify the name of the config map we created earlier.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 47
Type: Implementation Step  

Content:
This is how we inject a specific config map from the ones we created before creating the pod definition file.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
Now creates a web application with a blue background.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 49
Type: Concept  

Content:
What we just saw was using config maps to inject environment variables.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 50
Type: Concept  

Content:
There are other ways to inject configuration data into pods.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
You can inject it as a single environment variable, or you can inject the whole data as files in a volume.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
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
We will look at some of these options in the coding exercises that accompany this lecture.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Troubleshooting  

Content:
So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.

Source:
- Course: certified-kubernetes-administrator-with-practice-tests
- Module: 05_Application Lifecycle Management
- Lecture: 105_Configuring ConfigMaps in Applications
- File: 105_Configuring ConfigMaps in Applications.txt
- Topic: Configuring ConfigMaps in Applications
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
