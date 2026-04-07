# Extraction: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 184_Image Transformers

---

## Entry 1
Type: Concept  

Content:
(piano music) Instructor: Let's move on to the image transformer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
The image transformer is what's going to allow us to modify an image that a specific deployment or container is going to use through Kustomize.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Exam Tip  

Content:
So, in this example, I have a deployment.yaml file, where we're going to deploy a nginx server.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
And the image right now is set to nginx, but we can transform that using Kustomize.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
So, let's define our kustomization.yaml file and we're gonna have to specify two properties.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
There's a name and then a new name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So, the name is going to reference the name of the specific image that we want to replace.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Concept  

Content:
So, this is going to look through all of our Kubernetes configs and it's going to find all the containers that use an image called nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
And then, we're going to replace it with the new name, which is haproxy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Concept  

Content:
So, it's going to replace that image of nginx with haproxy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
Now, just to clear up some potential confusions, you may notice that under the kustomization.yaml file, we have a name.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
And then, under the containers, under the deployment.yaml file, we have a name as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
These two things are not related.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
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
So, the name under the kustomization.yaml file specifies the name of the image, not necessarily the name of the container.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Warning/Pitfall  

Content:
So, ignore the name of the container that's set to web, we don't care about that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 16
Type: Concept  

Content:
The name property under kustomization.yaml file looks specifically for an image called nginx.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Troubleshooting  

Content:
Something to keep in mind, it confused me at first, so I figured you guys would probably run into the same issue.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
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
And so, after we apply this, we can take a look at the new images now set to haproxy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So, now, we know how to change the image using Kustomize.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Warning/Pitfall  

Content:
However, let's say that we don't actually want to change the image, so we've got our nginx image here as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
But let's say we just wanna change the tag.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
Well, we can use the image transformer to perform that action as well.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
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
So, instead of using the new image property, we can assign the new tag property.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So, this is going to give the new tag that we wanna assign to that image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Concept  

Content:
So, it's going to look for all of the containers using an nginx image.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Implementation Step  

Content:
And then, it's going to add a tag of 2.4.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Concept  

Content:
So, if we take a look at the final result, we can now see it's nginx: 2.4.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
Now, if we want to, we can actually combine the new image and new tag properties together, so that we can modify not only the image, but the tag.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Concept  

Content:
So, if we wanna change our nginx image to be haproxy and assign a tag of 2.4, we can do that all within an image transformer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
And the final result is going to be haproxy: 2.4.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 184_Image Transformers
- File: 184_Image Transformers.txt
- Topic: Image Transformers
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
