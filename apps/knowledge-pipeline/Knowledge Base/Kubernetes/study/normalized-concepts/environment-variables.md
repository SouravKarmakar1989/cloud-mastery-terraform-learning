# Normalized Concept: Environment Variables

- Concept Key: environment-variables
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 630

## 1. Definition
- In this lecture we will discuss how to work with configuration data in Kubernetes.
- In the previous lecture we saw how to define environment variables in a Pod definition file.
- When you have a lot of Pod definition files, it will become difficult to manage the environment data stored within the various files.
- We can take this information out of the Pod definition file and manage it centrally using configuration maps.
- Config maps are used to pass configuration data in the form of key value pairs in Kubernetes.
- There are two phases involved in configuring Configmaps.
- There are two ways of creating a config map.
- App.
- The imperative way without using a config map definition file and the declarative way by using a config map definition file.
- Run the cube control.

## 2. First-Principles Mental Model
- When a pod is created, inject the configmap into the pod so the key value pairs are available as environment variables for the application hosted inside the container in the pod.
- First, create the config map and second, inject them into the pod just like any other Kubernetes object.
- Let's take a look at that first.
- With this method, you can directly specify the key value pairs in the command line to create a config map of the given values.
- Create config map command.
- For this, we create a definition file just like how we did for the pod.
- Under data and the configuration data in a key value format, run the kube control create command and specify the configuration file name.
- So that creates the Appconfig Configmap map with the values we specify.
- You can create as many config maps as you need in the same way for various different purposes.
- This lists the newly created config map named appconfig.

## 3. Why This Exists
- In this lecture we will discuss how to work with configuration data in Kubernetes.
- In the previous lecture we saw how to define environment variables in a Pod definition file.
- When you have a lot of Pod definition files, it will become difficult to manage the environment data stored within the various files.
- Config maps are used to pass configuration data in the form of key value pairs in Kubernetes.
- If you do not wish to create a config map definition file, you could simply use the cube control, create Configmap command and specify the required arguments.
- With this method, you can directly specify the key value pairs in the command line to create a config map of the given values.
- The from literal option is used to specify the key value pairs in the command itself.
- If you wish to add additional key value pairs, simply specify the from literal options multiple times.
- Another way to input configuration data is through a file.
- Use the from file option to specify a path to the file that contains the required data.

## 4. Internal Working
- When a pod is created, inject the configmap into the pod so the key value pairs are available as environment variables for the application hosted inside the container in the pod.
- First, create the config map and second, inject them into the pod just like any other Kubernetes object.
- Let's take a look at that first.
- With this method, you can directly specify the key value pairs in the command line to create a config map of the given values.
- Create config map command.
- For this, we create a definition file just like how we did for the pod.
- Under data and the configuration data in a key value format, run the kube control create command and specify the configuration file name.
- So that creates the Appconfig Configmap map with the values we specify.
- You can create as many config maps as you need in the same way for various different purposes.
- This lists the newly created config map named appconfig.
- Now that we have the config map created, let us proceed with step two.
- Specify the name of the config map we created earlier.

## 5. Key Objects / Fields / Relationships
- In the previous lecture we saw how to define environment variables in a Pod definition file.
- When you have a lot of Pod definition files, it will become difficult to manage the environment data stored within the various files.
- We can take this information out of the Pod definition file and manage it centrally using configuration maps.
- When a pod is created, inject the configmap into the pod so the key value pairs are available as environment variables for the application hosted inside the container in the pod.
- There are two phases involved in configuring Configmaps.
- First, create the config map and second, inject them into the pod just like any other Kubernetes object.
- If you do not wish to create a config map definition file, you could simply use the cube control, create Configmap command and specify the required arguments.
- For this, we create a definition file just like how we did for the pod.
- The file has an API version kind metadata instead of spec.
- The API version is v1.

## 6. YAML Deep Dive
- If you do not wish to create a config map definition file, you could simply use the cube control, create Configmap command and specify the required arguments.
- With this method, you can directly specify the key value pairs in the command line to create a config map of the given values.
- The from literal option is used to specify the key value pairs in the command itself.
- If you wish to add additional key value pairs, simply specify the from literal options multiple times.
- Use the from file option to specify a path to the file that contains the required data.
- The file has an API version kind metadata instead of spec.
- The kind is configmap.
- Under metadata we specify a name for the Configmap.
- Under data and the configuration data in a key value format, run the kube control create command and specify the configuration file name.
- So that creates the Appconfig Configmap map with the values we specify.

## 7. kubectl / command usage
- If you do not wish to create a config map definition file, you could simply use the cube control, create Configmap command and specify the required arguments.
- With this method, you can directly specify the key value pairs in the command line to create a config map of the given values.
- Create config map command.
- The command is followed by the config name and the option from literal.
- The from literal option is used to specify the key value pairs in the command itself.
- Under data and the configuration data in a key value format, run the kube control create command and specify the configuration file name.
- To view config maps, run the kube control get config maps command.
- The describe config maps command lists the configuration data as well under the data section.
- Given a Pod definition file which uses the same image as the docker command, we ran in the last lecture to set an environment variable, use the env property.
- So we're gonna do a kubectl, create deployment, and it's gonna be called mywebapp, then the image is going to be nginx, and we wanna set the replicas to two.

## 8. Real-world scenarios
- When a pod is created, inject the configmap into the pod so the key value pairs are available as environment variables for the application hosted inside the container in the pod.
- In this example, we are creating a config map by the name appconfig with a key value pair of app color equals blue.
- So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.
- The name is the name of the environment variable made available with the container, and the value is its value.
- For the first question, we have to create a deployment called MyDashWebApp with an image of NGINX, a label of Tier Frontend, and a replicas of two.
- So we're gonna do a kubectl, create deployment, and it's gonna be called mywebapp, then the image is going to be nginx, and we wanna set the replicas to two.
- And I'm gonna do a kubectl apply -f and so that's going to create a deployment.
- You can just verify that by doing a kubectl get deployment.
- Now the next thing that we have to do is we have to expose the deployment as a node port service with the name of frontend-service with a port of 80 and a node port of 30083.
- So let's run the imperative command kubectl expose deployment and then we'll pass in the name of the deployment, which is mydashwebapp.

## 9. Pitfalls and misunderstandings
- If you do not wish to create a config map definition file, you could simply use the cube control, create Configmap command and specify the required arguments.
- So I'm gonna copy this, and I'm gonna delete the host part here, I don't need that.
- And so, we don't actually have to run another command.
- It's saying that we need to delete and recreate the pod and only make the necessary changes, and to make sure that we don't modify the name of the pod.
- I'm gonna copy this just to make sure I don't make a mistake.
- And I'm gonna copy this, as well, just so I don't make a mistake.
- Now we know that it may not allow us of course it's not gonna allow us to edit this on the pod but we don't really care because we just need the edited or updated manifest file that we can then use to replace the pod.
- And so we don't want the the from file option.
- Fortunately, as we said, Helm keeps track of everything associated with a release, so we don't have to upgrade our objects one by one.
- Now let's assume this upgrade did something that we don't like.

## 10. Troubleshooting angle
- So head over to the coding exercises section and practice viewing, configuring and troubleshooting environment variables on a live Kubernetes environment.
- So I'm gonna just copy this, and under spec, let's add that in there, and let me fix the spacings.
- And we have to add a liveness probe to the container to restart if the command ls/bar/www/atm/probe fails.

## 11. CKA / CKAD relevance
- In this example, we are creating a config map by the name appconfig with a key value pair of app color equals blue.
- If you wish to add additional key value pairs, simply specify the from literal options multiple times.
- Instructor: In this video, I'm gonna walk you through the solutions for the mock exam two.
- So if you go to the Kubernetes documentation, under this section here, node affinity, this is gonna give you an example of how to configure a node affinity.
- For the next question, we have to create a pod called Multipod that's going to have two containers with the following configurations.
- So I'll just call this multipod.
- And then we'll do a kubectl apply multipod.
- So if you want to, you can pull up the Kubernetes documentations for a volume, and you could just grab one of the examples, and then you use that as a base.
- And so that's going to wrap up mock exam two.
- And for the, under the data section, if we go for the database host key, we can see that the value is set to be sql 01 dot example dot com.

## 12. Source Contributions
- Matched Global Concepts:
  - ConfigMaps (match score: 2, notes: 53)
  - Environment Variables (match score: 2, notes: 10)
  - Mock Exam -2 (Solution) (match score: 2, notes: 138)
  - Solution_ ConfigMaps (Optional) (match score: 2, notes: 104)
  - Customizing Chart Parameters (match score: 2, notes: 31)
  - Secrets (match score: 2, notes: 132)
  - Lab Solution - Env Variables (Optional) (match score: 2, notes: 84)
  - Lifecycle Management With Helm (match score: 2, notes: 78)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 05_Application Lifecycle Management: 151 note entries
  - certified-kubernetes-administrator-with-practice-tests / 12_(2025 Updates)Helm Basics: 109 note entries
  - certified-kubernetes-application-developer / 03_Configuration: 232 note entries
  - certified-kubernetes-application-developer / 15_Mock Exams: 138 note entries
- Explicit Source Reference Samples:
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 1 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 2 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 3 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 4 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 5 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 6 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 7 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 8 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 9 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 10 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 11 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 12 | Type Warning/Pitfall
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 13 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 14 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 15 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 16 | Type Implementation Step
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 17 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 18 | Type Concept
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 19 | Type Exam Tip
  - ../../../../build/intermediate/section-maps/BATCH-020_section_concept_map.md | 049_ConfigMaps.extraction.md | Entry 20 | Type Exam Tip

