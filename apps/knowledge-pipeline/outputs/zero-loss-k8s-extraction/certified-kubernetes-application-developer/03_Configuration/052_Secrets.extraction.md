# Extraction: certified-kubernetes-application-developer / 03_Configuration / 052_Secrets

---

## Entry 1
Type: Concept  

Content:
Welcome to this lecture on secrets in Kubernetes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Here we have a simple Python web application that connects to a MySQL database on success.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
The application displays a successful message.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
If you look closely into the code you will see the host name, username, and password hard coded.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
This is of course not a good idea as we learned in the previous lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
One option would be to move these values into a Configmap.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
The Configmap stores configuration data in plain text format, so while it would be okay to move the host name and username into a configmap, it is definitely not the right place to store a password.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
This is where secrets come in.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Secrets are used to store sensitive information like passwords or keys.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
They're similar to config maps, except that they are stored in an encoded or hashed format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Implementation Step  

Content:
As with Configmaps, there are two steps involved in working with secrets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
First, create the secret and second, inject it into pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 13
Type: Concept  

Content:
There are two ways of creating a secret.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
The imperative way without using a secret definition file and the declarative way.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
By using a secret definition file with the imperative method, you can directly specify the key value pairs in the command line itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Implementation Step  

Content:
To create a secret of the given values, run the cube control.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Implementation Step  

Content:
Create secret generic command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
The command is followed by the secret name and the option from literal.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 19
Type: Concept  

Content:
The from literal option is used to specify the key value pairs in the command itself.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
In this example, we are creating a secret by the name app secret with a key value pair db underscore host equals MySQL.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 21
Type: Exam Tip  

Content:
If you wish to add additional key value pairs, simply specify the from literal options multiple times.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
However, this could get complicated when you have too many secrets to pass in.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Another way to input the secret data is through a file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Use the from file option to specify a path to the file that contains the required data.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
The data from this file is read and stored under the name of the file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Let us now look at the declarative approach.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
For this we create a definition file just like how we did for the config map.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
The file has API version kind metadata and data.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
The API version is v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Kind is secret.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Under metadata specify the name of the secret.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
We will call it app secret.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Concept  

Content:
Under data, add the secret data in a key value format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
However, one thing we discussed about secrets was that they are used to store sensitive data and are stored in an encoded format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Here we have specified the data in plain text, which is not very safe.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
So while creating a secret with a declarative approach, you must specify the secret values in a hashed format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
So you must specify the data in an encoded form like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
But how do you convert the data from plain text to an encoded format on a Linux host?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Run the command echo n followed by the text you're trying to convert, which is MySQL in this case, and pipe that to the base64 utility.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
To view secrets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 41
Type: Concept  

Content:
Run the kube control.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Get secrets command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 43
Type: Implementation Step  

Content:
This lists the newly created secret along with another secret previously created by Kubernetes for its internal purposes.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 44
Type: Implementation Step  

Content:
To view more information on the newly created secret, run the Kube control.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Describe secret command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
This shows the attributes in the secret, but hides the value themselves.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
To view the values as well, run the Kube control.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Get secret command with the output displayed in a YAML format using the dash o option.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
You can now see the hashed values as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Now how do you decode these hashed values?

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Use the same base64 command used earlier to encode it, but this time add a decode option to it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Now that we have secret created, let us proceed with step two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 53
Type: Concept  

Content:
Configuring it with a pod.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Here I have a simple pod definition file that runs my application to inject an environment variable.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Add a new property to the container called env from the env from property is a list so we can pass as many environment variables as required.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Each item in the list corresponds to a secret item.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 57
Type: Implementation Step  

Content:
Specify the name of the secret we created earlier.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
Creating the pod definition file now makes the data in the secret available as environment variables for the application.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
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
What we just saw was injecting secrets as environment variables into the pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 60
Type: Concept  

Content:
There are other ways to inject secrets into pods.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 61
Type: Concept  

Content:
You can inject a single environment variables or inject the whole secret as files in a volume.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Implementation Step  

Content:
If you were to mount the secret as a volume in the pod, each attribute in the secret is created as a file with the value of the secret as its content.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 63
Type: Implementation Step  

Content:
In this case, since we have three attributes in our secret, three files are created, and if we look at the contents of the db password file, we see the password in it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Concept  

Content:
That's it for this lecture.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 65
Type: Concept  

Content:
Head over to the coding exercises and practice working with secrets.

Source:
- Course: certified-kubernetes-application-developer
- Module: 03_Configuration
- Lecture: 052_Secrets
- File: 052_Secrets.txt
- Topic: Secrets
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---
