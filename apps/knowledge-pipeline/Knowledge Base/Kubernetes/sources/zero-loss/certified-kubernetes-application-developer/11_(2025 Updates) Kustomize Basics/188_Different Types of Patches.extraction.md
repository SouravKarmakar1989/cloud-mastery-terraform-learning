# Extraction: certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics / 188_Different Types of Patches

---

## Entry 1
Type: Concept  

Content:
Instructor: Now this is gonna complicate things a little bit more, but for both the JSON 6902 patch as well as the strategic merge patch, there's two different ways you can define a patch.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Implementation Step  

Content:
The first one is inline, and that's the one we've kind of been working with till now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
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
And that's where you define the patch within the Kustomization.YAML file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
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
The other method is by using a separate file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 5
Type: Warning/Pitfall  

Content:
So what we can do instead is in the Kustomization.YAML file, we can provide the target like we normally do, and then we can provide a path to a YAML file that's going to contain all of our patches, so that we don't have to clutter up our Kustomization.YAML file.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Concept  

Content:
And so what that's going to look like is in the replica-patch.YAML file that's going to contain a list of all of our patches.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
So in this case, I've just got one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
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
So either one of these methods works.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
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
Once again, if you want to just put it inline in your Kustomization.YAML file, feel free to do so.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Implementation Step  

Content:
If you have a lot of patches, it may start to clutter things up, and then you can move it to a separate file and then use this separate file method.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
And we could do the same thing for a strategic merge patch.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Concept  

Content:
We can define everything inline, or if we want to, we can specify a path to a YAML file that's going to contain all of our patches.

Source:
- Course: certified-kubernetes-application-developer
- Module: 11_(2025 Updates) Kustomize Basics
- Lecture: 188_Different Types of Patches
- File: 188_Different Types of Patches.txt
- Topic: Different Types of Patches
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
