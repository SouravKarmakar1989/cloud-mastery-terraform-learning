# Extraction: certified-kubernetes-application-developer / 09_Security / 160_API Deprecations

---

## Entry 1
Type: Concept  

Content:
-: We will now discuss about API deprecations.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 2
Type: Best Practice  

Content:
So we discussed that a single API group can support multiple versions at a time, but why do you need to support multiple versions and how many should you support?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 3
Type: Concept  

Content:
When can you remove an older version that is no longer required?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 4
Type: Concept  

Content:
This is answered by the API deprecation policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 5
Type: Concept  

Content:
By looking at the answers to these questions we will also understand the rules in the API deprecation policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 6
Type: Implementation Step  

Content:
First, let's look at the why.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 7
Type: Concept  

Content:
Let me give you a quick tour of the life cycle of an API group.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 8
Type: Exam Tip  

Content:
Let's for example say that we are planning to contribute to the Kubernetes project.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 9
Type: Implementation Step  

Content:
So we create an API group called code cloud.com under which we have two resources called Cores and Webinar.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 10
Type: Exam Tip  

Content:
This is just an example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 11
Type: Concept  

Content:
So we develop it in-house and we test it and when we are ready to merge it to the Kubernetes project we raise a PR and hopefully it gets accepted and we release it as an alpha version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 12
Type: Implementation Step  

Content:
So we call it V1 Alpha one because it's the first alpha version of the V1 version you can create a course or a webinar object using yaul file like this and using the API version code cloud.com/v1 alpha one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 13
Type: Concept  

Content:
Now, let's say for instance the webinar object didn't go well with the users and we decided to remove it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 14
Type: Implementation Step  

Content:
In the next Kubernetes release. can we just remove it from the V one alpha one version?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 15
Type: Concept  

Content:
No.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer
  - learn-kubernetes

---

## Entry 16
Type: Implementation Step  

Content:
That's where the first rule of API application policy comes into play.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 17
Type: Concept  

Content:
API elements may only be removed by incrementing the version of the API group meaning you can only remove the webinar element from the WE one alpha two version of the API group.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 18
Type: Concept  

Content:
It will continue to be present in the V one alpha one version of the element.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 19
Type: Concept  

Content:
So at this point, the resource in database is still at B one Alpha one but our API version has now changed to B one alpha two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 20
Type: Concept  

Content:
So this is now going to be a problem.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 21
Type: Concept  

Content:
We will need to go back and change all API versions in our files from B one alpha one to V one alpha two which is why the new releases must support both V one alpha one and V one alpha two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 22
Type: Concept  

Content:
But the preferred or storage version could be we one alpha two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 23
Type: Implementation Step  

Content:
This means that the users can use the same yamo files to create the resources, but internally it would be converted and stored as V one alpha two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 24
Type: Concept  

Content:
So that brings us to the second rule of API deprecation policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 25
Type: Warning/Pitfall  

Content:
API objects must be able to round trip between API versions in a given release without information loss with the exception of whole risk resources that do not exist in some versions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 26
Type: Best Practice  

Content:
If we create an API, an object in the V one alpha one version and it is converted to V one alpha two and then back to V one alpha one, it should be the same as the original V one alpha one version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 27
Type: Exam Tip  

Content:
For example, we have a course object in B one alpha one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 28
Type: Concept  

Content:
It has a spec field called type set two video.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 29
Type: Implementation Step  

Content:
This is then converted to B one alpha two with B one alpha two we introduced a new field called Duration.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 30
Type: Concept  

Content:
This field was not there in we one alpha one where we now convert this back to B one Alpha one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 31
Type: Concept  

Content:
It will now have the new field, but the original one didn't.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 32
Type: Concept  

Content:
So we must add an equivalent field in B one alpha one version so that the converted B one alpha one matches the original B one alpha one version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 33
Type: Troubleshooting  

Content:
So continuing with our story we fixed some more bugs and are now ready for beta.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 34
Type: Implementation Step  

Content:
Our first beta version called v1, BTA one is now ready and then after a few months we release the next beta version of v1 beta two.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 35
Type: Concept  

Content:
And finally we release our stable version, the GA version which we call as v1.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 36
Type: Concept  

Content:
So that's kind of how an API evolves over time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 37
Type: Implementation Step  

Content:
Starts with we want alpha one, then alpha two you required more alpha versions and then to beta versions beta one, beta two, and more beta versions if required.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 38
Type: Warning/Pitfall  

Content:
And finally we want now we don't have to have all the versions available at all times like this.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 39
Type: Concept  

Content:
Of course, we must deprecate and remove older versions as we release newer versions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 40
Type: Best Practice  

Content:
So let's look at what are the rules and best practices around that.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 41
Type: Concept  

Content:
So let's say with the Kubernetes release of version X and we released the B one alpha one version of our API group.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 42
Type: Exam Tip  

Content:
So X here could be Kubernetes version release 12.1 0.1 for example.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 43
Type: Exam Tip  

Content:
And that's the first time our package was included.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 44
Type: Concept  

Content:
So we made it version V one alpha one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 45
Type: Concept  

Content:
Now since it is the only version it is the preferred and storage version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 46
Type: Concept  

Content:
With the Kubernetes release of x plus one we released the V1 alpha two version of our API group.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 47
Type: Concept  

Content:
Now, since we are in the alpha phase we are not required to keep the older V1 alpha one version as part of this new release.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 48
Type: Concept  

Content:
And this is part of the rule for a of the Kubernetes deprecation policy.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 49
Type: Concept  

Content:
This rule states that other than the most recent API versions in each track older API versions must be supported after they're announced deprecation for a duration of no less than GA 12 months or three releases for GA and nine months or three releases for beta and zero releases for alpha.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 50
Type: Concept  

Content:
So alpha versions need not be supported for any release, but beta and GA versions once released must be supported anywhere from nine to 12 months.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 51
Type: Concept  

Content:
So that's why the release x plus one does not have V1 alpha one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 52
Type: Concept  

Content:
So that may break things for those who had previously used the V1 alpha one as as we discussed earlier in this in this video.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 53
Type: Concept  

Content:
And so you must mention about this change in the release node of that Kubernetes version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 54
Type: Exam Tip  

Content:
Here's an example of one such mention of the removal of V1 alpha two configure API and the release node requests users to convert the V1 alpha two to V1 alpha three.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 55
Type: Exam Tip  

Content:
In that example, we will talk about how to do just that a bit later in this video.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 56
Type: Implementation Step  

Content:
So now in the x plus two version we release the first VI version of our API group is called V one, beta one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 57
Type: Concept  

Content:
And now since the previous version was an alpha version which is V one alpha two, it is not required for that version to be part of the new release.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 58
Type: Concept  

Content:
And same as before the release notes must be updated to notify users to migrate from B one alpha two to V one beta one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 59
Type: Concept  

Content:
Now that we are in beta going forward things are going to change because rule four A states that beta versions need to be supported for nine months or three releases, whichever is longer.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 60
Type: Concept  

Content:
So continuing to x plus three release.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 61
Type: Concept  

Content:
Now on x plus three, we have, we want beta two released.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 62
Type: Concept  

Content:
Now, as we discussed earlier from the beta version onwards it is required to have the previous beta release which is V1 beta one in this case as part of this release.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 63
Type: Concept  

Content:
So this release has both the new beta version as well as the previous beta version as part of this release.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 64
Type: Warning/Pitfall  

Content:
The V1 beta one version is now deprecated a note that we want beta one version is only deprecated but not removed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 65
Type: Concept  

Content:
It's still part of this release it's still going to be there for a couple of releases before it, it is actually removed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 66
Type: Warning/Pitfall  

Content:
If you were to use the we want beta one API at this point it would display a deprecation warning.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 67
Type: Concept  

Content:
Now also note that at this time we want beta one is continuing to be the preferred version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 68
Type: Concept  

Content:
So why is that?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.
- Repeated In:
  - certified-kubernetes-administrator-with-practice-tests
  - certified-kubernetes-application-developer

---

## Entry 69
Type: Concept  

Content:
Why isn't the, v one beta two version the preferred and storage version because rule four B states that the preferred API version and the storage version for a given group may not advance until after a release has been made that supports both the new version and the previous version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 70
Type: Implementation Step  

Content:
So in this case the current release is the first release where both new and previous version that's beta one and beta two are supported.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 71
Type: Concept  

Content:
So we cannot change the preferred storage version yet.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 72
Type: Implementation Step  

Content:
Instead, we must wait till the next release.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 73
Type: Implementation Step  

Content:
The next release also has both versions except beta two now becomes the preferred storage version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 74
Type: Concept  

Content:
But continuing on with version X plus five we now finally have the V one GA stable version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 75
Type: Concept  

Content:
But along with that, we also have V one beta one and V one beta two versions.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 76
Type: Warning/Pitfall  

Content:
V one beta two is still the preferred or storage version because this is the first release that has the V one version, but it now becomes deprecated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 77
Type: Warning/Pitfall  

Content:
So now V one beta one and V one beta two are deprecated.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 78
Type: Warning/Pitfall  

Content:
In the next release, we can remove V one beta one version because as per rule four A a beta version needs to be supported for three releases. beta one version was deprecated in release X plus three and it's been around for X plus four and X plus five.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 79
Type: Concept  

Content:
So that's three releases and it can now be removed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 80
Type: Concept  

Content:
With x plus six V one can now be the preferred and storage version while beta two is going to stay around for another release to complete its three release support with X plus seven version, nothing changes as beta two continues to stay around for the last time before it will be removed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 81
Type: Concept  

Content:
And in x plus eight version, beta two is removed and we are left with just the GA stable V one version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 82
Type: Concept  

Content:
That's kind of how a version progresses.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 83
Type: Exam Tip  

Content:
Now, let's say for example with the next release, we are now for the first time having the first version of V two so we decided to start working on a V2 version and we now have the V2 Alpha one version available for the first time.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 84
Type: Warning/Pitfall  

Content:
Now, if you look at the releases in the past every time we had a new version available, we deprecated we immediately deprecated the older version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 85
Type: Concept  

Content:
But now that we have the V two alpha one version ready can we deprecate the V1 version now?

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 86
Type: Concept  

Content:
No, because that's where rule three comes in.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 87
Type: Warning/Pitfall  

Content:
And rule three says an API version in a given track may not be deprecated until a new API version, at least as stable is released.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 88
Type: Concept  

Content:
Meaning GA versions can deprecate beta or alpha versions but not the other way around.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 89
Type: Concept  

Content:
An alpha version aren't deprecate a GA version in this case the V2 alpha one is an alpha version and V one is a GA version, so we cannot deprecate V one now.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 90
Type: Implementation Step  

Content:
The V two alpha one version needs to go through its life cycle of becoming a V two, alpha two then V two beta one, then v2 beta two, and then V two and and only can the V2 version deprecate the V1 version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 91
Type: Concept  

Content:
So that brings us to the final topic of this video, the cube converts command.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 92
Type: Warning/Pitfall  

Content:
Now, as we have been seeing when Kubernetes clusters are upgraded, we have new APIs being added and old ones being deprecated and removed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 93
Type: Concept  

Content:
Now, when an old API is removed, it is important to note that you have to update your existing manifest files to the new version.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 94
Type: Exam Tip  

Content:
For example, say I have a yamo file with a deployment definition of v1 beta one and when Kubernetes is upgraded the beta one version of deployment is removed.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 95
Type: Concept  

Content:
So I would need to use the V1 version going forward.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 96
Type: Concept  

Content:
However, I may have a lot of yamo files in the old manifest in the old version, which has V1 beta one in it.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 97
Type: Concept  

Content:
So to convert my YAML files to newer version you may use the cube cuttle convert command and specify the old yamo file and the new output format.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 98
Type: Exam Tip  

Content:
For example, to convert this deployment definition file to the new version, run the cube convert command and specify the old file name followed by the new version which happens to be app slash B one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 99
Type: Concept  

Content:
And this will output the new version of the manifest definition in YAML format on screen.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 100
Type: Concept  

Content:
Note that the cube convert command may not be available on your system by default and that's because it's a separate plugin.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 101
Type: Concept  

Content:
So the Cube kele convert command is a special plugin that you have to install.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 102
Type: Concept  

Content:
The installation instructions can be found in the Kubernetes documentation pages, along with the instructions for installing the cube kele utility.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 103
Type: Concept  

Content:
And so it's available at this link.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 104
Type: Concept  

Content:
We will go over this in the upcoming labs.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---

## Entry 105
Type: Implementation Step  

Content:
Well, thanks for your time and I will see you in the next one.

Source:
- Course: certified-kubernetes-application-developer
- Module: 09_Security
- Lecture: 160_API Deprecations
- File: 160_API Deprecations.txt
- Topic: API Deprecations
- Line Context: Lines 1-1 from transcript

Notes:
- Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.

---
