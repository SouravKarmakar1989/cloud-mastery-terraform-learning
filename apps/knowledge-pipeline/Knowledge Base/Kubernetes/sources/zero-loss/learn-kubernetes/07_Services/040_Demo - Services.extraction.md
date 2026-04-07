# Extraction: learn-kubernetes / 07_Services / 040_Demo - Services

---

## Entry 1
Type: Concept  

Content:
In this demo we're going to take a look at services in Kubernetes.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
In the previous demo we created a few pods by creating a deployment.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Implementation Step  

Content:
So let's check the status of that first.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Implementation Step  

Content:
So we have a deployment called Myapp deployment.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
And it has six replicas which is essentially six pods running in Kubernetes cluster.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
So now we have an application which is created to run on this cluster.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Implementation Step  

Content:
But in order for the end user to access it on their web browser, we have to create a service.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
And to do this, let's jump back to our editor.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
We have created a new directory called service.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
And within this service directory we're going to create a new file called Service definition dot YAML.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Warning/Pitfall  

Content:
Note that you don't really need to follow this directory structure as I'm doing.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Exam Tip  

Content:
I'm just following it to organize the examples. you could simply have all the files in the same location.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Implementation Step  

Content:
And just like before, the first thing that goes in is the root element.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Concept  

Content:
The API version.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Best Practice  

Content:
And for service it should be set to v1.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
For client we're going to specify service.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
So let's look that up from the list.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
And we're going to add a metadata with the name of the service which we can say my app service and this.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
And underneath that we're going to add the spec section.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Implementation Step  

Content:
And the first property that we will create is the type of service which we will set to node port.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
Now our goal is to be able to access our application on a port on the node, which is the minikube node in our case.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Implementation Step  

Content:
And then we will add the port and the default port at which nginx listens which is 80.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Concept  

Content:
And we're also going to add our target port, which is also port 80.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So this is basically the port on the service itself.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Implementation Step  

Content:
And next we're going to add a node port which we can set to a value such as 30,004.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Concept  

Content:
So it could be any value between 30,000 and 32,767.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
And this node port is a is the port on the node, the worker node, which is the minikube node on which the application will be made accessible.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Implementation Step  

Content:
Next we're going to add a selector, which helps us bind our service to the port with the same label so quickly.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
Let's check the deployment YAML file, and you'll notice that the label for the pod is app set to my app.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
So let us add the same value here under the selector section.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
So once this has been completed, our service definition file is complete.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Implementation Step  

Content:
And we can proceed to create this on our clusters. and I'm going to save it here and, um, jump back to my terminal.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Implementation Step  

Content:
And let me navigate to the new directory that we created.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Concept  

Content:
Um, and here is our service definition file.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Implementation Step  

Content:
So I'm going to create the service using the kubectl create command with the dash f option and specify the service definition dot YAML file as the input.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Implementation Step  

Content:
Now run this command and the service has been created.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Concept  

Content:
We can now run the kubectl get service command.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Concept  

Content:
And here you'll notice that the new service is visible.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
And the type of the service is node port, which uh because we want it to be accessible on the port on the worker node.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Implementation Step  

Content:
And here is the cluster IP which is also created for the service.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Implementation Step  

Content:
Now it's an address, uh, created for the service within the internet, uh, internal cluster network.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Concept  

Content:
And here is the port on the worker node that we can use to access our application.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Concept  

Content:
Location.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Best Practice  

Content:
So if you know the IP of the worker node, you can simply go to a browser and just type in the IP of the worker node followed by the port number, and you should be able to access this application.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Best Practice  

Content:
Now, since we are running this on minikube, we can also run the minikube service command followed by the name of the service, which is the My App service, and use the option Dash dash URL and it should print us the URL and with the service where the service is available.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
So let's try to access this on a browser so you can just copy this URL.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Go to your browser and paste that URL in the browser.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
Um, and we see that the default nginx web page.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
So that confirms that, um, the nginx application is up and running and we're able to access it on a web browser.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Implementation Step  

Content:
Well, that's it for this demo and I will see you in the next one.

Source:
- Course: learn-kubernetes
- Module: 07_Services
- Lecture: 040_Demo - Services
- File: 040_Demo - Services.txt
- Topic: Demo - Services
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
