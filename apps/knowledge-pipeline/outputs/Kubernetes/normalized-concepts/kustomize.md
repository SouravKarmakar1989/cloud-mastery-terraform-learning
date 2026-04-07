# Normalized Concept: Kustomize

- Concept Key: kustomize
- Matched Global Concept Blocks: 8
- Source-backed Note Entries Used: 1145

## 1. Definition
- (gentle music) Instructor: In this section, we're gonna take a look at patches.
- And so kustomize patches provide another method to modifying Kubernetes configs.
- However, unlike common transformers, patches provide a more surgical approach to targeting one or more specific sections in a Kubernetes resource.
- So what exactly do we want to do?
- And so I've listed out the three most common operations.
- Keep in mind, there are a couple more, but they're not as frequently used.
- So we have add, remove, and replace.
- So add, you'd perform an operation, an add operation.
- Remove would be the opposite.
- Let's say you wanted to remove a container from the list, or even remove a label.

## 2. First-Principles Mental Model
- So basically, if you want to apply a configuration across the board, like adding a label or assigning a namespace to all of your Kubernetes objects, you're gonna use a common transformer.
- However, if you wanna apply or change something on one specific object or just a couple of objects, you would use a kustomize patch.
- So things like updating the number of replicas in a deployment, you would use a kustomize patch to match a specific object and then change that value.
- Now to create a patch, we have to provide three different parameters.
- The first one is Operation Type.
- If we have a list of containers in a deployment, and let's say you wanted to add another container to that list, that would be an add operation.
- And then finally, we have replace.
- So replace is taking a value that's provided and then swapping it out with another value.
- Then after we specify the operation, we have to provide a Target.
- So this is basically specifying the match criteria on exactly what resource do we want to apply the patch on.

## 3. Why This Exists
- And so kustomize patches provide another method to modifying Kubernetes configs.
- However, unlike common transformers, patches provide a more surgical approach to targeting one or more specific sections in a Kubernetes resource.
- So basically, if you want to apply a configuration across the board, like adding a label or assigning a namespace to all of your Kubernetes objects, you're gonna use a common transformer.
- So things like updating the number of replicas in a deployment, you would use a kustomize patch to match a specific object and then change that value.
- Now to create a patch, we have to provide three different parameters.
- So what exactly do we want to do?
- If we have a list of containers in a deployment, and let's say you wanted to add another container to that list, that would be an add operation.
- Let's say you wanted to remove a container from the list, or even remove a label.
- So if the base configs have a replica count of 5, and you say, "Oh, I actually want 10," you could do a replace and replace the replica to a value of 10.
- Then after we specify the operation, we have to provide a Target.

## 4. Internal Working
- So basically, if you want to apply a configuration across the board, like adding a label or assigning a namespace to all of your Kubernetes objects, you're gonna use a common transformer.
- However, if you wanna apply or change something on one specific object or just a couple of objects, you would use a kustomize patch.
- So things like updating the number of replicas in a deployment, you would use a kustomize patch to match a specific object and then change that value.
- Now to create a patch, we have to provide three different parameters.
- The first one is Operation Type.
- If we have a list of containers in a deployment, and let's say you wanted to add another container to that list, that would be an add operation.
- And then finally, we have replace.
- So replace is taking a value that's provided and then swapping it out with another value.
- Then after we specify the operation, we have to provide a Target.
- So this is basically specifying the match criteria on exactly what resource do we want to apply the patch on.
- And then after you match your specific object, you have to then provide a Value.
- You just specify the Target and then you remove it.

## 5. Key Objects / Fields / Relationships
- And so kustomize patches provide another method to modifying Kubernetes configs.
- So basically, if you want to apply a configuration across the board, like adding a label or assigning a namespace to all of your Kubernetes objects, you're gonna use a common transformer.
- However, if you wanna apply or change something on one specific object or just a couple of objects, you would use a kustomize patch.
- So things like updating the number of replicas in a deployment, you would use a kustomize patch to match a specific object and then change that value.
- If we have a list of containers in a deployment, and let's say you wanted to add another container to that list, that would be an add operation.
- Let's say you wanted to remove a container from the list, or even remove a label.
- And so we can match on a couple of different properties like kind or the version or the name of the object or the namespace, labelSelector, or AnnotationSelector.
- Now let's take a look at a kustomize patch in action.
- Right now it's set up to be api-deployment, and let's say I wanna change it to web-deployment.
- In this case, I'm matching on a kind of deployment.

## 6. YAML Deep Dive
- However, unlike common transformers, patches provide a more surgical approach to targeting one or more specific sections in a Kubernetes resource.
- However, if you wanna apply or change something on one specific object or just a couple of objects, you would use a kustomize patch.
- So things like updating the number of replicas in a deployment, you would use a kustomize patch to match a specific object and then change that value.
- Then after we specify the operation, we have to provide a Target.
- So this is basically specifying the match criteria on exactly what resource do we want to apply the patch on.
- And so we can match on a couple of different properties like kind or the version or the name of the object or the namespace, labelSelector, or AnnotationSelector.
- So you can mix and match as many of these as you want to specify the exact Kubernetes object or objects that you wanna match on and keep.
- And then after you match your specific object, you have to then provide a Value.
- You just specify the Target and then you remove it.
- So I have an example depl.yaml file here.

## 7. kubectl / command usage
- And so kustomize patches provide another method to modifying Kubernetes configs.
- However, if you wanna apply or change something on one specific object or just a couple of objects, you would use a kustomize patch.
- So things like updating the number of replicas in a deployment, you would use a kustomize patch to match a specific object and then change that value.
- Now let's take a look at a kustomize patch in action.
- Well, we have to tell kustomize what is the specific property we want to replace or update, and how do we get to it in the YAML tree.
- In kustomize, there's actually two different ways to define a patch.
- And so a JSON 6902 patch has two things that you have to provide, the Target, which is going to tell kustomize what Kubernetes object do we want to patch, and then we have to provide the patch details.
- Once again, we need a way to tell kustomize what Kubernetes object do we wanna update.
- So this is just like defining a deployment where you specify the name, this is what's going to let kustomize know what we're trying to change.
- And so Kustomize is then gonna take this config, merge it with the original api-deployment config.

## 8. Real-world scenarios
- So basically, if you want to apply a configuration across the board, like adding a label or assigning a namespace to all of your Kubernetes objects, you're gonna use a common transformer.
- So things like updating the number of replicas in a deployment, you would use a kustomize patch to match a specific object and then change that value.
- If we have a list of containers in a deployment, and let's say you wanted to add another container to that list, that would be an add operation.
- Let's say you wanted to remove a container from the list, or even remove a label.
- And so we can match on a couple of different properties like kind or the version or the name of the object or the namespace, labelSelector, or AnnotationSelector.
- So I have an example depl.yaml file here.
- Right now it's set up to be api-deployment, and let's say I wanna change it to web-deployment.
- In this case, I'm matching on a kind of deployment.
- So it's going to look through all of my Kubernetes configs and it's going to match on only things that are of type deployment.
- And then I'm going to match on a deployment with a specific name of api-deployment.

## 9. Pitfalls and misunderstandings
- So it's not just one, you don't have to just use one.
- I basically just copied the original API deployment file and I just pasted it in there, and then I deleted all the stuff I don't wanna change.
- We don't want to add or delete a label, we want to replace this one.
- We don't wanna add or delete a label, we want to replace this one.
- So ignore the name of the container that's set to web, we don't care about that.
- However, let's say that we don't actually wanna change the image, so we've got our nginx image here as well, but let's say we just wanna change the tag.
- However, let's say that we don't actually want to change the image, so we've got our nginx image here as well.
- Oh, okay, I've realized I wanna put a dash actually so that the words don't get jammed together.
- So in this case, maybe you don't wanna apply it globally because maybe there's some other features that also use a Mongo database, and we don't wanna actually change those.
- Remember, don't look at the name.

## 10. Troubleshooting angle
- There's no issues with using either one, it's just a matter of personal preference.
- Something to keep in mind, it confused me at first, so I figured you guys would probably run into the same issue.
- So maybe, we'll, this will be our debugging environment.
- So for the db side of things, we can see that the namespace was set to debugging.
- For api, we should see that the namespace was set to debugging, so it looks like it was successfully applied to everything.
- So now let's give everything a namePrefix and a nameSuffix.
- I want every single object to have a name prefixed with the word KodeKloud, and I want all of the resources to have a suffix that's specific to what folder they're in.
- So right now, if we actually take a look at the configs here, it's gonna be api-deployment, I wanted api-deployment-web, and it should be prefixed with KodeKloud.
- We're gonna change it to, it's gonna be prefixed with KodeKloud as well, but it's gonna end in -storage.
- So for the prefix of KodeKloud, we want this applied to every single resource regardless of what folder they're in.

## 11. CKA / CKAD relevance
- So I have an example depl.yaml file here.
- And we'll take a look at a couple more examples just to make sure you guys really understand this idea.
- Now let's take a look at one more example just so that we can reinforce everything that we just learned.
- So I have an example deployment .yaml file here.
- (pleasant music) Instructor: Let's take a look at another example on how to update a key in a dictionary in our Kubernetes config using a JSON 6902 patch.
- (lively music) Instructor: Let's take a look at another example on how to update a key and a dictionary in our Kubernetes config using a Json6902 patch.
- So in this example, I have a deployment.yaml file where we're going to deploy a nginx server.
- So if we build this now, if we take a look at db-depl as an example, we can see now, we have a feature: db.
- So if we build this, now, if we take a look at db-deployment as an example, we can see now we have a feature: db.
- So let's take a look at a simple example.

## 12. Source Contributions
- Matched Global Concepts:
  - Patches Intro (match score: 1, notes: 223)
  - Patches Dictionary (match score: 1, notes: 169)
  - Image Transformers (match score: 1, notes: 55)
  - Transformers Demo (match score: 1, notes: 271)
  - Kustomize Problem Statement & idealogy (match score: 1, notes: 90)
  - kustomization.yaml file (match score: 1, notes: 33)
  - Patches List (match score: 1, notes: 165)
  - Overlays (match score: 1, notes: 139)
- Course/Section Perspective Coverage:
  - certified-kubernetes-administrator-with-practice-tests / 13_(2025 Updates)Kustomize Basics: 512 note entries
  - certified-kubernetes-application-developer / 11_(2025 Updates) Kustomize Basics: 633 note entries
- Explicit Source Reference Samples:
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 1 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 2 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 3 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 4 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 5 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 6 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 7 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 8 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 9 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 10 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 11 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 12 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 13 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 14 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 15 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 16 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 17 | Type Concept
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 18 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 19 | Type Implementation Step
  - section-maps/BATCH-013_section_concept_map.md | 276_Patches Intro.extraction.md | Entry 20 | Type Concept

