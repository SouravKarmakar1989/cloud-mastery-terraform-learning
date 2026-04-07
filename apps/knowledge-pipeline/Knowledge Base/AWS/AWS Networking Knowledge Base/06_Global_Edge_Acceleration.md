# 06_Global_Edge_Acceleration.md

## Scope
- Topic: CloudFront and Global Accelerator design, anycast, edge routing, cache vs non-cache acceleration, global failover
- Files processed: 22
- Extracted non-empty transcript lines: 1148
- Processing mode: line-by-line (sentence-level), zero-loss

## Real Material - Architect Learning Build (Domain 6: Global Edge Acceleration)

This section is the study-first architecture guide for edge delivery, anycast entry points, global failover, and cache-versus-routing acceleration choices.

### Phase 1 - Foundations

#### Module 1: Edge Mental Model
- CloudFront and Global Accelerator both use AWS edge presence, but they solve different problems.
- CloudFront is about content delivery and edge caching behavior.
- Global Accelerator is about path optimization, static entry, and fast regional failover.




##### Source Transcript Details
- Module focus: Edge Mental Model
- Primary transcript files:
- outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/165_CloudFront Functions and Lambda@Edge.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/171_AWS Global Accelerator - Hands On.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/169_Hands On_ AWS Global Accelerator.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/170_AWS Global Accelerator - Overview.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/168_AWS Global Accelerator.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/165_CloudFront Overview.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/064_AWS Global Accelerator.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/169_CloudFront - Cache Invalidation.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/166_CloudFront with S3 - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/167_CloudFront - ALB_EC2 as an Origin.txt
- Top concept clusters from transcript metadata:
- Global Edge Operational Context
- Anycast Entry and Traffic Acceleration
- Edge Caching and Content Delivery
- Security Perimeter and DDoS Posture
- Global Failover and Resilience
- Protocol and Endpoint Fit
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 22
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1148
- Key insights inside selected files: 670
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- This allow you to run custom code at the Edge to do some customization.
- So the idea is that you want to execute edge functions as close as possible to users to make sure that you're verifying some early logics some early behavior or normalizing some Cache keys.
- So an Edge Function is a code that you write and that you attached to a CloudFront distribution and it will run very close to users in order to minimize the latency of whatever you're trying to do.
- Now CloudFront has two different logic for Edge Functions.
- It has the CloudFront functions and Lambda@Edge.
- So the use cases for customization at the Edge, at the Edge is to manipulate HTTP request and responses is to implement request filtering before reaching your application is to verify user authentication and authoriza...
- Or for example, doing Bot mitigation at the edge.
- The idea is that using Edge Functions.
- So either Cloud Front Functions and Lambda@Edge you do not have to manage any servers.
- Everything is deployed globally and it is serverless.
- So if we look at a traditional architecture of CloudFront, we have our clients to our Edge Locations talking to our regional Edge Cache, talking to our Origin.
- Now Lambda@Edge Functions are going to be deployed at the Regional Edge Cache level.
- Whereas CloudFront Functions are going to be deployed on the Edge Locations.
- So as you can see two different level for deployments of these functions, and that will impact your choice between CloudFront Functions and Lambda@Edge Functions.
- So we run at Edge Locations and it's Process-based isolation.
- Now Lambda@Edge is a different mindset.
- So these were first what CloudFront was offering as a feature CloudFront Functions are new but Lambda@Edge has been existing for a long time.
- And they run on the nearest Regional Edge Cache.

##### Polished Architect Notes
- Transcript signals that this allow you to run custom code at the Edge to do some customization.
- Transcript signals that the idea is that you want to execute edge functions as close as possible to users to make sure that you're verifying some early logics some early behavior or normalizing some Cache keys.
- Transcript signals that an Edge Function is a code that you write and that you attached to a CloudFront distribution and it will run very close to users in order to minimize the latency of whatever you're trying to do.
- Transcript signals that cloudFront has two different logic for Edge Functions.
- Transcript signals that it has the CloudFront functions and Lambda@Edge.
- Transcript signals that the use cases for customization at the Edge, at the Edge is to manipulate HTTP request and responses is to implement request filtering before reaching your application is to verify user authentication and authoriz...
- Transcript signals that or for example, doing Bot mitigation at the edge.
- Transcript signals that the idea is that using Edge Functions.
- Transcript signals that either Cloud Front Functions and Lambda@Edge you do not have to manage any servers.
- Transcript signals that everything is deployed globally and it is serverless.
- Transcript signals that if we look at a traditional architecture of CloudFront, we have our clients to our Edge Locations talking to our regional Edge Cache, talking to our Origin.
- Transcript signals that lambda@Edge Functions are going to be deployed at the Regional Edge Cache level.

##### Architect Synthesis (Transcript-Derived)
- Treat Global Edge Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Anycast Entry and Traffic Acceleration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Edge Caching and Content Delivery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Security Perimeter and DDoS Posture as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Global Failover and Resilience as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: this allow you to run custom code at the Edge to do some customization.
- Design implication: the idea is that you want to execute edge functions as close as possible to users to make sure that you're verifying some early logics some early behavior or normalizing some Cache keys.
- Design implication: an Edge Function is a code that you write and that you attached to a CloudFront distribution and it will run very close to users in order to minimize the latency of whatever you're trying to do.
#### Module 2: Caching vs Transport Optimization
- If the problem is cacheable content or HTTP acceleration, think CloudFront first.
- If the problem is static IP, non-HTTP traffic, or deterministic failover, think Global Accelerator.
- Many architectures use both because user-facing problems are mixed.




##### Source Transcript Details
- Module focus: Caching vs Transport Optimization
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/165_CloudFront Overview.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/165_CloudFront Functions and Lambda@Edge.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/170_AWS Global Accelerator - Overview.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/168_AWS Global Accelerator.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/169_CloudFront - Cache Invalidation.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/171_AWS Global Accelerator - Hands On.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/169_Hands On_ AWS Global Accelerator.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/166_CloudFront with S3 - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/064_AWS Global Accelerator.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/156_CloudFront Overview.txt
- Top concept clusters from transcript metadata:
- Global Edge Operational Context
- Anycast Entry and Traffic Acceleration
- Edge Caching and Content Delivery
- Security Perimeter and DDoS Posture
- Global Failover and Resilience
- Protocol and Endpoint Fit
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 22
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1148
- Key insights inside selected files: 692
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- It improves the read performance by caching the content of your website at the different edge locations.
- CloudFront is made of hundreds of points of presence globally and that includes edge locations and caches across the world.
- On top of it, by having the content distributed globally, we are getting DDoS protection.
- So if you wanna look at a map of the world, these are the map and we see some edge locations as well as edge caches.
- Then what the user will do is that it will request the content from an American edge location using CloudFront and CloudFront will be able to fetch the content from Australia.
- Now, if another user in the US will be requesting the same content, then it will be served directly from the edge and it will not go all the way to Australia to serve that content.
- Same if a user is in China, then it'll be talking to a Chinese point of presence and then redirected to the S3 buckets, and then the content will be cached at the edge.
- So this is used for distributing files and caching them at the edge.
- We have the edge location all around the world, okay?
- And when the client connects and does an HTTP request into your edge location, then the edge location will see if it has it in the cache.
- And then once it retrieves the results, it will be caching it into a local cache so that if another client requests the same content from the same edge location, then the edge location does not need to go to the origin.
- So if we have S3 as an origin, then if we look at the cloud, your S3 bucket is your origin in some region, and then you have edge locations all around the world, for example, at Los Angeles, and your users accessing t...
- But first, the edge location will get it from the origin S3 bucket through the private network.
- Again, this will be another edge location, which will be serving users close to Brazil, and then it will be a private connection between your edge location and your S3 bucket and so on.
- So using CloudFront and the edge locations, we can see that the content of our S3 bucket in one region can be distributed all around the world through the edge locations or points of presence.
- Well, if you have CloudFront, you're using the Global Edge network.
- And the files are going to be cached in each edge location maybe for a day.
- And then files are going to be updated in near real time so there's no caching that happens.

##### Polished Architect Notes
- Transcript signals that it improves the read performance by caching the content of your website at the different edge locations.
- Transcript signals that cloudFront is made of hundreds of points of presence globally and that includes edge locations and caches across the world.
- Transcript signals that on top of it, by having the content distributed globally, we are getting DDoS protection.
- Transcript signals that if you wanna look at a map of the world, these are the map and we see some edge locations as well as edge caches.
- Transcript signals that what the user will do is that it will request the content from an American edge location using CloudFront and CloudFront will be able to fetch the content from Australia.
- Transcript signals that if another user in the US will be requesting the same content, then it will be served directly from the edge and it will not go all the way to Australia to serve that content.
- Transcript signals that same if a user is in China, then it'll be talking to a Chinese point of presence and then redirected to the S3 buckets, and then the content will be cached at the edge.
- Transcript signals that this is used for distributing files and caching them at the edge.
- Transcript signals that we have the edge location all around the world, okay?
- Transcript signals that when the client connects and does an HTTP request into your edge location, then the edge location will see if it has it in the cache.
- Transcript signals that then once it retrieves the results, it will be caching it into a local cache so that if another client requests the same content from the same edge location, then the edge location does not need to go to the origin.
- Transcript signals that if we have S3 as an origin, then if we look at the cloud, your S3 bucket is your origin in some region, and then you have edge locations all around the world, for example, at Los Angeles, and your users accessing...

##### Architect Synthesis (Transcript-Derived)
- Treat Global Edge Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Anycast Entry and Traffic Acceleration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Edge Caching and Content Delivery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Security Perimeter and DDoS Posture as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Global Failover and Resilience as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: it improves the read performance by caching the content of your website at the different edge locations.
- Design implication: cloudFront is made of hundreds of points of presence globally and that includes edge locations and caches across the world.
- Design implication: on top of it, by having the content distributed globally, we are getting DDoS protection.
#### Module 3: Global Entry Constraints
- Static IP, protocol support, and regional failover targets must be explicit requirements.
- Edge services change latency and resilience characteristics but do not remove origin design responsibility.
- DDoS posture and origin protection are part of the edge decision, not an add-on.






##### Source Transcript Details
- Module focus: Global Entry Constraints
- Primary transcript files:
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/171_AWS Global Accelerator - Hands On.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/169_Hands On_ AWS Global Accelerator.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/170_AWS Global Accelerator - Overview.txt
- outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/168_AWS Global Accelerator.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/165_CloudFront Overview.txt
- outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/064_AWS Global Accelerator.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/169_CloudFront - Cache Invalidation.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/167_CloudFront - ALB_EC2 as an Origin.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/166_CloudFront with S3 - Hands On.txt
- outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/168_CloudFront - Geo Restriction.txt
- Top concept clusters from transcript metadata:
- Global Edge Operational Context
- Anycast Entry and Traffic Acceleration
- Edge Caching and Content Delivery
- Security Perimeter and DDoS Posture
- Global Failover and Resilience
- Protocol and Endpoint Fit
- Coverage signal: module relevance computed from title keywords, file context, and transcript concept tags.

##### Source Coverage Stats
- Total transcript files in topic: 22
- Module-selected transcript files: 10
- Key insight candidates scanned (topic): 1148
- Key insights inside selected files: 557
- Unique concept tags in selected files: 6

##### Transcript-Enriched Learning Notes
- All right, so let's go ahead and practice using Global Accelerator.
- So, for this, we're gonna have to create an infrastructure in two regions to make the Global Accelerator useful.
- As you can see, for Global Accelerator, because it's a global service, on the top-hand side it says "Global".
- So that means you cannot choose any region, it's just a global service.
- And in Global Accelerator, in our accelerator, we're going to now configure these instances.
- All right, so I'm back in my Global Accelerator, you can get back here, and I had to wait for the provisioning status to be deployed for my health checks to pass.
- But now that it's been provisioned and my health checks are passing, we can see that we have two static IP addresses available for our Global Accelerator.
- And so what I can do now is just try to use the Global Accelerator.
- So this shows you that the Global Accelerator is working as intended.
- Okay, so in this lecture, we are going to talk about a newer kind of service for AWS called the AWS Global Accelerator.
- So, say you have deployed and application, and it's global and you've global users who want to access it directly.
- And so before we do so and use the global accelerator for this, I want to introduce to you another concept which is Unicast and Anycast IP.
- So Global Accelerator uses that Anycast IP concept to work.
- We're able to leverage the AWS internal global network to route to our application.
- And is going to happen is that instead of sending it through the public internet in America, it's going to come to the closest edge location.
- And from edge location, it's going to go all the way straight to our ALB through the internal AWS network.
- Same for Australia, so it goes to closest edge location near to Australia and then it goes over the private AWS network to get to the ALB and same for Europe.
- So the idea with this is that, we're going to use an Anycast IP and there's actually going to be two of those that are going to be created for your application and they're global.

##### Polished Architect Notes
- Transcript signals that all right, so let's go ahead and practice using Global Accelerator.
- Transcript signals that for this, we're gonna have to create an infrastructure in two regions to make the Global Accelerator useful.
- Transcript signals that as you can see, for Global Accelerator, because it's a global service, on the top-hand side it says "Global".
- Transcript signals that that means you cannot choose any region, it's just a global service.
- Transcript signals that in Global Accelerator, in our accelerator, we're going to now configure these instances.
- Transcript signals that all right, so I'm back in my Global Accelerator, you can get back here, and I had to wait for the provisioning status to be deployed for my health checks to pass.
- Transcript signals that now that it's been provisioned and my health checks are passing, we can see that we have two static IP addresses available for our Global Accelerator.
- Transcript signals that so what I can do now is just try to use the Global Accelerator.
- Transcript signals that this shows you that the Global Accelerator is working as intended.
- Transcript signals that so in this lecture, we are going to talk about a newer kind of service for AWS called the AWS Global Accelerator.
- Transcript signals that say you have deployed and application, and it's global and you've global users who want to access it directly.
- Transcript signals that so before we do so and use the global accelerator for this, I want to introduce to you another concept which is Unicast and Anycast IP.

##### Architect Synthesis (Transcript-Derived)
- Treat Global Edge Operational Context as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Anycast Entry and Traffic Acceleration as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Edge Caching and Content Delivery as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Security Perimeter and DDoS Posture as a first-class architecture control, with explicit ownership and failure-mode design.
- Treat Global Failover and Resilience as a first-class architecture control, with explicit ownership and failure-mode design.
- Design implication: all right, so let's go ahead and practice using Global Accelerator.
- Design implication: for this, we're gonna have to create an infrastructure in two regions to make the Global Accelerator useful.
- Design implication: as you can see, for Global Accelerator, because it's a global service, on the top-hand side it says "Global".
### Phase 2 - Core Services

#### CloudFront Delivery Patterns
- Use CloudFront when edge caching, origin shielding, or global web delivery is the main goal.
- Cache behavior and invalidation discipline drive operational success.
- Origin security matters as much as edge presence.

#### Global Accelerator Entry Patterns
- Use Global Accelerator when a global static entry point and fast health-based failover are required.
- Anycast IPs simplify client whitelisting and endpoint stability.
- It is especially strong for non-HTTP and transport-sensitive workloads.

#### Edge Security and Failover
- AWS Shield integration improves perimeter resilience.
- Health-driven endpoint failover must be paired with regional readiness.
- A globally reachable edge with a weak origin model is still a weak architecture.

### Phase 3 - Advanced Patterns

#### Pattern 1: CloudFront Plus Regional Origins
- Keep cache-friendly traffic close to users while protecting origins.
- Use origin policy and caching strategy intentionally.
- Avoid turning CloudFront into a blind default when cache semantics are poor.

#### Pattern 2: Global Accelerator for Static Entry
- Use dual anycast IPs for stable client-facing identity.
- Pair endpoint groups with regional health validation and DR intent.
- This pattern is often the clean answer for static-IP global application access.

#### Pattern 3: Combined Edge Strategy
- Use CloudFront for content delivery and Global Accelerator for application transport where needed.
- Distinguish web acceleration from transport resilience in design discussions.
- Keep the edge stack deliberate and justified by requirements.

### Phase 4 - System Design (Production)

#### Reference Edge Architecture
- Edge delivery layer for cached web content plus anycast global entry for critical application paths.
- Regionally resilient origin fleet with tested failover behavior.
- Security posture tied to origin exposure minimization and controlled perimeter policies.

#### Scaling Considerations
- Cache invalidation discipline becomes important at scale.
- Regional traffic shifting and origin protection policies need operational ownership.
- Global failover only works if application state and backend dependencies are region-ready.

#### Cost Considerations
- Cache miss rates and transfer paths drive CloudFront economics.
- Accelerator endpoint and traffic usage must be justified by performance or contractual requirements.
- Misusing edge services adds cost faster than it adds value.

### Cross-Cloud Concept Mapping (Global Edge Acceleration)

#### Underlying Concept: Edge Content Delivery
- AWS: CloudFront
- Azure: Front Door and CDN patterns
- GCP: Cloud CDN
- Trade-off: the cache model is portable, but origin integration and policy depth differ.

#### Underlying Concept: Static Global Application Entry
- AWS: Global Accelerator and anycast IP model
- Azure: Front Door and traffic-manager style patterns
- GCP: global application entry and load-balancing patterns
- Trade-off: the exact static-IP and failover model varies, but the architectural intent is shared.

### Real-World Use Cases from Transcript Signals
- Deliver global web content through CloudFront with protected origins.
- Front critical applications with anycast IPs and fast regional failover using Global Accelerator.
- Combine edge caching and transport optimization where user experience requires both.

### Constraints and Exam-Relevant Traps Captured
- CloudFront and Global Accelerator are complementary, not interchangeable.
- Static-IP and non-HTTP needs usually push the answer toward Global Accelerator.
- Edge acceleration cannot compensate for weak regional workload design.
## Step 1 â€” Line-by-Line Extraction

Every non-empty line from every source transcript is preserved below with extraction fields.

### File: outputs/AWS/aws-certified-solutions-architect-professional-SAP-C02/05_Compute & Load Balancing/064_AWS Global Accelerator.txt

Line 1:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: Now let's talk about AWS Global Accelerator.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 2:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: This is a way for you to leverage the internal network of AWS to route to your application.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: And for this, it will use what's called an Anycast IP, and two of them will be created for your application.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 4:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator, Edge Location
- Key Insights: Now the Anycast IP is going to be used to send traffic directly to the Edge locations all around the world.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 5:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: And then from the Edge location, the traffic will be sent to your application, but using the internal traffic of AWS.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: How does that work?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator, Edge Location, Elastic Load Balancing
- Key Insights: Well say that all your applications wants to access a public ALB in India, but your clients are in Australia, America, and Europe, well, the way it's going to work is that they're going to use the Anycast IP, which is going to redirect them to an Edge location.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 8:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: And from the Edge location, the traffic will go privately on the Edge OS network from the Edge location into your desired endpoints.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 9:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: This global accelerator really gives you some of course, accelerations.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 10:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: The targets can be Elastic IPs, EC2 instances, ALB, NLB, could be public or private.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: It supports IP preservation of your clients, except for the Elastic IP endpoints.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Failover and Resilience
- Services: (none explicit)
- Key Insights: You're going to get consistent performance because, well, you're going to get intelligent routing from the lowest latency, and you're also going to get fast regional failover.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 13:
- Concepts: Edge Caching and Content Delivery, Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: You're going to get no issue with client cache, because the IP does not change.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 14:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: So your two Anycast IP are going to be there for the rest of your lifecycle of Global Accelerator, and it will leverage the internal AWS network as fast as possible.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 15:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: In terms of health checks, while the Global Accelerator performs health checks of your application, which makes your application global.
- Hidden/Implicit Meaning: Global entry-point acceleration signal; Global resilience and failover signal.

Line 16:
- Concepts: Global Failover and Resilience
- Services: (none explicit)
- Key Insights: And in case something is unhealthy, then the failover happens usually in less than one minutes.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 17:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It's great for disaster recovery then, because of the health checks with a fast recovery time.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 18:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: For security, only two external Anycast IP need to be whitelisted, which is great.
- Hidden/Implicit Meaning: Constraint or limitation signal; Global entry-point acceleration signal.

Line 19:
- Concepts: Security Perimeter and DDoS Posture
- Services: AWS Shield
- Key Insights: And you're going to get DDoS protection thanks to AWS Shield.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 20:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator, Amazon CloudFront
- Key Insights: So what's the difference between CloudFront and Global Accelerator?
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 21:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Well, they both use the global network of AWS, and they both leverage the Edge locations around the world.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 22:
- Concepts: Security Perimeter and DDoS Posture
- Services: AWS Shield, Amazon CloudFront, Edge Location
- Key Insights: They all have integration with SHIELD for DDoS protection, but CloudFront is here by giving you cached content at the Edge, such as images or videos, or dynamic content such as API acceleration and dynamic site delivery.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 23:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator, Amazon CloudFront, Edge Location
- Key Insights: But for CloudFront, all the content is going to be delivered at the Edge, whereas Global Accelerator is here to improve performance overall.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 24:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: And it could be not only for HTP but also for TCP or UDP.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: And it's going to proxy packets directly from an Edge location into your application running, wherever it's running in the AWS network.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 26:
- Concepts: Protocol and Endpoint Fit, Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: And therefore it's going to be a good fit for non-HTTP use cases such as gaming for UDP, IOT using MQTT, or Voice over IP.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Global Failover and Resilience, Protocol and Endpoint Fit, Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: And it's also going to be great if you have an HTTP use case that requires to use a static IP address, or if you have a use case that requires deterministic fast regional failover.
- Hidden/Implicit Meaning: Global entry-point acceleration signal; Global resilience and failover signal.

Line 28:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 29:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/165_CloudFront Overview.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Now let's talk about CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: CloudFront is a content delivery network or CDN.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 3:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So anytime you see CDN in the exam, think CloudFront.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 4:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: It improves the read performance by caching the content of your website at the different edge locations.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And because your content is cached all around the world, then your users all around the world will have a lower latency and this will improve the user experience.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 6:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: CloudFront is made of hundreds of points of presence globally and that includes edge locations and caches across the world.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 7:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: On top of it, by having the content distributed globally, we are getting DDoS protection.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So DDoS is a sort of attack where all your servers around the world are getting attacked at the same time.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Security Perimeter and DDoS Posture
- Services: AWS Shield, Amazon CloudFront
- Key Insights: We'll see this later on in this course, and the idea is that CloudFront, because your application is worldwide, then you're protected against these attacks also using something called Shield and Web Application Firewall that we will be seeing in the security section.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So if you wanna look at a map of the world, these are the map and we see some edge locations as well as edge caches.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 11:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And so say we had created an S3 bucket and a website on our S3 bucket in Australia, but we had a user maybe in America.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Amazon CloudFront, Edge Location
- Key Insights: Then what the user will do is that it will request the content from an American edge location using CloudFront and CloudFront will be able to fetch the content from Australia.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 13:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Now, if another user in the US will be requesting the same content, then it will be served directly from the edge and it will not go all the way to Australia to serve that content.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Same if a user is in China, then it'll be talking to a Chinese point of presence and then redirected to the S3 buckets, and then the content will be cached at the edge.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 15:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: CloudFront has several origins, which are basically backends that you want CloudFront to connect to.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: For example, we have an Amazon S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So this is used for distributing files and caching them at the edge.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 18:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Or to upload files directly into Amazon S3 through Amazon CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 19:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And the access between CloudFront and Amazon S3 is secured using something called origin access control or OAC.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 20:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: You can also connect CloudFront to anything within your VPC.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So it's called a VPC origin, and it's for applications that are hosted within your network on Amazon, within the private subnets.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So it could be a private application balancer, it could be a private network load balancer, or even private EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 23:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: You can also connect to a custom origin over the HTTP protocol, and it could be, for example, on the S3 website, you first must enable the bucket as a static S3 website, or it could be any public HTTP backend you want.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: For example, if you have a public load balancer, you can connect it directly into CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 25:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So at a high level, how does CloudFront work?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 26:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: We have the edge location all around the world, okay?
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 27:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then it will be connecting to your origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 28:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: So would it be an S3 bucket or an HTTP server.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 29:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery, Protocol and Endpoint Fit
- Services: Edge Location
- Key Insights: And when the client connects and does an HTTP request into your edge location, then the edge location will see if it has it in the cache.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 30:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: If it doesn't have it in the cache, then it will go to the origin to get the request results.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 31:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery
- Services: Edge Location
- Key Insights: And then once it retrieves the results, it will be caching it into a local cache so that if another client requests the same content from the same edge location, then the edge location does not need to go to the origin.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 32:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: So if we have S3 as an origin, then if we look at the cloud, your S3 bucket is your origin in some region, and then you have edge locations all around the world, for example, at Los Angeles, and your users accessing the edge location in Los Angeles will get their content directly served through the edge location.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 33:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: But first, the edge location will get it from the origin S3 bucket through the private network.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 34:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And the S3 bucket will be secured using an origin access control and by modifying the S3 bucket policy on the S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 35:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is the same when we have a user in Sao Paulo, for example, in Brazil.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 36:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: Again, this will be another edge location, which will be serving users close to Brazil, and then it will be a private connection between your edge location and your S3 bucket and so on.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 37:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: So using CloudFront and the edge locations, we can see that the content of our S3 bucket in one region can be distributed all around the world through the edge locations or points of presence.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 38:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So one question that's common is what is the difference between CloudFront and something like S3 replication?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 39:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: Well, if you have CloudFront, you're using the Global Edge network.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 40:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is about 216 points of presence.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 41:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: And the files are going to be cached in each edge location maybe for a day.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 42:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is amazing if you have static content that must be able to be available everywhere around the world.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 43:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: S3 cross region replication is different.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 44:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It must be set up for each region you want replication to happen.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 45:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is not for every region in the world.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 46:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then files are going to be updated in near real time so there's no caching that happens.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 47:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And it is only for read only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 48:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And so this is great if you have dynamic content that needs to change all the time and be available at low latency in a few regions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 49:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So these are very different purposes.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 50:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: CloudFront is a CDN, which is to cache content all around the world, whereas S3 cross region replication is to really replicate an entire bucket into another region.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 51:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So hopefully that makes sense about CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 52:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: In the next lecture we'll have a play and see how we can set up a CloudFront distribution on the CloudFront and S3 buckets.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 53:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we'll see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/166_CloudFront with S3 - Hands On.txt

Line 1:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So let's go and practice using CloudFront, but first we have to create an S3 bucket to hold our files for our distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 2:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So let's create a bucket, and I'll call this one demo-CloudFront-Stephan-v4, and it will scroll down, leave everything as the default and click on Create Bucket.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, so my bucket is now created and I'm going to upload some files in it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let me add files and I will choose my three files, beach, coffee and index.html.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let's upload them.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And now that they've been uploaded, so if I go in my bucket, we can see all of them.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And as a reminder, if I go on index.html, I have two ways of open it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: The first one is to use the object URL.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But if I try it, I get an access denied because my object is not public.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And if I go and click on open here, this generates a pre-sign.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let's allow popups.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: This generates a pre-signed URL for my S3 objects, which allows me to access the object.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So you see "I love coffee" and "hello world" but I still don't see the image because the image itself is not public.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So let's see how we can instead use CloudFront to make these files accessible without making them public.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So let's open up the CloudFront console.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I first have this popup about pricing, so I'm going to click on don't show it again and then close it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So let's go ahead and create a CloudFront distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 18:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So first we have to do is to select a plan.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 19:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So now there are several plans for CloudFront, and as you can see, they have different features.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 20:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But if we have a look, the free plan is going to be enough for us.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So we have enough requests and allowance per month, we're going to get always on DNS protection, we're going to get geographic traffic blocking and global CDN, DNS, free TL certificates.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Edge-caching behavior signal.

Line 22:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So all of this is enough for us for what we need for CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 23:
- Concepts: Security Perimeter and DDoS Posture
- Services: Edge Location
- Key Insights: But if you needed something such as, for example, edge key-value store or advanced DDoS protection or uptime SLA, or protection for WordPress, these kind of things, then one of these plans will be better for you.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And finally, you have the pay as you go option, which is to pay for based on the traffic you use.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 25:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then you're going to have to pay extra for some features.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But to keep things simple, let's keep as a free because this is going to be enough for our use case.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So this one is going to be called demo new CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 28:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And here we have only the option to use a single site or app.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 29:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We don't need to have a domain, but we could add a domain and provision a TLS certificate for us.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 30:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Let's click on next.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 31:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And now we have to say, what is the origin type?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 32:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So as you can see right now, we have Amazon S3, elastic load balancer, API gateway, elemental media package or other.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 33:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And the VPC origin, if you want to connect directly to a private EC2 instance or an application of balancer that are deployed privately, this is only available in the business plan.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 34:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: But still an option of what CloudFront can do.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 35:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we'll use Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 36:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then we have to browse Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 37:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And we'll use a demo CloudFront stephane v4.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 38:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 39:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Next we're going to allow private S3 bucket access to CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 40:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: Yes, and we'll use the recommended origin settings and we'll use the recommended cache settings to serve S3 content.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 41:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So now the setup is quite simple.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 42:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: If we want to have security, we can enable the web application firewall, but this is not something we need right now.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 43:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And if you want to have protection against layer 7, again, this is available with the business plan.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 44:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So right now, I don't want anything.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 45:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I'll click on- Make sure we have the free plan.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 46:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Yes, that's good.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 47:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: The UI is just a little bit counterintuitive in this case, but let's get back into this.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 48:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So web application firewall, we don't need anything.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 49:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We click on next and we can review everything.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 50:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So yes, we are on the free plan and we're going to create our distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 51:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: Okay, so my distribution is now created.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 52:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: Now if I go into S3 and look at the permissions and I look at my bucket policy, I can see that now in my bucket policy, I have a bucket policy allowing access to my bucket from our CloudFront distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 53:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: These are two because I had two, one is a test and one is the one I just created for you.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 54:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: As we can see, this allows our CloudFront distribution to privately access our S3 buckets.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 55:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And so this was entered as a bucket policy by the platform service as it was being deployed.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 56:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So my distribution is now ready and I can click on the domain name, open a new tab, and press enter.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 57:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now I'm gonna get an access denied, but this is fine.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 58:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It's because I need to enter one specific path.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 59:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So /coffee.jpg.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 60:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: As you can see, my coffee image is now loading.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 61:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Or /beach.jpeg.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 62:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And again, my beach image is loading.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 63:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And now if I go to index.html, I have my full image with "I love coffee" and "hello world" and this image.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 64:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So even though all my bucket objects are private, now because we have this bucket policy allowing access from CloudFront, I'm able through CloudFront, to see all that I need to see.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 65:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But now the added benefit is that if I go back to beach.jpeg, the image is cached so loading is almost instantaneous.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 66:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So back to here.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 67:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Again, very, very fast loading.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 68:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And that is the benefit of CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 69:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that's it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 70:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: We've created a CloudFront distribution within the free plan, and we set up S3 as an origin and we saw the bucket policy.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 71:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/167_CloudFront - ALB_EC2 as an Origin.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: So how can we connect CloudFront to an application load balancer or an EC2 instance as an origin?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we have two ways, and this is the better way and the newer way.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It's called using VPC origins.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And it allows you to deliver content directly from applications that are hosted in your private subnets in your VPC.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And everything can remain private.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You don't need to expose any of this to the internet.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that means we can deliver traffic to private application balancers, network load balancers, and EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So how does that work?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront, Edge Location
- Key Insights: Well, we're going to create a CloudFront distribution, which has a bunch of edge locations, and our users are going to access CloudFront this way.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 10:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: But then from CloudFront, we're going to create a VPC origin and connect this VPC origin to our backend.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So it could be, again, an ALB, an NLB or an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And then CloudFront will do the link through the VPC origin to direct traffic to your private subnets and applications.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And from a network perspective, this is one of the most secure way of doing your setup because, well, your applications are still hosted privately, internally, and then you choose what to expose through CloudFront, which is very handy.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: If you wanted to use a public network, this was the previous method before the VPC origin feature existed.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I still wanna show it to you because it's good to understand what was done before.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You had to have an EC2 instance that was public.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: And so therefore you had a list of edge locations with their public IPs.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 18:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Amazon CloudFront, Edge Location
- Key Insights: And you use this link to find the list of all the CloudFront IPs and you would make sure to change the security group to allow all these public IPs of the edge location into your EC2 instance.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 19:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So it would be public, but only restricted to the edge locations.
- Hidden/Implicit Meaning: Constraint or limitation signal; Global entry-point acceleration signal.

Line 20:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: And the same goes for if you had an application load balancer, again, it should have been public, but your EC2 instances could have been private.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 21:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then just have private network between your ALB and your EC2 instances through the use of security group.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: And again, you must make sure that your ALB has a security group that allows all the public IPs coming from CloudFront.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 23:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So it's a bit more tedious because number one, you need to find these public IPs and change the security group.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: And on top of it, well, there is a risk that if someone changes the security group of your ALB or your EC2 instance, then your instance is public to more than just your CloudFront distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 25:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But this was the old way.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now the new better way is to use, of course, VPC origins.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: All right, so that's it in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 28:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/168_CloudFront - Geo Restriction.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Just a short lecture around CloudFront geo restriction.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So you can restrict who can access your distribution based on the country where they try to access the distribution from.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So you can set up an allow list to define a list of approved countries, or you can set up a block list to set up a list of banned countries.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: Now the country is determined by using a third party geo IP database to match the IP of the user to the country it belongs to.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the use case for using geo restriction would be copyright laws to control access to content.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So in order to use the geographic protection, somehow I need to change my plan.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So if you look at this plan, the manage free plan and change this plan, as you can see within the list right now, as it says, it says that there is geographic traffic blocking, but this option is not available to me and I need to change to something called the Pay as You Go option, but it's not available to me either here.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So it was is a little bit slow and I'm trying to edit my course.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 9:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: But so what I've done is that I've created another distribution, this one, which is Pay as You Go type of billing.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 10:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And now under security I have the CloudFront geographic restrictions that I can edit and I can have an allow list or block list and then select the countries that I need to block.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: For example, I wanna block these two countries and then save my changes.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: I expect over time that CloudFront will have the correct options under security, under the free plan.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But let's see.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Anyways, now you know how to do it at least.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Either you select a paid plan or pay as you go and you'll have access to play with the security options.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Alright, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/169_CloudFront - Cache Invalidation.txt

Line 1:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So now, let's talk about cache invalidations in CloudFront.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 2:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So, CloudFront has a backend origin, of course.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront, Edge Location
- Key Insights: And if you do happen to update the backend origin, CloudFront edge locations will not know about it and will only get the refreshed content from your backend origin, the update you want, once the TTL of the cache has expired.
- Hidden/Implicit Meaning: Constraint or limitation signal; Edge-caching behavior signal; Global entry-point acceleration signal.

Line 4:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But that is maybe an undesirable behavior for you because you want the new content to be served as soon as possible.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 5:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And therefore, what you can do is you can force an entire or a partial cache refresh.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 6:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And therefore, you eliminate all the TTL happened, present in your cache.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 7:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And to this, you too, perform what's called a CloudFront invalidation.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, you need to pass in some file path.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, you can either invalidate all the files with a star or invalidate a special path, for example, /images/*.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, so how does that work?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront, Edge Location
- Key Insights: Well, say we have a CloudFront distribution, two edge locations.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 12:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery
- Services: Edge Location
- Key Insights: Each edge location has its own cache, which contains the index.html and the images directly from your origin, which is an S3 bucket.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 13:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And it does happen that, for example, the TTL for these files are set to one day.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 14:
- Concepts: Edge Caching and Content Delivery
- Services: Edge Location
- Key Insights: So, that means that in one day, the edge locations will re-fetch these files for the cache.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now, you as a user, you're an admin, you're going to update the files in the S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You're going to add or change some images.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And also, change the index.html file.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 18:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And you want these updates to be reflected as soon as possible to your users in CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 19:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Therefore, what you can do is that you're going to invalidate two path.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 20:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: First is going to be the /index.html to invalidate a specific file.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Edge Caching and Content Delivery
- Services: Edge Location
- Key Insights: And then you're going to invalidate /images/* to remove all the images from the cache in your edge locations.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 22:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront, Edge Location
- Key Insights: So, then CloudFront is going to tell the edge locations to invalidate these files from the cache and they're going to be simply removed from the cache.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 23:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery
- Services: Amazon CloudFront, Edge Location
- Key Insights: Now, next time a user is going to ask for, for example, the index.html, CloudFront is going to forward the request to a specific edge location, which will realize that the file is not in its cache anymore.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 24:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: Therefore, the edge location will do a request on your origin and get the updated and newer index.html.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 25:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: Hence, you've seen the value of cache invalidations.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, that's it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/170_AWS Global Accelerator - Overview.txt

Line 1:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: Okay, so in this lecture, we are going to talk about a newer kind of service for AWS called the AWS Global Accelerator.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 2:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But before we do so, I want to introduce the problem to you that we're trying to solve and how we're going to solve it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, say you have deployed and application, and it's global and you've global users who want to access it directly.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But our application is only deployed in one region.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, for example here in India, I have deployed a public application advancer.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But my users are all over the world.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: They're in America, in Europe, in Australia.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And so as they access the application, they want to go over the public internet.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And that can add a lot of latency due to many hops through the routers.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So, I'm obviously overplaying this, so you can see that in America, there's five hops of routers or servers before we get to the public ALB in India.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And that's because it goes over the public internet.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Same for Australia, many hops.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And same for Europe, many hops.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So you can see these hops I introduce a bit of risk connection can get lost, they also add a little bit of latency, and they're not as direct as possible into our amazon infrastructure.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So what we want to do is to wish to go as fast as possible through as soon as possible the AWS US network to minimize latency.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: And so before we do so and use the global accelerator for this, I want to introduce to you another concept which is Unicast and Anycast IP.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 18:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So first, Unicast IP is what we know.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 19:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: One server holds one IP address.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 20:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So our clients when they talk to two server one has starting IP address is the left hand side number 12 and the other one is 98.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: Then if you refer to the IP address that begin with 12 we will be sent to the server on the left hand side.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: And for the other one if you use the other IP then we will go to the server on the right hand side.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 23:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: This we know it makes a lot sense.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: But for Anycast IP, is a little different.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 25:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: All servers will hold the same IP address and the client will be routed to the nearest one.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is contra-intuitive but this is how it works.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So our client has two servers and these two servers as you can see in the bottom, they have the same IP.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 28:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: But our client when it tries to connect to this Anycast IP will be sent to the server that is the closest to itself.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 29:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And as surprising as this is, this is how it works.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 30:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: So Global Accelerator uses that Anycast IP concept to work.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 31:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So how does it work?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 32:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We're able to leverage the AWS internal global network to route to our application.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 33:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we have the same idea, we want to route to India and we have users all around the globe.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 34:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: And is going to happen is that instead of sending it through the public internet in America, it's going to come to the closest edge location.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 35:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location, Elastic Load Balancing
- Key Insights: And from edge location, it's going to go all the way straight to our ALB through the internal AWS network.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 36:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location, Elastic Load Balancing
- Key Insights: Same for Australia, so it goes to closest edge location near to Australia and then it goes over the private AWS network to get to the ALB and same for Europe.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 37:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: So the idea with this is that, we're going to use an Anycast IP and there's actually going to be two of those that are going to be created for your application and they're global.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 38:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator, Edge Location
- Key Insights: And the Anycast IP will send the traffic directly to the closest edge location of your users.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 39:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: And this is the power of Anycast IP.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 40:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: So the edge location will then send the traffic to you application, (mumbles) For example, through the private AWS network which is much more stable, has less latency and so on.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 41:
- Concepts: Anycast Entry and Traffic Acceleration, Protocol and Endpoint Fit, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: So the Global Accelerator is absolutely unique because it really allows to give two static IP addresses all around the globe for the users for whatever application you may have.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 42:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: And right now I'm showing one ALB in one region but it could be global as well it could be multiple ALBs in multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 43:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So it's a game changer to me.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 44:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, what does it work with?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 45:
- Concepts: Security Perimeter and DDoS Posture
- Services: Elastic Load Balancing
- Key Insights: It works with Elastic IP, EC2 instances, Application Load Balancer, Network Load Balancer and they can either be public or private.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 46:
- Concepts: Anycast Entry and Traffic Acceleration, Global Failover and Resilience
- Services: Edge Location
- Key Insights: There is consistent performance because we go over the network so we have intelligent routing to the lowest latency edge location and we'll have fast regional failover in case anything goes wrong.
- Hidden/Implicit Meaning: Global entry-point acceleration signal; Global resilience and failover signal.

Line 47:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: There's no issue with client cache because the client doesn't cache anything the IP, the two Anycast IP we're using don't change.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 48:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: It's internal AWS network to go after the edge location so it's perfect.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 49:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then we have health checks.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 50:
- Concepts: Anycast Entry and Traffic Acceleration, Global Failover and Resilience
- Services: AWS Global Accelerator, Elastic Load Balancing
- Key Insights: So the Global Accelerator will perform a health check on your application and then make sure that the application is global and if health check fails for one ALB and one region then there is automated failover in less than one minute to a healthy end port.
- Hidden/Implicit Meaning: Global entry-point acceleration signal; Global resilience and failover signal.

Line 51:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is really, really great.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 52:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And it's amazing for disaster recovery, thanks, to the health checks.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 53:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: Now for security, it's appropriately secured because we only have two external IP that needs to be whitelisted by your clients.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 54:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator, AWS Shield
- Key Insights: And you get DDoS protection automatically through the Global Accelerator, thanks to something called AWS Shield that we'll see in the security session.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 55:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is great.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 56:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator, Amazon CloudFront
- Key Insights: So you're really asking me what is the difference between Global Accelerator and CloudFront?
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 57:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And hopefully you already see the difference, otherwise I failed but I want to outline these differences very, very clearly.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 58:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator, Amazon CloudFront, Edge Location
- Key Insights: So, Global Accelerator and CloudFront they both use the same global network and they will both use edge locations all around the globe that AWS has created.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 59:
- Concepts: Security Perimeter and DDoS Posture
- Services: AWS Shield
- Key Insights: They both integrate with Shield for DDoS protection so they both receive the same thing but now their difference.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 60:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: CloudFront is going to improve the performance for both cacheable content such as images and video, and also dynamic content such as, API acceleration and dynamic site delivery.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 61:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: And the content is going to be served from the edge locations.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 62:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront, Edge Location
- Key Insights: So once in a while the edge locations are going to fetch the content from the origin but most of the time hopefully CloudFront will deliver cache content from the edges.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 63:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So here the users are getting content from the edges.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 64:
- Concepts: Anycast Entry and Traffic Acceleration, Protocol and Endpoint Fit
- Services: AWS Global Accelerator
- Key Insights: Whereas, for Global Accelerator, it improves the performance of the wide range of application over TCP or UDP.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 65:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: But the packets are being proxyeed from the edge locations to the applications running in two one or more AWS regions.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 66:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So in that case, all the request still make it to our application end.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 67:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: There is no caching available.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 68:
- Concepts: Protocol and Endpoint Fit, Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So it's a really good fit if you have a non-HTTP uses cases, such as gaming, IoT or Voice over IP or it's also really good if you have and HTTP use case that require a static IP addresses globally.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 69:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 70:
- Concepts: Global Failover and Resilience
- Services: (none explicit)
- Key Insights: Or in case you need to have deterministic and fast regional failover.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 71:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: So, Global Accelerator is a newer kind of service and it will appear in your exam.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 72:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you like this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 73:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture for some hands on.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/aws-certified-solutions-architect-associate-SAA-C03/15_CloudFront & AWS Global Accelerator/171_AWS Global Accelerator - Hands On.txt

Line 1:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: All right, so let's go ahead and practice using Global Accelerator.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 2:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: So, for this, we're gonna have to create an infrastructure in two regions to make the Global Accelerator useful.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But let's go ahead and create it and see what the options are.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: So, first of all, we need to enter an accelerator name, so Demo, and then an accelerator type.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It's going to be Standard.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Then, the routing we want is going to be IPv4 because right now we use IPv4 addresses.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Let's click on Next.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: And now we have listeners, so what do we want our accelerator to listen on?
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 9:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: So the protocol is gonna be TCP, and the port is going to be 80 because we're going to send HTTP traffic to our instances.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Client affinity allows you to handle whether or not you want the same client to go to the same backend instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So you can have none or have it by source IP, but for now we'll leave it as none.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Let's go Next, and now we have listeners.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is where you create endpoint groups for multiple listeners.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we can configure regions, and then we can configure instances behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, for example, here we are going to choose US-East-1, very nice.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then we add a second endpoint group, which is going to be EU-West-1, which is the region that I want to use right now.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: As you can see, for Global Accelerator, because it's a global service, on the top-hand side it says "Global".
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 18:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that means you cannot choose any region, it's just a global service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, here we say, "Hey, we want to send some traffic to US-East-1 and some traffic to US-West-1." You could configure port overrides and health checks, but no need to right now.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 20:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Let's click on Next.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And now we need to have endpoints in these regions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: So right now we don't have any endpoints, so we cannot finish the configuration but let's create this accelerator.
- Hidden/Implicit Meaning: Constraint or limitation signal; Global entry-point acceleration signal.

Line 23:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And while it's created, we're going to add endpoints afterward.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So now endpoints are going to be, for example, EC2 instances or load balancers and so on.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 25:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, I'm going to open EC2 instances and first I'm going to choose US-East-1, which is what I want to have one of my endpoint groups in.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I will add an instance, and I will launch the instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: We're gonna go through it very quickly, so I'll call this one Demo Accelerator.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 28:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We'll use the latest Amazon Linux, this is fine.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 29:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: T3 Micro, this is fine.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 30:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We don't need a key pair.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 31:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We can select a security group.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 32:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: Yes, we're going to create one, and we're going to allow HTTP traffic from the internet.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 33:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: This is going to allow our HTTP instance to be exposed.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 34:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then under Advanced Details I'm going to, at the very bottom, select my user data, and I'm going to choose what we had before, so this, but we're going to paste it in and we're gonna say, "Hello World from hostname (indistinct) in US-East-1." This way we know which region and which instance belongs to which region.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 35:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is good, I'm going to just launch the instance and copy this again.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 36:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So now our instance is being launched.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 37:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Ao I'm going to do the exact same thing, so let's go to the instance, refresh this, and we're going to copy this IPv4 address in here and enter it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 38:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: Right now, it's not going to work, of course, because it's too early, but at least we have the IP address ready.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 39:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And we're going to do the exact same thing, but in EU-West-1, so I click on EU-West-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 40:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I'm going to launch an instance and then call it one Demoinstance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 41:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Then, the same setup as before, no key pair required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: We'll allow HTTP traffic from the internet.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 43:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Scroll down, and we're going to paste the user data but this time, for the user data, which is right here, I'm going to have it as EU-West-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 44:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: All right, so now we'll have two instances.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 45:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I'm going to launch this one as well.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 46:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So we have two instances now that have been launched, one in each region, and we have two IPs so I'm going to open this IP address in here as well.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 47:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let's see for this instance if it's ready or not.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 48:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So let's switch regions again to get back the IP because I lost it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 49:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So here's my instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 50:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And, as you can see, it says, "Hello World from my EC2 instance in US-East-1." So this one has been working correctly, and this one is probably just a matter of time.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 51:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Here we go, here it's, "Hello World from EU-West-1." So now our two instances are ready.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 52:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: And in Global Accelerator, in our accelerator, we're going to now configure these instances.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 53:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let's click on this listener, and we have two endpoint groups, one for US-East-1 and one for US-West...
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 54:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And actually, I did US-West-1 and not EU-West-1, so let's configure one for EU-West-1, which is what I wanted to.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 55:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And now we're going to add endpoints for this EU-West-1 and, as you can see in here, we have several options.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 56:
- Concepts: Security Perimeter and DDoS Posture
- Services: Elastic Load Balancing
- Key Insights: So we have Application Load Balancer, Network Load Balancer, EC2 instance, and Elastic IP address.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 57:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Right now, we've configured an EC2 instance, and we can find this instance right here.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 58:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And the weight allows you to see how you want to distribute traffic if you had multiple endpoints.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 59:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But this is good, we have one, we'll save it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 60:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now, for this one right here, US-West-1, we actually don't need it so I'm going to remove it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 61:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: This was an oversight from me.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 62:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And for US-East-1, I'm going to click on it, add endpoints.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 63:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And here, again, we can add our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 64:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Here we go, and click on Save.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 65:
- Concepts: Global Failover and Resilience
- Services: (none explicit)
- Key Insights: So now we're having issues with the health check setup for our EC2 instances, so let's go into the configuration of US-East-1.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 66:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: We're going to configure the health checks, and here we'll say, "Okay, check the protocol HTTP.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 67:
- Concepts: Global Failover and Resilience
- Services: (none explicit)
- Key Insights: The path is /, the port is 80, and you can have a 10-second health check interval, and we'll have it as two threshold count to make it faster." So perfect for this one.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 68:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And we're going to configure the second endpoint group as well, the one for EU-West-1, and we'll apply the exact same thing.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 69:
- Concepts: Global Failover and Resilience, Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: So we're going to do health checks on HTTP, the health check being 10 seconds, and the threshold being two.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 70:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that means we need to wait about 20 seconds to make sure that our endpoints are going to be healthy, so let's wait and I'll get back to you.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 71:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: All right, so I'm back in my Global Accelerator, you can get back here, and I had to wait for the provisioning status to be deployed for my health checks to pass.
- Hidden/Implicit Meaning: Global entry-point acceleration signal; Global resilience and failover signal.

Line 72:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is why the health checks were unhealthy.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 73:
- Concepts: Anycast Entry and Traffic Acceleration, Protocol and Endpoint Fit, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: But now that it's been provisioned and my health checks are passing, we can see that we have two static IP addresses available for our Global Accelerator.
- Hidden/Implicit Meaning: Global entry-point acceleration signal; Global resilience and failover signal.

Line 74:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We have this one and that one.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 75:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: And so what I can do now is just try to use the Global Accelerator.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 76:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So I'm going to open a URL, and, as you can see, by opening this IP address I'm redirected to my instance in EU-West-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 77:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I keep on refreshing and I keep on being redirected to the same instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 78:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: An dif I go to this other IP address, I also have only EU-West-1.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 79:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the reason is because I'm redirected to the one that's closest to me, but I have a VPN just to show you.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 80:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So I can connect into the United States to be closer to the US itself, and then go here and refresh and now I'm connected to US-East-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 81:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, here, both of them are US-East-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 82:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: So this shows you that the Global Accelerator is working as intended.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 83:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: For this part of the demo you would need to have a VPN, but, again, if you don't have one that's completely fine, just see as I do.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 84:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, again, if I refresh now we're back in EU-West-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 85:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is pretty cool.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 86:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: And now to ensure you don't have any costs, please remove the accelerator, so delete it.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 87:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You need to disable it, and once it's disabled you can delete it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 88:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then remember that you have instances in two regions, so terminate it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 89:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Terminate one and then terminate two.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 90:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So they're both being deleted, that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 91:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: My accelerator is now disabled so I can just delete it, and we're good to go.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 92:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 93:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/156_CloudFront Overview.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So, let's do a short overview of CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So, CloudFront is a Content Delivery Network or CDN.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 4:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: And the idea is that by using CloudFront, you're going to get a better read performance, and the content is going to be cached at the edge of the world.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 5:
- Concepts: Global Failover and Resilience
- Services: Edge Location
- Key Insights: So, they are 225 plus Points of Presence globally in AWS about 215 plus are Edge Locations and 13 are Regional Edge Caches.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal; Global resilience and failover signal.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, if we have a look at the map of the world, this is something you can get from the internet.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: The idea of CloudFront is that, for example, you have your content in an S3 Buckets in Australia but your users are trying to access that content globally.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery
- Services: Edge Location
- Key Insights: So, if you have a user, for example, in Canada, trying to access it, maybe there will be a Edge Location available next to that user and the Edge Location is going to cache that content, but first fetch it to the S3 bucket.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 9:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: That means that any other user in Canada will also get that content locally from the Edge Location and the Edge Location does not have to go to the S3 bucket every time to get the data.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 10:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So, you have a lot of Edge Locations around the world.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 11:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: So, for example, a user in Russia, could get to an Edge Location near China, and then get access to the S3 bucket content as well.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, you content is going to be distributed and cached globally.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 13:
- Concepts: Edge Caching and Content Delivery, Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So, using a CDN is very helpful because it can give you a layer of protection against a DDoS attack because content is cached all around the world and in case the requests are repeated, then your origin is not under attack.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 14:
- Concepts: Security Perimeter and DDoS Posture
- Services: AWS Shield, Amazon CloudFront, Amazon Route 53
- Key Insights: CloudFront has integration with shield for DDoS protection that has integration with WAF for firewalls and Route 53 for DNS names.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: You can expose an external HTTPS endpoint using CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So, you can encrypt connections between the clients and your CDN and then CloudFront can also access your origins using HTTPS.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 17:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: There's also support for the WebSocket protocol.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 18:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So, the idea is that CloudFront should be compatible with many web applications.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 19:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Now, what are the inner workings of CloudFront?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 20:
- Concepts: Global Failover and Resilience, Protocol and Endpoint Fit
- Services: Amazon CloudFront, Edge Location
- Key Insights: Well, you have Edge Locations and Regional Edge Caches and the idea is that your origin can have, for example, an S3 Buckets, or an HTTP endpoint, for example, on-premise servers, a server and then you're gonna have two layers in CloudFront.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal; Global resilience and failover signal.

Line 21:
- Concepts: Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: You're gonna have the Regional Edge Cache and the Edge Locations.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal; Global resilience and failover signal.

Line 22:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, how does it work as a whole?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 23:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Well, you have your users all around the world and say they want to fetch a logo from your website, so they will go and hit the URL.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: The users will get redirected to the Edge Location.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 25:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: The Edge Location does not have that logo.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 26:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: So, the Edge Location will ask the Regional Edged Cache if that logo exists in the cache and the Regional Edge Cache does not have it, therefore, it will go and forward the request to the origin.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal; Global resilience and failover signal.

Line 27:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now, the origin does have this logo, so the logo comes back.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 28:
- Concepts: Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: It gets sent back to the Regional Edge Cache, which puts the image into its cache.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global resilience and failover signal.

Line 29:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: Then the Regional Edge Cache sends it back to the Edge Location, which will also cache it as well, and then the user will get back the logo.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal; Global resilience and failover signal.

Line 30:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, why this hierarchy?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 31:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: Well, because when a user from a similar geography as the first users will request the same logo, it will just query the Edge Location and the Edge Location already has that logo cached, so the logo comes back right away.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 32:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: Now, if some users a bit more further away are requesting it from a second Edge Location.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 33:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: Well, if that Edge Location is geographically close to the Regional Edge Cache, then the Edge Location will ask the same Regional Edge Cache before for the file, and the logo will be sent right away back by the Regional Edge Cache and then back to the user.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal; Global resilience and failover signal.

Line 34:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So, the idea here is that you can see, the origin only gets one request, and we were able to serve multiple users and multiple Edge Locations.
- Hidden/Implicit Meaning: Constraint or limitation signal; Global entry-point acceleration signal.

Line 35:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: So, the Edge Locations allow you to serve content directly and quickly to the users, because they're really close to them and they will cache the most popular content whereas the Regional Edge Caches will serve content directly to the Edge Location.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal; Global resilience and failover signal.

Line 36:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: There are bigger caches, so they will cache less popular contents in case some maybe suddenly, it will become more popular.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 37:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And yes, because of the cache is larger, then the objects remain longer into this cache.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 38:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It's used to improve performance and again, gives you a second level of reduction of load on your origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 39:
- Concepts: Edge Caching and Content Delivery
- Services: Edge Location
- Key Insights: Now, in case you have dynamic content that is premium requested by users, it goes directly into your origins, it does not pass through the Edge Cache.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 40:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now, for the components of CloudFronts, we have three.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 41:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: We have the distribution, which is identified by domain name and then, you can use this distribution name to access the websites, okay?
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 42:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon Route 53
- Key Insights: You can also, if you wanted to apply a Route 53 CNAME for the non-root URLs in your domain name or an Alias for root and non-root URLs, which will point to the distribution's origin domain name.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 43:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Amazon Route 53
- Key Insights: So, there's a strong integration between Route 53 and a CloudFront here.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 44:
- Concepts: Protocol and Endpoint Fit
- Services: Elastic Load Balancing
- Key Insights: And in terms of origin, we'll see this in the next lecture, but this is where the content actually resides, this could be an S3 Bucket, and Application Load Balancer, an HTTP Server, API Gateway, et cetera, et cetera.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 45:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And then you define a Cache Behavior, which is, to define a cache configuration.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 46:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, when do you want objects to expire?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 47:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: What's the time to live?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 48:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: In which case, you won't have invalidations, and so on.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 49:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So, that's it for an overview of CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 50:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: In the next lecture, we'll have a detailed look at Origins.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/157_CloudFront Origins.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So what are the origins of CloudFront?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Well, we have an S3 bucket, and this is used for distributing files from S3 to the web or back from the web to S3 to upload them using CloudFront as an ingress, and the security is maintained and guaranteed through the use of the CloudFront Origin Access Controller OAC feature.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: You can also use CloudFront as a media store container and media package endpoint.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: This is used to deliver video on demand, VOD or live streaming videos using AWS media services.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You also have VPC Origin for application hosted in VPC private subnets, and this is to distribute content hosted through an application balancer, a network balancer, or directly on EC2 instances, but all of that in private networks.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: You can also use a custom origin, which is HTTP based.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So this is for anything that's public, so you could use it on top of an API gateway if you wanted more control otherwise, you can use straight from API Gateway, the API gateway Edge feature, or you can use it for example, on an S3 bucket that's configured as a website.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: First, you need to enable static website hosting, or finally any HTTP backend you want that is public hosted in or outside of AWS.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Now, let's have a look at the CloudFront as an origin for S3.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: In this case, we have a S3 bucket that lives within our cloud, and that's going to be our origin, and we're going to set up CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: So the idea is that CloudFront will have multiple edge locations around the world, for example, in Los Angeles, Sao Paolo, Mumbai, and Melbourne, and we're going to set up CloudFront in a specific way that is going to be compatible with our S3 buckets.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 12:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: We're going to use an origin access control, so OAC, and we'll combine this with an S3 bucket policy, and this will guarantee that the only request that go into the S3 buckets are originating from CloudFront, effectively making CloudFront the only way to access publicly the content of your S3 buckets.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 13:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Now, whenever the users request data from one of these edge locations, they will go and ask it if their data exists.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Global entry-point acceleration signal.

Line 14:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: If it doesn't exist, then the edge location will first fetch the regional Edge cache location, and then the cache location will ask the origin for the data, which I've represented as a simple line.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal; Global resilience and failover signal.

Line 15:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: I just omitted the Regional Edge cache in this diagram, but it goes directly from the origin into the Edge Location using the private network of AWS.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal; Global resilience and failover signal.

Line 16:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So this is the case for all the Edge locations around the world, effectively making an easy way to distribute an S3 bucket that is original endpoint into a globally available website.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 17:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So if you want to use the VPC origin functionality, you can actually get content directly from your private subnets into CloudFront using what's called a private origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 18:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that means that you can deliver traffic to private applicational balancers, network cloud balancers and EC2 instances.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 19:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So CloudFront will connect through something called the VPC origin that we must set up, and then we have optimal security and an optimal setup for this.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 20:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is to me the best way of doing things, but you may want to know how to do it also using public IPs and public ARBs and as origins.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is what I'm gonna show you is just the old way of doing things, but good to know from an exam perspective, because the exam might be tricky.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: You can also use CloudFront origins with application balancers or EC2 instances, for example, as origin or even on-premises web server.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 23:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that your EC2 instance must be publicly accessible.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 24:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 25:
- Concepts: Anycast Entry and Traffic Acceleration, Protocol and Endpoint Fit
- Services: Edge Location
- Key Insights: Well, because the edge locations are going to be accessing publicly your HTTP endpoints, and so your EC2 instance will have a security group and the user will go into the Edge Locations, the Edge Location will not have the content cached at first, and so the Edge Locations will ask the origin, in this case, our EC2 instance to get the contents.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 26:
- Concepts: Security Perimeter and DDoS Posture
- Services: Edge Location
- Key Insights: In which case, well, you must allow the public IP of the Edge locations into the security group of your EC2 instances, otherwise things will not work.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Global entry-point acceleration signal.

Line 27:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And how do you find the CloudFront IPs?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 28:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Well, you just use this URL, which gives you all the list of IPs that can be coming into your EC2 instances, and therefore, you have a secure security group.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 29:
- Concepts: Global Edge Operational Context
- Services: Edge Location, Elastic Load Balancing
- Key Insights: Alternatively, if you want to use, for example, an application balancer, then again, it must be public because the Edge locations will access the data, the website publicly, but your EC2 instances in the backend can still remain private because they are only accessed by the ALB.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal; Global entry-point acceleration signal.

Line 30:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So once this is it, then the users will go into the edge locations, again using all public IPs, and then the applications will request the data from your application balancer.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 31:
- Concepts: Security Perimeter and DDoS Posture
- Services: Edge Location, Elastic Load Balancing
- Key Insights: Therefore, you must allow from the security group perspective of your ALB, the public IP of the edge locations, okay?
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Global entry-point acceleration signal.

Line 32:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: CloudFront can also have multiple origins based on the content type.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 33:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you can define different paths.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 34:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: For example, if the users go to /images/*, then go to an S3 bucket as an origin or for /ap/*, then go to a custom HTTP backend or /* for a default route.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 35:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: The idea is that CloudFront will have different cache behaviors for different routes, and these routes are going to go to different origins.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 36:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: So in this example, I'm saying that anything that starts with /api/* is going to an HTTP origin, which is an application balancer, and anything that says /* overall will go into an S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 37:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: That means that the default route, if it doesn't match the /api route, will go into an S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 38:
- Concepts: Global Failover and Resilience
- Services: (none explicit)
- Key Insights: You can also group origins together, and this is to increase high availability and do failover.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 39:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So with an origin group, you have one primary and one secondary origin, and the idea is that if the primary origin fails for whatever reason, maybe it's unavailable, maybe it just doesn't respond correctly and so on, then this second origin is going to be used.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 40:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this gives you a backup.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 41:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So for example, I have an origin group of two EC2 instances in this example, platform will send a request, but then it will respond with an error status code, in which case, CloudFront will say, okay, I'm going to try the same request on your second origin, maybe it will work better.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 42:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And maybe the second origin will say, yes, here is the response you're expecting with the okay status code.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 43:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You can also apply this with S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 44:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So this could be giving you a good multi-region setup for CloudFront and Amazon S3.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 45:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So for example, we're going to get CloudFront asking a primary origin as S3 buckets, and then the second origin as a second S3 bucket.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 46:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But you're going to be smart and you're going to set up a replication between the S3 buckets, meaning that the origin B, which is in another region will have the exact same content as origin A.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 47:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Therefore, in case the first origin, for example, one region is down, then CloudFront will fail over back to the origin B in another region of the same S3 bucket content and will still get the data available.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 48:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So it's a really good way to do a region level high availability for S3 and CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 49:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that's it for Origins.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 50:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/158_Hands On_ CloudFront Origin Groups.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Okay, so let's practice origin groups in CloudFront So the first thing I'm going to do is to create an S3 buckets, and on that S3 bucket I'm going to upload a simple index.html file.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let me create a bucket, I'll call this one demo-origin-groups, and then we can create in the eu-central-1 region, this is fine.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then we are not going to, we can unlock Block all access to public. just to make things very, very, very simple.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We are going to just create this buckets.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: My bucket is now created, so I'm going to go in it and I'm going to upload a file.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: I will add a file and this file is going to be my cloudFront folder under index.html.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is a file that is very simple, it should just say, Hello this is index.html from S3.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So super simple file.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now we're going to make this file public, very quickly, so I'm going to do Action and then Make public, and this is to make sure that this file will be publicly accessible.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Next, we're going to go into our EC2 instances and we're going to create a new instance, okay.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: In the same region we're in, in eu-central-1, and it's going to be an Amazon Linux 2, and we're just going to install a very simple web server.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So at the very bottom, I have the user data that I get from before.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now, this web server has a little bit of a distinction.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So as we can see here, we have two files, we're creating, we're creating index.html and index2.html.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And the idea behind this is that we want this EC2 instance to be the fail-over of our S3 buckets in terms of origin group.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is why we have a second index2.html as you'll see in the hands-on it will be very helpful.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 18:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: So we're going to Add Storage, Add Tags, configure security group, and just make sure that you have SSH and HTTP access from anywhere and then Review and Launch, Launch and yes, Launch my instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 19:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So now we're good.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 20:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We have an EC2 instance and an extra bucket ready.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So what I'm going to do is go into the CloudFront service and create a distribution that will have these origin group.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 22:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So let's go ahead and create this CloudFront distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 23:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So my origin domain is going to be demo-origin-groups.amazons3, Okay, And then for a path, this is optional, but we'll leave it as is, the name is fine.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Sorry, the name is fine.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 25:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We can use an OAI if you wanted to restrict the bucket access only to cloudFronts, but because we made the extra bucket public and we made the file in our S3 bucket public, we can just right now not using OAI, but the best practice is definitely to use an OAI, okay, then we will scroll down and then we'll look at the behavior is fine.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Everything should be left as default.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 27:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let's keep it, everything as defaults.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 28:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And then at the very bottom, I will create my distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 29:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So my distribution is now creating and in the meantime, let's just test a little bit, a few things.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 30:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So if we go into our public IP for our EC2 instance, we get the index.html, which is fine, which is the same as doing /index.html.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 31:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then if we do index2.html, we get a second file, this is index2.html page.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 32:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So now let's wait for the cloudFront distribution to be created.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 33:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then once it's deployed, then we'll get back to this.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 34:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So my cloudFront distribution is now ready.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 35:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: I can copy the distribution domain name, and then open a new tab and make sure you do /index.html to access the index.html file.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 36:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: If you don't do /index.html, you're going to get an Access Denied error.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 37:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So once you do /index.html, you get the file back from S3.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 38:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, Hello, this is index.html from S3.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 39:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: That means that things are working.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 40:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And if you do /index2.html, you're going to get an Access Denied message, because that file does not exist on our S3 buckets.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 41:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So now let's go ahead and set up a cloudFront origin group to solve that problem.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 42:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's go ahead and create an origin, so we're going to create our second origin by clicking on Create origin, and then we need to enter a domain.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 43:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So you go to your EC2 instance and what you have to take is the Public iPv4 DNS.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 44:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So please take the DNS and not the IP address, otherwise this will not work.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 45:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: So take the DNS, you enter the domain here and then automatically it is recognized as HTTP.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 46:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then for the Name, we'll just leave it as is. click on Create origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 47:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And here we go, our second origin is created, and now we're going to group them together into an origin group.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 48:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the origins we want to add to the group is obviously going to be the S3 buckets, and then we'll add the EC2 instance as the secondary origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 49:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the primary one is our S3 buckets, the secondary one is our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 50:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So I will call it DemoOriginGroup, and then we need to specify a fail-over criteria, okay, So fail-over criteria, we'll select also any kind of errors that comes back from the S3 buckets should be fell over into my EC2 instance, okay.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 51:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is good.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 52:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Let's create this origin group.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 53:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So now we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 54:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: And next, in terms of the Behaviors of our cloudFront distribution, we need to edit this one.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 55:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we'll edit this behavior, and instead of deploying to this origin right now, we're going to deploy to distribute to the origin group.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 56:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now we'll click on Save changes and we'll have to wait until this is deployed.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 57:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let's just wait for the deployment to be over.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 58:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: Okay, so my distribution is now updated and let's have a look at it, so if we go back to this URL, if we go to index.html, as we can see, we get a, Hello, this is indexed.html from S3, but now if you go to index2.html, as you can see, we get, this is, Hello, this is index2.html page from the EC2 instance.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 59:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So it tried first to go to the S3 buckets, get an error message, and then forward things to the origin group requested the exact same file from the EC2 instance and it works.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 60:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this demo, it was pretty cool, right?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 61:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/159_CloudFront Origin Headers.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about origin headers for CloudFronts.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So you can have custom headers.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And what are those?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 5:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Well, if the user's passing a request to CloudFronts, for example, this one, which already has some headers, it is possible for CloudFront to add a custom header to the request before passing it on to the origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you can customize it for each origin and you can set whatever header you want.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: These are fixed values, this supports custom and S3 origins.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: And the use cases for this is going to identify which requests are coming from CloudFront or from a particular distribution on to your origin.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: This is going to be also very helpful as we'll see, to control access to the contents.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: For example, to say that the origin can only respond to your request when it actually originates from CloudFront, with the correct custom header.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: There's other headers that can be added back out front, and these are more dynamics, but there are specific HTTP headers based on the viewer request.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we can have a look at the viewers type of device based on the user agents.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So it could be CloudFront is Android, Desktop, iOS, mobile, smart TV, Tablet, Viewer.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Security Perimeter and DDoS Posture
- Services: Amazon CloudFront
- Key Insights: We can get information about the location headers based on the IP address, so we can get CloudFront Viewer, City, Country, Latitude, Longitude and so on.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: And then we can get information around the protocol and the HTTP version.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Protocol and Endpoint Fit
- Services: Amazon CloudFront
- Key Insights: For example, we can get the CloudFront Forwarded Proto and the CloudFront Viewer HTTP version.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And all of these headers can be helpful if you want to, to cache based on them.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 18:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 19:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So we can use them in your Cache key or at, or choose to receive them directly on your origin.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 20:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We'll see how to use these custom headers in one of the following hands on.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/160_CloudFront Origin Security.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So now let's see how we can secure CloudFront in our origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So for Amazon S3 buckets, we've seen this architecture, and the idea is that we want to be able to prevent direct access to files in our S3 buckets so that they're only accessible through CloudFront.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 3:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: For this, we know we should use an Origin Access Control and associate it with your distribution.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Edge-caching behavior signal.

Line 4:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: This was previously known as an OAI, but now it's an OAC.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 5:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And then, once the OAC has been defined on CloudFront, then you edit your S3 bucket policy so that only the OAC has the permissions to do get object operations.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: And then any user trying to access your S3 buckets from outside your CloudFront distribution will be denied because of the bucket policy.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now it's going to get a little bit trickier when it comes to custom origins because there is no built-in way to do it.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 8:
- Concepts: Protocol and Endpoint Fit
- Services: Amazon CloudFront
- Key Insights: So the idea is that, for example, say we have an application balancer or we have an HTTP custom origin, maybe a web server, and we only want them to be accessible from CloudFront.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we have two ways of doing it, and one is going to be an application logic.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Amazon CloudFront, Edge Location
- Key Insights: So let's take the example of a user accessing our CloudFront edge location and is going to give it a few headers.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 11:
- Concepts: Protocol and Endpoint Fit
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: Now, CloudFront is going to be set up so that what we get is that we're going to have a custom HTTP header added to the request that it will be sent into your ALB or your custom origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the idea now is that there's an X-Custom-Header that is customly added with some random content in it, and this gets passed onto the origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Protocol and Endpoint Fit
- Services: Elastic Load Balancing
- Key Insights: Now the origin can be configured either at the ALB level or maybe your application level to only forward requests that contain that specific custom HTTP header, otherwise, it'll refuse the request.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 14:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: So in the ALB, you can set up a filter and saying, "Hey, if the request has this header, then please forward it to your downstream instances, else, just refuse the request." And the idea is that if a user tries to do a request directly against your ALB, then your ALB will not find the custom header it expects from CloudFront and, therefore, will deny this request.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, this will only work if the custom header name and values are kept secret, but this should be fine.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 16:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Now, you can also have a second level of security into this setup, as we saw before, in which we can restrict the origin to only have a networking access from the CloudFront locations.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 17:
- Concepts: Security Perimeter and DDoS Posture
- Services: Amazon CloudFront
- Key Insights: And the CloudFront public IP addresses are available at the URL on the bottom right corner.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 18:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this gives you an application-level security, as well as a network-level security to access your custom origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 19:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And if you wanted to post this architecture one step deeper, we can leverage WAF as a service.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 20:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So the idea is that now we have the same architecture, so just simplified with an ALB because WAF is integrated directly with ALBs.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And so we can have a WAF rule directly in front of CloudFront as a first level of security.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Protocol and Endpoint Fit
- Services: Amazon CloudFront
- Key Insights: And then CloudFront will add a custom HTTP header, for example, the X-Origin-Verify and whatever secret value you have in mind.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 23:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: And then, before reaching the ALB, it's going to reach a second level WAF.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Protocol and Endpoint Fit
- Services: Elastic Load Balancing
- Key Insights: And this WAF will have a filtering rule set in place so that only the request that are having this HTTP header are passed on to the ALB.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 25:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: Then, if someone tried to directly access the ALB, it will have first to access it through your web application firewall.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 26:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: And then WAF will deny this request because it does not contain the custom HTTP header.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So this time the filtering logic happens not at the ALB level, but at the WAF level, which may be easier to manage.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 28:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Why?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 29:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Well, because we can set up that secret header name and value in Secrets Manager with an auto-rotation policy for enhanced security.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 30:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then once in a while, this Secrets Manager will invoke a Lambda function.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 31:
- Concepts: Protocol and Endpoint Fit
- Services: Amazon CloudFront
- Key Insights: And this Lambda function will update the custom HTTP header with a new value in CloudFront directly using an API call, but also update it in WAF folder filtering rule.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 32:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Meaning that we can probably rotate this every 30 days to have maximum level of security.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 33:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 34:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: This gives you a good idea into how you can secure network access into your origin by limiting in CloudFront.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/161_Hands On_ Restrict an ALB to CloudFront.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, so let's have a look at Origin Security.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So if I create a distribution, and choose my demo origin group, just a random S3 Bucket.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: In here, I have the option to use an OAI.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And, if I use an OAI, then it's going to restrict the bucket access only to this OAI, by setting up a bucket policy.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, I can select an origin access identity, and for this I have to create one.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, I can just create this one, right away.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then select it from this list.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then, for the bucket policy, do we want to update the bucket policy, to only allow read only access to the OAI?
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Yes, please update the bucket policy.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then, I will scroll down.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And this is a way to create a secure OAI between your CloudFront distributions, and your S3 Buckets.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, now if I go into my S3 Buckets, and look at properties, and then look at the, um, I will refresh this.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Look, actually at the Permissions tabs, and then look at the bucket policy, as you can see the bucket policy has been edited by CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And, this only allows the principal, which is corresponding to my CloudFront Origin Access identity, with this ID.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, this is how you secure CloudFronts with S3 Buckets.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now, lets see how we can secure CloudFronts with an application load balancer.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So, first to do so, what I am going to do, is to create an ALB.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 18:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So, I will go into my Load Balancers, create a load balancer, an application load balancer, I'll call it demo-cf-alb, it's internet-facing, you can have it in multiple AZ's, and then click on Configure Security Settings, Security Groups, we can create a new Security Group, which allows anything on Port 80.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 19:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So, notice here, I'm not restricting access just through Cloud Fronts, I'm restricting, I'm saying you can access my ALB from anywhere.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 20:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I will do Configure Routing, we have a new target group, I'll call it demo-tg.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It's instance-based, and then I'm going to register targets.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, this one instance that already is running, I'm going to add it to the registered targets.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 23:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then click on next, Review, and next, Create.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, so we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 25:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Let's verify that our target group does indeed have my instance being registered.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Yes, it is registered, so we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Edge Caching and Content Delivery
- Services: Elastic Load Balancing
- Key Insights: So, now let's create a distribution, that will be pointing to my ALB.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 28:
- Concepts: Edge Caching and Content Delivery
- Services: Elastic Load Balancing
- Key Insights: So, I am going to go into CloudFronts, create a new distribution, and the domain is going to be this one, so the domain name of my ALB.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 29:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: It's HTTP only.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 30:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: On Port 80, so we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 31:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And then, I will scroll down, and just create my distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 32:
- Concepts: Edge Caching and Content Delivery
- Services: Elastic Load Balancing
- Key Insights: So, my distribution is now creating, and I am going to pause, up until it is fully deployed, as well as my ALB.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 33:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: Okay, so now let's have a look, we can access our Application directly from our ALB, so it gets these index.html using the ALB URL.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 34:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 35:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And, if you go to CloudFronts, and have a look at this distribution right here, and look at the distribution domain name, I can also access my index.html from CloudFronts.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 36:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: Now, the idea is that we only want to be able to access our, ALB through Cloudfront, and not through the ALB itself.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 37:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, what I'm going to do, is first go into CloudFronts, look into my Origin, and I will edit this Origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 38:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And in here, I am going to add a custom header.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 39:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I'll call it X-Custom-Secrets, and then the Value is going to be mysupersecretsvalue.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 40:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So, what will happen is any request, originating from CloudFronts, is going to be sent to the ALB, with this custom header name, and this custom header value.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 41:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And, these are supposed to be secrets.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 42:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, we're going to save these changes.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 43:
- Concepts: Edge Caching and Content Delivery
- Services: Elastic Load Balancing
- Key Insights: And of course, as of now, I can still access my ALB directly, and my CloudFronts Distribution directly, but now in the ALB we're going to operate some changes at the Listener level.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 44:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, I'm going to click on this Listener, and view Edit the Rules.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 45:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: In here we're going to have two things, number one we're going to create a rule, and say if the condition on a Http header is met, so, the header type is going to be X-Custom-Secrets, and then the value is mysupersecretsvalue.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 46:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 47:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: So, if the Http header is matching this, then the Action is going to be to forward to my Target Group, demo-tg.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 48:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And, I'm going to save this.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 49:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then, I'm going to edit the last rule, so I click on Edits, and then edit the last rule.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 50:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: And so, if otherwise, the request does not contain this Http header, then instead of forwarding to the Target Group, then, we'll delete this rule.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 51:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And, we'll just add an action, and say, return a fixed response of "403".
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 52:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then the Content-Type is going to be "unauthorized", as a body.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 53:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 54:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Then we'll update this.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 55:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: And so we're saying, okay if the Http header does contain we're expecting it to contain, then forward it to the Target Group, else, do not return the response.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 56:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 57:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: CloudFront has been updated.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 58:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: Let's have a look at the Distribution, it is not being deployed, so this is all good.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 59:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And, so now let's have a look at the behavior of this.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 60:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So, if I try to access from CloudFront, and refresh, as you can see, this is still working.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 61:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: I still have access to this "Hello, this is index.html page" But, if I go to my ALB and refresh, I get an "unauthorized" response back.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 62:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: That's because my Web Browser did not include this custom Http header that I had from CloudFronts.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 63:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And so, effectively, what we've done, is that we've set up a level of security.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 64:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: Another way you could do this, and I will now do it, just to show you that the option exists, is that you could integrate your ALB with your WAF.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 65:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: And, in WAF you would set up a rule to do the filtering based on the Http filter, removing the need to edit your Listener rules.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 66:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, so this is another way of doing it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 67:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this demo, I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 68:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/162_CloudFront and HTTPS.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So now as talk about CloudFront and HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: So we have two connections happening, one within the client and the edge location, and one within the edge location and the origin.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 3:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: So the Viewer Protocol Policy is how the client connects to the edge location.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 4:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: So it could be HTTP and HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 5:
- Concepts: Protocol and Endpoint Fit
- Services: Amazon CloudFront
- Key Insights: And we can also have the option to tell CloudFront to redirect any request that is HTTP into an HTTPS request for security.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: Or you can say for example, that you only want to allow HTTPS and refuse anything that is HTTP based.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: For me, personally, I like the second option because it allows even bad request to be transformed into good request into HTTPS.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: Now, for the Origin Protocol Policy, this is how the edge location connects into your origin.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 9:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: And you have HTTP only, or you have HTTPs only, or you have a match viewer, which means that if the viewer is doing a request on HTTP, then it will match the viewer policy and so therefore send a request in HTTP form to the origin.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Or if the request of the viewer is HTTPS, then also match that and send the request to the origin in HTTPS form.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Anycast Entry and Traffic Acceleration, Protocol and Endpoint Fit
- Services: Edge Location
- Key Insights: Now, a few things to note is that your S3 buckets static websites do not support HTTPS so you have no other choice but to use the HTTP Origin Protocol Policy from your edge location into an S3 bucket setup as a static websites.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 12:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And also if you want to have the CloudFront to connect to your origin correctly, they need to make sure that your SSL or TLS certificates on your origin are valid and recognized by CloudFront because CloudFront will access publicly these end points.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now, for Alternate Domain Names.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So this is when you want to use your own domain name instead of the domain name assigned by CloudFront to your distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 15:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So instead of using a CloudFront URL that looks like this, you want to maybe use ww.example.com, which is a domain name that you own.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So in this case, CloudFront will be set up by you with alternate domain names.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: For example, ww.example.com or star.example.com, and we will have to load a proper SSL or TLS certificate onto CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 18:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: We set up these domain names directly onto the CloudFront distribution, and then our users are able to access our CloudFront distribution using a URL that we would expect.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 19:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: For this, we must have a valid SSL/TLS certificate that will cover your domain name and any alternate domain name that you set up as part of your distribution.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Edge-caching behavior signal.

Line 20:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It is possible for you, for simplicity's sake, to use a wildcard certificate and cover a wide array of domain names.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, now let's talk about these SSL certificates.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So there's the default CloudFront certificate that we get by default whenever we create a distribution, which is star .cloudfront.net and this is, for example, one of these distributions.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Edge-caching behavior signal.

Line 23:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So this is where we get HTTPS out of the box with CloudFront when using a CloudFront URL.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And if you want to load your custom SSL or TLS certificate, then you would serve it in two ways.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 25:
- Concepts: Anycast Entry and Traffic Acceleration, Protocol and Endpoint Fit, Security Perimeter and DDoS Posture
- Services: Amazon CloudFront, Edge Location
- Key Insights: So either CloudFront will serve the HTTP request using SNI, which recommended, so CloudFront will know which SSL certificate to use based on the request it receives, or we can have a level of security that is expensive, which is to use dedicated IP address in each edge location.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So for this, we can use the certificates that are generated directly from AWS Certificate Manager or ACM, or we can upload it third-party certificates directly into ACM or the IAM certificate store.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But in this case, you have to manually rotate them when they expire.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 28:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Now, these certificates must live in the US East Northern Virginia region, and the reason is because CloudFront is assigned to that region even though it is a quote, unquote global service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 29:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Then you are also able to similarly, as we did it with the ELB, to set up a security policy in which we specify the minimum protocol for the SSL/TLS in ware as well as which ciphers to use.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 30:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So that's it for HTTPS security on CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 31:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/163_End-to-End Encryption in CloudFront.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: So, how do you enable end-to-end encryption between CloudFront, your ALB, and your EC2 instance to use HTTPS all the way?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So on the end of CloudFront you must specify the Origin protocol policy to be HTTPS only.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Constraint or limitation signal.

Line 3:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: So CloudFront communicates with the ALB using HTTPS and then your custom Origin which is a load balancer in this instance must have an SSL or TLS certificate that is valid.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 4:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: And the certificate domain name must be either what we set for the Origin domain field which we configure in CloudFront, or if we're using the Host header from the clients and it's forwarded to the Origin then the host editor must match the domain of the TLS certificate on your ALB.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 5:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So, because the domain itself is going to be verified by CloudFront, you cannot use self-signed certificate.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It must be a certificate issued, for example by AWS Certificate Manager or by a third party service.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 7:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: Now, the configuration on your application load balancer is that, as I said, you must use a certificate provided by the AWS Certificate Manager or third party but then imported into the AWS Certificate Manager and then your load balancer will have correct configuration.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 8:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then of course you must set up your EC2 instance to have SSL.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And so, as you know, or as you may know the AWS Certificate Manager Service, ACM, is not supported on EC2.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You cannot export certificates from ACM.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 11:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So therefore for your EC2 instance to set up SSL or TLS you must use a third party, or you can use a third party SSL certificate for any domain name actually, because there's no verification or you can even use a self-signed certificate on your EC2 instance, because the ALB is not going to verify the certificate itself.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It's just going to use the certificate to encrypt the connection.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Elastic Load Balancing
- Key Insights: Once you have all that in place then you will have end-to-end encryption between CloudFront, your ALB, and your EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/164_CloudFront Geo Restrictions.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let's talk about how to restrict content geographically in CloudFronts.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: For this we'll use the geo restriction in CloudFronts, which is allowing you to deny or accept a specific list of countries.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So how does it work?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: Well, we'll set up CloudFront with Edge Locations and our origin, for example, in the S3 bucket.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And we have users coming from all around the world Here's an example of Malta and France.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: Now in CloudFront you're going to define an Allow list of countries that you want to allow into your platform distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 7:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So we have France and Portugal, meaning the users from France can access our CloudFront distribution, whereas the user from Malta cannot.
- Hidden/Implicit Meaning: Constraint or limitation signal; Edge-caching behavior signal.

Line 8:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: Now to understand this, there's going to be a matching done at the country level between the IP addresses of your users against a database that matches an IP address to a specific country.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: The Allow list is something you can define our CloudFront distribution which is to say you only allow the list of countries into your distribution, or you can use a Block list to prevent access from a specific list of countries and then allow everyone else.
- Hidden/Implicit Meaning: Constraint or limitation signal; Edge-caching behavior signal.

Line 10:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: Now these settings apply to your entire CloudFront distribution across all origins.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 11:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And the use case for this would be to do copyright laws, for example, to control access to content.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So if you open one of your distributions and go to geographic restrictions in there, you're going to have an edit button and you have either no restriction, or you can specify an allow list and specify a list of countries that are allowed in your distribution or a block list and specify yet again, a list of countries.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 13:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/165_CloudFront Functions and Lambda@Edge.txt

Line 1:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So cloud front has more capability than just a CDN.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 2:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: This allow you to run custom code at the Edge to do some customization.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Edge Caching and Content Delivery
- Services: Edge Location
- Key Insights: So the idea is that you want to execute edge functions as close as possible to users to make sure that you're verifying some early logics some early behavior or normalizing some Cache keys.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 4:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront, Edge Location
- Key Insights: So an Edge Function is a code that you write and that you attached to a CloudFront distribution and it will run very close to users in order to minimize the latency of whatever you're trying to do.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 5:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: It doesn't have any cache behavior.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It's just here to change the request and the response sent by the users and back to the users.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: Now CloudFront has two different logic for Edge Functions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: It has the CloudFront functions and Lambda@Edge.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We'll see them both in this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Protocol and Endpoint Fit
- Services: Edge Location
- Key Insights: So the use cases for customization at the Edge, at the Edge is to manipulate HTTP request and responses is to implement request filtering before reaching your application is to verify user authentication and authorization is to also maybe generate HTTP responses directly at the Edge.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Or do A/B testing by separating users into two groups.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Or for example, doing Bot mitigation at the edge.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: The idea is that using Edge Functions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So either Cloud Front Functions and Lambda@Edge you do not have to manage any servers.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Everything is deployed globally and it is serverless.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Amazon CloudFront, Edge Location
- Key Insights: So if we look at a traditional architecture of CloudFront, we have our clients to our Edge Locations talking to our regional Edge Cache, talking to our Origin.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal; Global resilience and failover signal.

Line 18:
- Concepts: Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: Now Lambda@Edge Functions are going to be deployed at the Regional Edge Cache level.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global resilience and failover signal.

Line 19:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: Whereas CloudFront Functions are going to be deployed on the Edge Locations.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 20:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: So as you can see two different level for deployments of these functions, and that will impact your choice between CloudFront Functions and Lambda@Edge Functions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So if we look at CloudFront Functions, they will interact with the viewer request and the viewer response.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: These are the request and response that happen between the clients and the cloud front.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 23:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It does not modify origin request or origin response.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So these are lightweight functions return in JavaScript and they're meant to do high scale latency-sensitive CDN customizations.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 25:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So it is Sub-millisecond startup time.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So it's very, very quick to start and it can handle millions of requests per second.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So we run at Edge Locations and it's Process-based isolation.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 28:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So you want to change the viewer request and responses as I said.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 29:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So what is a viewer request?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 30:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Well, it's after CloudFront receives a request from a viewer and your response is before CloudFront forwards the response to the viewer.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 31:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that it's a native feature of cloud front.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 32:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: You manage the code directly from within CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 33:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And this allows you to do some very quick time sensitive transformations in CloudFront, okay.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 34:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: The idea is that you cannot call external services from the CloudFront Functions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 35:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You just want to perform some transformations, some computations or some normalization in a very quick fashion.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 36:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Now Lambda@Edge is a different mindset.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 37:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: So these were first what CloudFront was offering as a feature CloudFront Functions are new but Lambda@Edge has been existing for a long time.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 38:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And the idea was this is that you have Lambda Functions that are written in either NodeJS or Python.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 39:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And you can scale through thousands of requests per second.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 40:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So less scale than (indistinct)functions for sure.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 41:
- Concepts: Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: And they run on the nearest Regional Edge Cache.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global resilience and failover signal.

Line 42:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: They're VM-based isolation.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 43:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And they're used to change both CloudFront requests and responses.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 44:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So we can change the viewer request, the Origin Request which is the request that CloudFront sends to your origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 45:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You can change the Origin Response.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 46:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So the response that CloudFront receives from the Origin and as well as the viewer response, okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 47:
- Concepts: Global Failover and Resilience
- Services: Amazon CloudFront, Edge Location
- Key Insights: Now, when you want to deploy Lambda@Edge Functions on CloudFront, you need to author your functions in one region, which is us-east-1, and then CloudFront will replicate this function to all its regional Edge Caches.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global resilience and failover signal.

Line 48:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now, if we have a look at how these things can be used together.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 49:
- Concepts: Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: So we have Edge Locations and Regional Edge Cache.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal; Global resilience and failover signal.

Line 50:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And so the view request goes all the way like this.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 51:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Then it goes through the Origin, and then the Origin Response, goes all the way like this to the viewer response.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 52:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Now your Cloud Front Functions are going to run on the Edge Locations at the Viewer Request and Viewer Response level.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 53:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Whereas your Lambda@Edge Functions are going to run at the Origin Request and Origin Response level.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 54:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: This is if you want to use both CloudFront Functions and Lambda@Edge Functions together, okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 55:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is one option.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 56:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And we can see a clear separation of (indistinct).
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 57:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: But if you want to just have Lambda@Edge Functions then in that case, what's going to happen is that the Lambda@Edge Functions are going to operate on both of your requests, response.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 58:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And the origin request and response.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 59:
- Concepts: Edge Caching and Content Delivery
- Services: Edge Location
- Key Insights: But only at the original Edge Cache Level, okay.
- Hidden/Implicit Meaning: Constraint or limitation signal; Edge-caching behavior signal.

Line 60:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: In this case we cannot use CloudFront Functions because we cannot use both Lambda@Edge and CloudFront Functions on the Viewer Request and Responses.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 61:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: So this is when you need capabilities of Lambda@Edge that are not available with CloudFront Functions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 62:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: For example, if you need a longer execution time, network access, third party API calls, these kind of things.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 63:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So if we want to compare, you know, on the table the Cloud Front Functions and Lambda@Edge while the run time is support is different.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 64:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So one is JavaScript, pure JavaScript code.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 65:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: The other one is NodeJS and Python.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 66:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: Where it gets executed is on Edge Locations for CloudFront Functions.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 67:
- Concepts: Edge Caching and Content Delivery
- Services: Edge Location
- Key Insights: Whereas it's original Edge Cache for Lambda@Edge.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 68:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: The CloudFront triggers are going to be the view request and response functions and all of them for Lambda@Edge.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 69:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: The isolation is process based versus VM based.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 70:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now the max execution time is what I think is the most important thing.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 71:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: You only get one millisecond to execute your CloudFront Functions.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 72:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And therefore them must be very quick and very simple.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 73:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Whereas Lambda@Edge, you get five seconds of run time for viewers triggered and 30 seconds of run time for origin triggers.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 74:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: The memory of your CloudFront Functions is low two MegaBytes.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 75:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Whereas for Lambda@Edge, you have more memory.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 76:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: 128 MegaBytes or 10 GigaBytes.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 77:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: The total package site is very small for CloudFront Functions, 10 KiloBytes whereas Lambda@Edge has more space.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 78:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: There's no network access no fast system access for CloudFront Functions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 79:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Whereas you have some for Lambda@Edge.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 80:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: You do not have access to the request body in CloudFront Functions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 81:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: You have access to it in Lambda@Edge.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 82:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So CloudFront Functions is really about reading headers and so on.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 83:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: And the pricing is that there's a free tier for CloudFront Functions and it's one sixth of the price of @Edge.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 84:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: So if you can move your logic from Lambda@Edge CloudFront Functions, you're better off and Lambda@Edge as no free tier.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 85:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And you get charge per request and duration.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 86:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: So when do you use a CloudFront Function versus a Lambda@Edge function?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 87:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: Well, CloudFront Functions are going to be used for Cache key normalization.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 88:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So you want to transform the request attributes such as the headers, cookies, the query string, the URL.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 89:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: To create an optimal Cache Key.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 90:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You also want to manipulate your Headers.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 91:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So you want to change them.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 92:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: You want to insert, modify, or delete HTTP headers in a request or response.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 93:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Or you want to do your rewrites, or redirects or to request authentication and authorization directly at the Edge.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 94:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So in which you can create and validate user generated tokens, for example JWT to allow or deny request very close to your users.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 95:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Whereas Lambda@Edge is going to be giving you a much longer execution time, okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 96:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Up to five seconds or 30 seconds.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 97:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You get adjustable CPU memory.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 98:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You get to have code that can depend on third party libraries.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 99:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: For example, you can use the SDK to access other AWS services.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 100:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You can use the network access to use external services for processing, and you have file system access.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 101:
- Concepts: Edge Caching and Content Delivery, Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: If you wanted to Cache some stuff locally or you can even access the body of the HTTP request to manipulate the body itself.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 102:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So hopefully the use Caches are clear and well defined.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 103:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Amazon CloudFront, Edge Location
- Key Insights: Now, if you wanted to do authorization and authentication with CloudFront functions, the idea is that at the Edge Location, you would intercept the content and you would check the token, the digital JWT token which lives in your headers.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 104:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then you can check whether or not it is correct.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 105:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then if it's not correct then the client will get an error message directly without having your request go all the way to your origin.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 106:
- Concepts: Edge Caching and Content Delivery, Global Failover and Resilience
- Services: Edge Location
- Key Insights: Whereas your Lambda@Edge Function will operate on the regional edge Cache level.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global resilience and failover signal.

Line 107:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It could be intercepted by Lambda Functions which can do some custom logic and even issue third party API calls, to check whether or not the authorization and authentication is properly well set up.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 108:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Another very common use case for Lambda@Edge is to load content based on the user agents.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 109:
- Concepts: Edge Caching and Content Delivery
- Services: Edge Location
- Key Insights: So we have an extra bucket an Amazon cloud front with Original Edge Cache and we have users texting it from desktop and others just texting from mobile.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 110:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now they both wanna access a cat picture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 111:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So they do a request for cat picture and the resolution is super high.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 112:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So 192, 1, 9, 2, 0 and 1, 8, 0, 8.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 113:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: 0 is 10 ADP and they request it from CloudFront.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 114:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So if the request goes well, the request is passed all the way to the S3 bucket to get that specific image.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 115:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But imagine that the same request is done from our mobile device.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 116:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And this time the user agent is not Chrome.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 117:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It is the iPhone OS Safari.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 118:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: Now, what we can do is instead of sending this big image back to our mobile which may be very inefficient, we can have Lambda@Edge Function that will inspect the User-Agent GTP header and then redirect based on the device type.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 119:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And so therefore, because our device is a mobile device then the image is going to be asked into our S3 Bucket is going to be cat-640-320.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 120:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Which is a lower resolution for our cat picture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 121:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And this is the picture that will be returned by our S3 Bucket into our mobile device.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 122:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So the Lambda@Edge Function was able to modify the request to change the target of these request.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 123:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So the other way you can use Lambda@Edge is for a global application.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 124:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: For example, your client gets the website from the S3 Bucket.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 125:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: And then for dynamic API requests it sends it into CloudFront to leverage the Cache but your Lambda Function can also be used for example to query data into DynamoDB table, which gives you a fully global and serverless way to do an API in AWS, okay.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 126:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that's it at the exam level.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 127:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: What you need to know is understand when you need to use Lambda@Edge or CloudFront Functions and that should be good to go.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 128:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But I want to give you a bit more details so you can really understand the use cases is behind it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 129:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So hope you like this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 130:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/166_Hands On_ CloudFront Functions.txt

Line 1:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: Okay, so let's practice using CloudFront functions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 2:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So to do so, I'm going to go and create an EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let me terminate this one from before.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I'm going to launch an instance, Amazon Linux 2.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It's going to be a T2 micro.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I will configure the instance details.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And for these data, I'm going to use the user data from the functions directory.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And what this does is it will create again, a web server.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And this time we'll have three folders.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We have EN for English, FR for French, and DE for Dutch.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the idea is that you're going to have three versions of index.html, one in English, one in French and one in German.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we are going to paste this into here and click on Add Storage, Add Tags, and then Configure Security Group.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: We'll add SSH and then HTTP on port 80.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Review and Launch.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Launch.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And we are good to go.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this EC2 instance will have three different, obviously, languages.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 18:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And what we want to do is to have CloudFront redirect to the correct language based on the user location.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 19:
- Concepts: Edge Caching and Content Delivery, Security Perimeter and DDoS Posture
- Services: Amazon CloudFront
- Key Insights: So to do so, what I'm going to do is that I'm going to get the public IP for DNS, and we're going to create a new CloudFront distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 20:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So we'll create this distribution right now.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 21:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: The origin domain is right here, we're going to use this.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: It's HTTP.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 23:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then in terms of path, we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Name, we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 25:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Custom headers, we're good to go.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I will go to additional settings.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: Scroll down a bit more and under "Cache Key and Origin Requests", we're going to use a cache key policy and origin request policy.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 28:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And we need to create our own cache policy.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 29:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: So let's create a policy, and I'll call this one "DemoPolicy." And what we want to do is to have access to a CloudFront header, which represents the country, and cache on this.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 30:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So for headers, I'm going to include the following header.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 31:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And I want us to have the CloudFront-Viewer-Country.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 32:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And this country is going to give us information around which country is the requests originating from.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 33:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And we're going to be able to cache based on the value of this country.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 34:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So let's go ahead and then save this cache policy, my demo policy.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 35:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And in here, I'm going to be refreshing and use the demo policy.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 36:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, great.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 37:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront, Edge Location
- Key Insights: And for function associations, we'll see this later on, this is if we want to use CloudFront functions around that edge, we will set this up right after.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 38:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let me scroll down.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 39:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And what I want to do though, is to set up a default root object, which is what happens in case you're just requesting the root URL instead of a specific object.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 40:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I want it to be /en/index.html.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 41:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we want the default to redirect to the index.html of my English language.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 42:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: Okay, let's create this distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 43:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And it's deploying.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 44:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So now let's go back into our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 45:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We're going to copy the DNS.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 46:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And if I do /en/index.html, I'm going to get the English version of the website.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 47:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: If I do /fr/index.html, I'm getting the French version of the website.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 48:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then I'll get the less version of the websites, okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 49:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is perfect.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 50:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We have our web server set up correctly.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 51:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: And now let's deploy some functions onto our CloudFront distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 52:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So to do so, on the left hand side there is functions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 53:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And we're going to create a function, and I'll call this one "DemoFunction." And this function will take a request.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 54:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And based on the country it receives, will redirect to the proper version of the websites.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 55:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So these are a bit of code, okay.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 56:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we need to copy some code.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 57:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the code is in function.js, and you can have a look at the code in details later on, but this is not necessary for this hands-on.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 58:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: But the idea is that if we don't have any information around the country that is assigned to the request, means there is no country requested, then we're going to do a lookup of the CloudFront-Viewer-Country header.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 59:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And in case the header does include one of the country codes from above, so FR or DE, then redirect to this, else, redirect to the default of English.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 60:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then use a redirect status code to say that you should go instead to a URL that contains the full /en or /fr.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal.

Line 61:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: So this is just a bit of code, but this code executes at the edge.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 62:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And the idea is that this code is performing a very, very simple lookup of the URL and some headers, to understand whether or not the request should be changed, and perform a little bit of logic that could be annoying to perform all the way into our origin.
- Hidden/Implicit Meaning: Operational guidance / best-practice signal; Edge-caching behavior signal.

Line 63:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we're going to save these changes for our function.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 64:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: And then we can test it, so we can test "Viewer Request" and "Development." And if the URL is /index.html for example, from this IP address.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 65:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then in terms of request header, so let's set some headers that could be going into the headers themselves.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 66:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we'll do the host header to be...
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 67:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Example, ww.example.com and just have it all lower case.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 68:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Then we're going to add a new header, so we're going to say the accept header is going to be text/html.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 69:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And finally, one last header, which is the CloudFront added header.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 70:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: So cloudfront-viewer-country, which is going to be fr, lowercase as well.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 71:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let's test this function.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 72:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, the response is saying, yes, do a 302 and be redirected from the /index.html into the /fr/index.html, because it turns out that your country was FR.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 73:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: If your country is DE, and I test again the function, it's going to do /de/index.html.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 74:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: If there is another country, for example, a PL, and test this function, as you can see, the return value is /en/index.html, because this is the default value.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 75:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, so our function seems to be working correctly.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 76:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So what I'm going to do is that I'm going to publish this function.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 77:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And now we're going to associate it with a specific distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 78:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we're going to add an association.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 79:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: We select the distribution, and I need to remember the name, the ID of my distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 80:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So it's one of these, and I believe it is the one right here.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 81:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 82:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: This is the one.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 83:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: We're going to copy the distribution ID.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 84:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is E9.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 85:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Then it's going to act on viewer request.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 86:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: And the cache behavior is going to be default.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 87:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Let's add this association.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 88:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So now my function is associated with my distribution.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 89:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront
- Key Insights: And so what happens is that if I go to my website through CloudFront, so let's look at the CloudFront distribution name right now, and press enter.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 90:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Right now, I am in the English version of the website.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 91:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And that is the case because I access my website from a country that is not France or not Germany.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 92:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So if I use my VPN though, and I try to connect to France...
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 93:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I'm connected to France, now. (computer dings) I'm connected.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 94:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I try again to remove, so the /en, to remove I just press enter.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 95:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I probably need to use a incognito webpage because right now, I guess the English version is cached for me.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 96:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let me open an incognito webpage or private window.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 97:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now I am in private mode, and if I enter the URL, okay, the same as before, the root URL, and I press enter, I get redirected to the French version of my website, and this is great.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 98:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then if I try again to change to Germany this time using my VPN... (computer dings) And I'm in Germany now, and open the URL and try again.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 99:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Well, I am on the German version of my websites.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 100:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 101:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And if I try another country, for example, a random country in this list, let's say for example, Canada. (computer dings) And try to open the URL again, press enter.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 102:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I get redirected by default to the English version of the website, okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 103:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that's it for this cool hands-on, it's a nice way to demonstrate functions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 104:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/167_CloudFront Cleanup.txt

Line 1:
- Concepts: Edge Caching and Content Delivery
- Services: (none explicit)
- Key Insights: So when you're done with the hands-on, please make sure to delete any distribution that you have from before.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 2:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So first you disable them, and then you can delete them.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Please make sure to terminate any EC2 instance that is not terminated yet.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: Don't forget to also delete any load balancer you might have created.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So I'll do load balancers.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: If you want to clean up everything, you also would clean up your target groups, so we can delete them.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: And then you can leave the CloudFront function as is if you wanted to, but you can also delete it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It's really up to you.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And when your distributions are disabled, you can just go ahead and delete all of them.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay, so that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/168_AWS Global Accelerator.txt

Line 1:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: Okay, so in this lecture, we are going to talk about a newer kind of service for AWS called the AWS Global Accelerator.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 2:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But before we do so, I want to introduce the problem to you that we're trying to solve and how we're going to solve it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, say you have deployed and application, and it's global and you've global users who want to access it directly.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But our application is only deployed in one region.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, for example here in India, I have deployed a public application advancer.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But my users are all over the world.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: They're in America, in Europe, in Australia.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And so as they access the application, they want to go over the public internet.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 9:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And that can add a lot of latency due to many hops through the routers.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: So, I'm obviously overplaying this, so you can see that in America, there's five hops of routers or servers before we get to the public ALB in India.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And that's because it goes over the public internet.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Same for Australia, many hops.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And same for Europe, many hops.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So you can see these hops I introduce a bit of risk connection can get lost, they also add a little bit of latency, and they're not as direct as possible into our amazon infrastructure.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So what we want to do is to wish to go as fast as possible through as soon as possible the AWS US network to minimize latency.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: And so before we do so and use the global accelerator for this, I want to introduce to you another concept which is Unicast and Anycast IP.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 18:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So first, Unicast IP is what we know.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 19:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: One server holds one IP address.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 20:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So our clients when they talk to two server one has starting IP address is the left hand side number 12 and the other one is 98.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: Then if you refer to the IP address that begin with 12 we will be sent to the server on the left hand side.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: And for the other one if you use the other IP then we will go to the server on the right hand side.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 23:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: This we know it makes a lot sense.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: But for Anycast IP, is a little different.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 25:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: All servers will hold the same IP address and the client will be routed to the nearest one.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is contra-intuitive but this is how it works.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So our client has two servers and these two servers as you can see in the bottom, they have the same IP.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 28:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: But our client when it tries to connect to this Anycast IP will be sent to the server that is the closest to itself.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 29:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And as surprising as this is, this is how it works.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 30:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: So Global Accelerator uses that Anycast IP concept to work.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 31:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So how does it work?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 32:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We're able to leverage the AWS internal global network to route to our application.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 33:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we have the same idea, we want to route to India and we have users all around the globe.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 34:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: And is going to happen is that instead of sending it through the public internet in America, it's going to come to the closest edge location.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 35:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location, Elastic Load Balancing
- Key Insights: And from edge location, it's going to go all the way straight to our ALB through the internal AWS network.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 36:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location, Elastic Load Balancing
- Key Insights: Same for Australia, so it goes to closest edge location near to Australia and then it goes over the private AWS network to get to the ALB and same for Europe.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 37:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: So the idea with this is that, we're going to use an Anycast IP and there's actually going to be two of those that are going to be created for your application and they're global.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 38:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator, Edge Location
- Key Insights: And the Anycast IP will send the traffic directly to the closest edge location of your users.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 39:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: And this is the power of Anycast IP.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 40:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: So the edge location will then send the traffic to you application, (mumbles) For example, through the private AWS network which is much more stable, has less latency and so on.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 41:
- Concepts: Anycast Entry and Traffic Acceleration, Protocol and Endpoint Fit, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: So the Global Accelerator is absolutely unique because it really allows to give two static IP addresses all around the globe for the users for whatever application you may have.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 42:
- Concepts: Global Edge Operational Context
- Services: Elastic Load Balancing
- Key Insights: And right now I'm showing one ALB in one region but it could be global as well it could be multiple ALBs in multiple regions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 43:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So it's a game changer to me.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 44:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, what does it work with?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 45:
- Concepts: Security Perimeter and DDoS Posture
- Services: Elastic Load Balancing
- Key Insights: It works with Elastic IP, EC2 instances, Application Load Balancer, Network Load Balancer and they can either be public or private.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 46:
- Concepts: Anycast Entry and Traffic Acceleration, Global Failover and Resilience
- Services: Edge Location
- Key Insights: There is consistent performance because we go over the network so we have intelligent routing to the lowest latency edge location and we'll have fast regional failover in case anything goes wrong.
- Hidden/Implicit Meaning: Global entry-point acceleration signal; Global resilience and failover signal.

Line 47:
- Concepts: Anycast Entry and Traffic Acceleration, Edge Caching and Content Delivery, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: There's no issue with client cache because the client doesn't cache anything the IP, the two Anycast IP we're using don't change.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 48:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: Edge Location
- Key Insights: It's internal AWS network to go after the edge location so it's perfect.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 49:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then we have health checks.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 50:
- Concepts: Anycast Entry and Traffic Acceleration, Global Failover and Resilience
- Services: AWS Global Accelerator, Elastic Load Balancing
- Key Insights: So the Global Accelerator will perform a health check on your application and then make sure that the application is global and if health check fails for one ALB and one region then there is automated failover in less than one minute to a healthy end port.
- Hidden/Implicit Meaning: Global entry-point acceleration signal; Global resilience and failover signal.

Line 51:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is really, really great.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 52:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And it's amazing for disaster recovery, thanks, to the health checks.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 53:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: Now for security, it's appropriately secured because we only have two external IP that needs to be whitelisted by your clients.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 54:
- Concepts: Anycast Entry and Traffic Acceleration, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator, AWS Shield
- Key Insights: And you get DDoS protection automatically through the Global Accelerator, thanks to something called AWS Shield that we'll see in the security session.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 55:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is great.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 56:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator, Amazon CloudFront
- Key Insights: So you're really asking me what is the difference between Global Accelerator and CloudFront?
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 57:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And hopefully you already see the difference, otherwise I failed but I want to outline these differences very, very clearly.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 58:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator, Amazon CloudFront, Edge Location
- Key Insights: So, Global Accelerator and CloudFront they both use the same global network and they will both use edge locations all around the globe that AWS has created.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 59:
- Concepts: Security Perimeter and DDoS Posture
- Services: AWS Shield
- Key Insights: They both integrate with Shield for DDoS protection so they both receive the same thing but now their difference.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 60:
- Concepts: Global Edge Operational Context
- Services: Amazon CloudFront
- Key Insights: CloudFront is going to improve the performance for both cacheable content such as images and video, and also dynamic content such as, API acceleration and dynamic site delivery.
- Hidden/Implicit Meaning: Edge-caching behavior signal.

Line 61:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: And the content is going to be served from the edge locations.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 62:
- Concepts: Edge Caching and Content Delivery
- Services: Amazon CloudFront, Edge Location
- Key Insights: So once in a while the edge locations are going to fetch the content from the origin but most of the time hopefully CloudFront will deliver cache content from the edges.
- Hidden/Implicit Meaning: Edge-caching behavior signal; Global entry-point acceleration signal.

Line 63:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So here the users are getting content from the edges.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 64:
- Concepts: Anycast Entry and Traffic Acceleration, Protocol and Endpoint Fit
- Services: AWS Global Accelerator
- Key Insights: Whereas, for Global Accelerator, it improves the performance of the wide range of application over TCP or UDP.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 65:
- Concepts: Global Edge Operational Context
- Services: Edge Location
- Key Insights: But the packets are being proxyeed from the edge locations to the applications running in two one or more AWS regions.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 66:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So in that case, all the request still make it to our application end.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 67:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: There is no caching available.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 68:
- Concepts: Protocol and Endpoint Fit, Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So it's a really good fit if you have a non-HTTP uses cases, such as gaming, IoT or Voice over IP or it's also really good if you have and HTTP use case that require a static IP addresses globally.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 69:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Okay?
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 70:
- Concepts: Global Failover and Resilience
- Services: (none explicit)
- Key Insights: Or in case you need to have deterministic and fast regional failover.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 71:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: So, Global Accelerator is a newer kind of service and it will appear in your exam.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 72:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you like this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 73:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I will see you in the next lecture for some hands on.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

### File: outputs/AWS/AWS Speciality/advanced-networking-specialty/17_CloudFront/169_Hands On_ AWS Global Accelerator.txt

Line 1:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: All right, so let's go ahead and practice using Global Accelerator.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 2:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: So, for this, we're gonna have to create an infrastructure in two regions to make the Global Accelerator useful.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 3:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But let's go ahead and create it and see what the options are.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 4:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: So, first of all, we need to enter an accelerator name, so Demo, and then an accelerator type.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 5:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: It's going to be Standard.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 6:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Then, the routing we want is going to be IPv4 because right now we use IPv4 addresses.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 7:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Let's click on Next.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 8:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: And now we have listeners, so what do we want our accelerator to listen on?
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 9:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: So the protocol is gonna be TCP, and the port is going to be 80 because we're going to send HTTP traffic to our instances.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 10:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Client affinity allows you to handle whether or not you want the same client to go to the same backend instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 11:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So you can have none or have it by source IP, but for now we'll leave it as none.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 12:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Let's go Next, and now we have listeners.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 13:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is where you create endpoint groups for multiple listeners.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 14:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So we can configure regions, and then we can configure instances behind the scenes.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 15:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, for example, here we are going to choose US-East-1, very nice.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 16:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then we add a second endpoint group, which is going to be EU-West-1, which is the region that I want to use right now.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 17:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: As you can see, for Global Accelerator, because it's a global service, on the top-hand side it says "Global".
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 18:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that means you cannot choose any region, it's just a global service.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 19:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, here we say, "Hey, we want to send some traffic to US-East-1 and some traffic to US-West-1." You could configure port overrides and health checks, but no need to right now.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 20:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Let's click on Next.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 21:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And now we need to have endpoints in these regions.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 22:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: So right now we don't have any endpoints, so we cannot finish the configuration but let's create this accelerator.
- Hidden/Implicit Meaning: Constraint or limitation signal; Global entry-point acceleration signal.

Line 23:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And while it's created, we're going to add endpoints afterward.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 24:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So now endpoints are going to be, for example, EC2 instances or load balancers and so on.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 25:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, I'm going to open EC2 instances and first I'm going to choose US-East-1, which is what I want to have one of my endpoint groups in.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 26:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I will add an instance, and I will launch the instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 27:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: We're gonna go through it very quickly, so I'll call this one Demo Accelerator.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 28:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We'll use the latest Amazon Linux, this is fine.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 29:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: T3 Micro, this is fine.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 30:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We don't need a key pair.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 31:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We can select a security group.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 32:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: Yes, we're going to create one, and we're going to allow HTTP traffic from the internet.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 33:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: This is going to allow our HTTP instance to be exposed.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 34:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then under Advanced Details I'm going to, at the very bottom, select my user data, and I'm going to choose what we had before, so this, but we're going to paste it in and we're gonna say, "Hello World from hostname (indistinct) in US-East-1." This way we know which region and which instance belongs to which region.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 35:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is good, I'm going to just launch the instance and copy this again.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 36:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So now our instance is being launched.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 37:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Ao I'm going to do the exact same thing, so let's go to the instance, refresh this, and we're going to copy this IPv4 address in here and enter it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 38:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: Right now, it's not going to work, of course, because it's too early, but at least we have the IP address ready.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 39:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And we're going to do the exact same thing, but in EU-West-1, so I click on EU-West-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 40:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I'm going to launch an instance and then call it one Demoinstance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 41:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Then, the same setup as before, no key pair required.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 42:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: We'll allow HTTP traffic from the internet.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 43:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Scroll down, and we're going to paste the user data but this time, for the user data, which is right here, I'm going to have it as EU-West-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 44:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: All right, so now we'll have two instances.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 45:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I'm going to launch this one as well.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 46:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So we have two instances now that have been launched, one in each region, and we have two IPs so I'm going to open this IP address in here as well.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 47:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let's see for this instance if it's ready or not.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 48:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So let's switch regions again to get back the IP because I lost it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 49:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So here's my instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 50:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And, as you can see, it says, "Hello World from my EC2 instance in US-East-1." So this one has been working correctly, and this one is probably just a matter of time.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 51:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Here we go, here it's, "Hello World from EU-West-1." So now our two instances are ready.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 52:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: And in Global Accelerator, in our accelerator, we're going to now configure these instances.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 53:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So let's click on this listener, and we have two endpoint groups, one for US-East-1 and one for US-West...
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 54:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And actually, I did US-West-1 and not EU-West-1, so let's configure one for EU-West-1, which is what I wanted to.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 55:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And now we're going to add endpoints for this EU-West-1 and, as you can see in here, we have several options.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 56:
- Concepts: Security Perimeter and DDoS Posture
- Services: Elastic Load Balancing
- Key Insights: So we have Application Load Balancer, Network Load Balancer, EC2 instance, and Elastic IP address.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 57:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Right now, we've configured an EC2 instance, and we can find this instance right here.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 58:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And the weight allows you to see how you want to distribute traffic if you had multiple endpoints.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 59:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: But this is good, we have one, we'll save it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 60:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Now, for this one right here, US-West-1, we actually don't need it so I'm going to remove it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 61:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: This was an oversight from me.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 62:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And for US-East-1, I'm going to click on it, add endpoints.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 63:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And here, again, we can add our EC2 instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 64:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Here we go, and click on Save.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 65:
- Concepts: Global Failover and Resilience
- Services: (none explicit)
- Key Insights: So now we're having issues with the health check setup for our EC2 instances, so let's go into the configuration of US-East-1.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 66:
- Concepts: Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: We're going to configure the health checks, and here we'll say, "Okay, check the protocol HTTP.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 67:
- Concepts: Global Failover and Resilience
- Services: (none explicit)
- Key Insights: The path is /, the port is 80, and you can have a 10-second health check interval, and we'll have it as two threshold count to make it faster." So perfect for this one.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 68:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And we're going to configure the second endpoint group as well, the one for EU-West-1, and we'll apply the exact same thing.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 69:
- Concepts: Global Failover and Resilience, Protocol and Endpoint Fit
- Services: (none explicit)
- Key Insights: So we're going to do health checks on HTTP, the health check being 10 seconds, and the threshold being two.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 70:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So that means we need to wait about 20 seconds to make sure that our endpoints are going to be healthy, so let's wait and I'll get back to you.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 71:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: All right, so I'm back in my Global Accelerator, you can get back here, and I had to wait for the provisioning status to be deployed for my health checks to pass.
- Hidden/Implicit Meaning: Global entry-point acceleration signal; Global resilience and failover signal.

Line 72:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is why the health checks were unhealthy.
- Hidden/Implicit Meaning: Global resilience and failover signal.

Line 73:
- Concepts: Anycast Entry and Traffic Acceleration, Protocol and Endpoint Fit, Security Perimeter and DDoS Posture
- Services: AWS Global Accelerator
- Key Insights: But now that it's been provisioned and my health checks are passing, we can see that we have two static IP addresses available for our Global Accelerator.
- Hidden/Implicit Meaning: Global entry-point acceleration signal; Global resilience and failover signal.

Line 74:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: We have this one and that one.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 75:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: And so what I can do now is just try to use the Global Accelerator.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 76:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: So I'm going to open a URL, and, as you can see, by opening this IP address I'm redirected to my instance in EU-West-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 77:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And I keep on refreshing and I keep on being redirected to the same instance.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 78:
- Concepts: Security Perimeter and DDoS Posture
- Services: (none explicit)
- Key Insights: An dif I go to this other IP address, I also have only EU-West-1.
- Hidden/Implicit Meaning: Constraint or limitation signal.

Line 79:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So the reason is because I'm redirected to the one that's closest to me, but I have a VPN just to show you.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 80:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So I can connect into the United States to be closer to the US itself, and then go here and refresh and now I'm connected to US-East-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 81:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, here, both of them are US-East-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 82:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: AWS Global Accelerator
- Key Insights: So this shows you that the Global Accelerator is working as intended.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 83:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: For this part of the demo you would need to have a VPN, but, again, if you don't have one that's completely fine, just see as I do.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 84:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And as you can see, again, if I refresh now we're back in EU-West-1.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 85:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So this is pretty cool.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 86:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: And now to ensure you don't have any costs, please remove the accelerator, so delete it.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 87:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: You need to disable it, and once it's disabled you can delete it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 88:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: And then remember that you have instances in two regions, so terminate it.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 89:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: Terminate one and then terminate two.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 90:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So they're both being deleted, that's perfect.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 91:
- Concepts: Anycast Entry and Traffic Acceleration
- Services: (none explicit)
- Key Insights: My accelerator is now disabled so I can just delete it, and we're good to go.
- Hidden/Implicit Meaning: Global entry-point acceleration signal.

Line 92:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: So, that's it for this lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

Line 93:
- Concepts: Global Edge Operational Context
- Services: (none explicit)
- Key Insights: I hope you liked it, and I will see you in the next lecture.
- Hidden/Implicit Meaning: Implicitly contributes global edge networking detail.

## Step 2 â€” Consolidation

### 1. Concepts List
- Anycast Entry and Traffic Acceleration
- Edge Caching and Content Delivery
- Global Edge Operational Context
- Global Failover and Resilience
- Protocol and Endpoint Fit
- Security Perimeter and DDoS Posture

### 2. Services List
- AWS Global Accelerator
- AWS Shield
- Amazon CloudFront
- Amazon Route 53
- Edge Location
- Elastic Load Balancing

### 3. Features List
- anycast
- cache
- ddos
- distribution
- edge
- failover
- health check
- shield
- static ip

### 4. Use Cases
- 064_AWS Global Accelerator.txt:26: And therefore it's going to be a good fit for non-HTTP use cases such as gaming for UDP, IOT using MQTT, or Voice over IP.
- 064_AWS Global Accelerator.txt:27: And it's also going to be great if you have an HTTP use case that requires to use a static IP address, or if you have a use case that requires deterministic fast regional failover.
- 165_CloudFront Overview.txt:16: For example, we have an Amazon S3 bucket.
- 165_CloudFront Overview.txt:23: You can also connect to a custom origin over the HTTP protocol, and it could be, for example, on the S3 website, you first must enable the bucket as a static S3 website, or it could be any public HTTP backend you want.
- 165_CloudFront Overview.txt:24: For example, if you have a public load balancer, you can connect it directly into CloudFront.
- 165_CloudFront Overview.txt:29: And when the client connects and does an HTTP request into your edge location, then the edge location will see if it has it in the cache.
- 165_CloudFront Overview.txt:32: So if we have S3 as an origin, then if we look at the cloud, your S3 bucket is your origin in some region, and then you have edge locations all around the world, for example, at Los Angeles, and your users accessing the edge location in Los Angeles will get their content directly served through the edge location.
- 165_CloudFront Overview.txt:35: So this is the same when we have a user in Sao Paulo, for example, in Brazil.
- 165_CloudFront Overview.txt:50: CloudFront is a CDN, which is to cache content all around the world, whereas S3 cross region replication is to really replicate an entire bucket into another region.
- 166_CloudFront with S3 - Hands On.txt:23: But if you needed something such as, for example, edge key-value store or advanced DDoS protection or uptime SLA, or protection for WordPress, these kind of things, then one of these plans will be better for you.
- 166_CloudFront with S3 - Hands On.txt:26: But to keep things simple, let's keep as a free because this is going to be enough for our use case.
- 168_CloudFront - Geo Restriction.txt:5: So the use case for using geo restriction would be copyright laws to control access to content.
- 168_CloudFront - Geo Restriction.txt:11: For example, I wanna block these two countries and then save my changes.
- 169_CloudFront - Cache Invalidation.txt:9: So, you can either invalidate all the files with a star or invalidate a special path, for example, /images/*.
- 169_CloudFront - Cache Invalidation.txt:13: And it does happen that, for example, the TTL for these files are set to one day.
- 169_CloudFront - Cache Invalidation.txt:23: Now, next time a user is going to ask for, for example, the index.html, CloudFront is going to forward the request to a specific edge location, which will realize that the file is not in its cache anymore.
- 170_AWS Global Accelerator - Overview.txt:5: So, for example here in India, I have deployed a public application advancer.
- 170_AWS Global Accelerator - Overview.txt:20: So our clients when they talk to two server one has starting IP address is the left hand side number 12 and the other one is 98.
- 170_AWS Global Accelerator - Overview.txt:28: But our client when it tries to connect to this Anycast IP will be sent to the server that is the closest to itself.
- 170_AWS Global Accelerator - Overview.txt:40: So the edge location will then send the traffic to you application, (mumbles) For example, through the private AWS network which is much more stable, has less latency and so on.
- 170_AWS Global Accelerator - Overview.txt:68: So it's a really good fit if you have a non-HTTP uses cases, such as gaming, IoT or Voice over IP or it's also really good if you have and HTTP use case that require a static IP addresses globally.
- 171_AWS Global Accelerator - Hands On.txt:15: So, for example, here we are going to choose US-East-1, very nice.
- 171_AWS Global Accelerator - Hands On.txt:24: So now endpoints are going to be, for example, EC2 instances or load balancers and so on.
- 156_CloudFront Overview.txt:7: The idea of CloudFront is that, for example, you have your content in an S3 Buckets in Australia but your users are trying to access that content globally.
- 156_CloudFront Overview.txt:8: So, if you have a user, for example, in Canada, trying to access it, maybe there will be a Edge Location available next to that user and the Edge Location is going to cache that content, but first fetch it to the S3 bucket.
- 156_CloudFront Overview.txt:11: So, for example, a user in Russia, could get to an Edge Location near China, and then get access to the S3 bucket content as well.
- 156_CloudFront Overview.txt:20: Well, you have Edge Locations and Regional Edge Caches and the idea is that your origin can have, for example, an S3 Buckets, or an HTTP endpoint, for example, on-premise servers, a server and then you're gonna have two layers in CloudFront.
- 156_CloudFront Overview.txt:31: Well, because when a user from a similar geography as the first users will request the same logo, it will just query the Edge Location and the Edge Location already has that logo cached, so the logo comes back right away.
- 156_CloudFront Overview.txt:46: So, when do you want objects to expire?
- 157_CloudFront Origins.txt:7: So this is for anything that's public, so you could use it on top of an API gateway if you wanted more control otherwise, you can use straight from API Gateway, the API gateway Edge feature, or you can use it for example, on an S3 bucket that's configured as a website.
- 157_CloudFront Origins.txt:11: So the idea is that CloudFront will have multiple edge locations around the world, for example, in Los Angeles, Sao Paolo, Mumbai, and Melbourne, and we're going to set up CloudFront in a specific way that is going to be compatible with our S3 buckets.
- 157_CloudFront Origins.txt:13: Now, whenever the users request data from one of these edge locations, they will go and ask it if their data exists.
- 157_CloudFront Origins.txt:22: You can also use CloudFront origins with application balancers or EC2 instances, for example, as origin or even on-premises web server.
- 157_CloudFront Origins.txt:29: Alternatively, if you want to use, for example, an application balancer, then again, it must be public because the Edge locations will access the data, the website publicly, but your EC2 instances in the backend can still remain private because they are only accessed by the ALB.
- 157_CloudFront Origins.txt:34: For example, if the users go to /images/*, then go to an S3 bucket as an origin or for /ap/*, then go to a custom HTTP backend or /* for a default route.
- 157_CloudFront Origins.txt:41: So for example, I have an origin group of two EC2 instances in this example, platform will send a request, but then it will respond with an error status code, in which case, CloudFront will say, okay, I'm going to try the same request on your second origin, maybe it will work better.
- 157_CloudFront Origins.txt:45: So for example, we're going to get CloudFront asking a primary origin as S3 buckets, and then the second origin as a second S3 bucket.
- 157_CloudFront Origins.txt:47: Therefore, in case the first origin, for example, one region is down, then CloudFront will fail over back to the origin B in another region of the same S3 bucket content and will still get the data available.
- 159_CloudFront Origin Headers.txt:5: Well, if the user's passing a request to CloudFronts, for example, this one, which already has some headers, it is possible for CloudFront to add a custom header to the request before passing it on to the origin.
- 159_CloudFront Origin Headers.txt:8: And the use cases for this is going to identify which requests are coming from CloudFront or from a particular distribution on to your origin.
- 159_CloudFront Origin Headers.txt:10: For example, to say that the origin can only respond to your request when it actually originates from CloudFront, with the correct custom header.
- 159_CloudFront Origin Headers.txt:16: For example, we can get the CloudFront Forwarded Proto and the CloudFront Viewer HTTP version.
- 159_CloudFront Origin Headers.txt:17: And all of these headers can be helpful if you want to, to cache based on them.
- 160_CloudFront Origin Security.txt:7: Now it's going to get a little bit trickier when it comes to custom origins because there is no built-in way to do it.
- 160_CloudFront Origin Security.txt:8: So the idea is that, for example, say we have an application balancer or we have an HTTP custom origin, maybe a web server, and we only want them to be accessible from CloudFront.
- 160_CloudFront Origin Security.txt:22: And then CloudFront will add a custom HTTP header, for example, the X-Origin-Verify and whatever secret value you have in mind.
- 162_CloudFront and HTTPS.txt:6: Or you can say for example, that you only want to allow HTTPS and refuse anything that is HTTP based.
- 162_CloudFront and HTTPS.txt:14: So this is when you want to use your own domain name instead of the domain name assigned by CloudFront to your distribution.
- 162_CloudFront and HTTPS.txt:17: For example, ww.example.com or star.example.com, and we will have to load a proper SSL or TLS certificate onto CloudFront.
- 162_CloudFront and HTTPS.txt:22: So there's the default CloudFront certificate that we get by default whenever we create a distribution, which is star .cloudfront.net and this is, for example, one of these distributions.
- 162_CloudFront and HTTPS.txt:23: So this is where we get HTTPS out of the box with CloudFront when using a CloudFront URL.
- 162_CloudFront and HTTPS.txt:27: But in this case, you have to manually rotate them when they expire.
- 163_End-to-End Encryption in CloudFront.txt:6: It must be a certificate issued, for example by AWS Certificate Manager or by a third party service.
- 164_CloudFront Geo Restrictions.txt:4: Well, we'll set up CloudFront with Edge Locations and our origin, for example, in the S3 bucket.
- 164_CloudFront Geo Restrictions.txt:11: And the use case for this would be to do copyright laws, for example, to control access to content.
- 165_CloudFront Functions and Lambda@Edge.txt:10: So the use cases for customization at the Edge, at the Edge is to manipulate HTTP request and responses is to implement request filtering before reaching your application is to verify user authentication and authorization is to also maybe generate HTTP responses directly at the Edge.
- 165_CloudFront Functions and Lambda@Edge.txt:12: Or for example, doing Bot mitigation at the edge.
- 165_CloudFront Functions and Lambda@Edge.txt:47: Now, when you want to deploy Lambda@Edge Functions on CloudFront, you need to author your functions in one region, which is us-east-1, and then CloudFront will replicate this function to all its regional Edge Caches.
- 165_CloudFront Functions and Lambda@Edge.txt:61: So this is when you need capabilities of Lambda@Edge that are not available with CloudFront Functions.
- 165_CloudFront Functions and Lambda@Edge.txt:62: For example, if you need a longer execution time, network access, third party API calls, these kind of things.
- 165_CloudFront Functions and Lambda@Edge.txt:86: So when do you use a CloudFront Function versus a Lambda@Edge function?
- 165_CloudFront Functions and Lambda@Edge.txt:94: So in which you can create and validate user generated tokens, for example JWT to allow or deny request very close to your users.
- 165_CloudFront Functions and Lambda@Edge.txt:99: For example, you can use the SDK to access other AWS services.
- 165_CloudFront Functions and Lambda@Edge.txt:101: If you wanted to Cache some stuff locally or you can even access the body of the HTTP request to manipulate the body itself.
- 165_CloudFront Functions and Lambda@Edge.txt:108: Another very common use case for Lambda@Edge is to load content based on the user agents.
- 165_CloudFront Functions and Lambda@Edge.txt:124: For example, your client gets the website from the S3 Bucket.
- 165_CloudFront Functions and Lambda@Edge.txt:125: And then for dynamic API requests it sends it into CloudFront to leverage the Cache but your Lambda Function can also be used for example to query data into DynamoDB table, which gives you a fully global and serverless way to do an API in AWS, okay.
- 165_CloudFront Functions and Lambda@Edge.txt:127: What you need to know is understand when you need to use Lambda@Edge or CloudFront Functions and that should be good to go.
- 165_CloudFront Functions and Lambda@Edge.txt:128: But I want to give you a bit more details so you can really understand the use cases is behind it.
- 166_Hands On_ CloudFront Functions.txt:33: And we're going to be able to cache based on the value of this country.
- 166_Hands On_ CloudFront Functions.txt:64: And then we can test it, so we can test "Viewer Request" and "Development." And if the URL is /index.html for example, from this IP address.
- 166_Hands On_ CloudFront Functions.txt:74: If there is another country, for example, a PL, and test this function, as you can see, the return value is /en/index.html, because this is the default value.
- 166_Hands On_ CloudFront Functions.txt:101: And if I try another country, for example, a random country in this list, let's say for example, Canada. (computer dings) And try to open the URL again, press enter.
- 167_CloudFront Cleanup.txt:1: So when you're done with the hands-on, please make sure to delete any distribution that you have from before.
- 167_CloudFront Cleanup.txt:9: And when your distributions are disabled, you can just go ahead and delete all of them.
- 168_AWS Global Accelerator.txt:5: So, for example here in India, I have deployed a public application advancer.
- 168_AWS Global Accelerator.txt:20: So our clients when they talk to two server one has starting IP address is the left hand side number 12 and the other one is 98.
- 168_AWS Global Accelerator.txt:28: But our client when it tries to connect to this Anycast IP will be sent to the server that is the closest to itself.
- 168_AWS Global Accelerator.txt:40: So the edge location will then send the traffic to you application, (mumbles) For example, through the private AWS network which is much more stable, has less latency and so on.
- 168_AWS Global Accelerator.txt:68: So it's a really good fit if you have a non-HTTP uses cases, such as gaming, IoT or Voice over IP or it's also really good if you have and HTTP use case that require a static IP addresses globally.
- 169_Hands On_ AWS Global Accelerator.txt:15: So, for example, here we are going to choose US-East-1, very nice.
- 169_Hands On_ AWS Global Accelerator.txt:24: So now endpoints are going to be, for example, EC2 instances or load balancers and so on.

### 5. Constraints / Limitations
- 064_AWS Global Accelerator.txt:18: For security, only two external Anycast IP need to be whitelisted, which is great.
- 064_AWS Global Accelerator.txt:24: And it could be not only for HTP but also for TCP or UDP.
- 165_CloudFront Overview.txt:23: You can also connect to a custom origin over the HTTP protocol, and it could be, for example, on the S3 website, you first must enable the bucket as a static S3 website, or it could be any public HTTP backend you want.
- 165_CloudFront Overview.txt:42: So this is amazing if you have static content that must be able to be available everywhere around the world.
- 165_CloudFront Overview.txt:44: It must be set up for each region you want replication to happen.
- 165_CloudFront Overview.txt:47: And it is only for read only.
- 166_CloudFront with S3 - Hands On.txt:28: And here we have only the option to use a single site or app.
- 166_CloudFront with S3 - Hands On.txt:33: And the VPC origin, if you want to connect directly to a private EC2 instance or an application of balancer that are deployed privately, this is only available in the business plan.
- 167_CloudFront - ALB_EC2 as an Origin.txt:19: So it would be public, but only restricted to the edge locations.
- 167_CloudFront - ALB_EC2 as an Origin.txt:20: And the same goes for if you had an application load balancer, again, it should have been public, but your EC2 instances could have been private.
- 167_CloudFront - ALB_EC2 as an Origin.txt:22: And again, you must make sure that your ALB has a security group that allows all the public IPs coming from CloudFront.
- 169_CloudFront - Cache Invalidation.txt:3: And if you do happen to update the backend origin, CloudFront edge locations will not know about it and will only get the refreshed content from your backend origin, the update you want, once the TTL of the cache has expired.
- 170_AWS Global Accelerator - Overview.txt:4: But our application is only deployed in one region.
- 170_AWS Global Accelerator - Overview.txt:53: Now for security, it's appropriately secured because we only have two external IP that needs to be whitelisted by your clients.
- 171_AWS Global Accelerator - Hands On.txt:18: So that means you cannot choose any region, it's just a global service.
- 171_AWS Global Accelerator - Hands On.txt:22: So right now we don't have any endpoints, so we cannot finish the configuration but let's create this accelerator.
- 171_AWS Global Accelerator - Hands On.txt:41: Then, the same setup as before, no key pair required.
- 171_AWS Global Accelerator - Hands On.txt:78: An dif I go to this other IP address, I also have only EU-West-1.
- 156_CloudFront Overview.txt:18: So, the idea is that CloudFront should be compatible with many web applications.
- 156_CloudFront Overview.txt:34: So, the idea here is that you can see, the origin only gets one request, and we were able to serve multiple users and multiple Edge Locations.
- 157_CloudFront Origins.txt:12: We're going to use an origin access control, so OAC, and we'll combine this with an S3 bucket policy, and this will guarantee that the only request that go into the S3 buckets are originating from CloudFront, effectively making CloudFront the only way to access publicly the content of your S3 buckets.
- 157_CloudFront Origins.txt:19: So CloudFront will connect through something called the VPC origin that we must set up, and then we have optimal security and an optimal setup for this.
- 157_CloudFront Origins.txt:23: So the idea is that your EC2 instance must be publicly accessible.
- 157_CloudFront Origins.txt:26: In which case, well, you must allow the public IP of the Edge locations into the security group of your EC2 instances, otherwise things will not work.
- 157_CloudFront Origins.txt:29: Alternatively, if you want to use, for example, an application balancer, then again, it must be public because the Edge locations will access the data, the website publicly, but your EC2 instances in the backend can still remain private because they are only accessed by the ALB.
- 157_CloudFront Origins.txt:31: Therefore, you must allow from the security group perspective of your ALB, the public IP of the edge locations, okay?
- 158_Hands On_ CloudFront Origin Groups.txt:7: So this is a file that is very simple, it should just say, Hello this is index.html from S3.
- 158_Hands On_ CloudFront Origin Groups.txt:25: We can use an OAI if you wanted to restrict the bucket access only to cloudFronts, but because we made the extra bucket public and we made the file in our S3 bucket public, we can just right now not using OAI, but the best practice is definitely to use an OAI, okay, then we will scroll down and then we'll look at the behavior is fine.
- 158_Hands On_ CloudFront Origin Groups.txt:26: Everything should be left as default.
- 158_Hands On_ CloudFront Origin Groups.txt:50: So I will call it DemoOriginGroup, and then we need to specify a fail-over criteria, okay, So fail-over criteria, we'll select also any kind of errors that comes back from the S3 buckets should be fell over into my EC2 instance, okay.
- 159_CloudFront Origin Headers.txt:10: For example, to say that the origin can only respond to your request when it actually originates from CloudFront, with the correct custom header.
- 160_CloudFront Origin Security.txt:2: So for Amazon S3 buckets, we've seen this architecture, and the idea is that we want to be able to prevent direct access to files in our S3 buckets so that they're only accessible through CloudFront.
- 160_CloudFront Origin Security.txt:3: For this, we know we should use an Origin Access Control and associate it with your distribution.
- 160_CloudFront Origin Security.txt:5: And then, once the OAC has been defined on CloudFront, then you edit your S3 bucket policy so that only the OAC has the permissions to do get object operations.
- 160_CloudFront Origin Security.txt:8: So the idea is that, for example, say we have an application balancer or we have an HTTP custom origin, maybe a web server, and we only want them to be accessible from CloudFront.
- 160_CloudFront Origin Security.txt:13: Now the origin can be configured either at the ALB level or maybe your application level to only forward requests that contain that specific custom HTTP header, otherwise, it'll refuse the request.
- 160_CloudFront Origin Security.txt:15: So, this will only work if the custom header name and values are kept secret, but this should be fine.
- 160_CloudFront Origin Security.txt:16: Now, you can also have a second level of security into this setup, as we saw before, in which we can restrict the origin to only have a networking access from the CloudFront locations.
- 160_CloudFront Origin Security.txt:24: And this WAF will have a filtering rule set in place so that only the request that are having this HTTP header are passed on to the ALB.
- 160_CloudFront Origin Security.txt:34: This gives you a good idea into how you can secure network access into your origin by limiting in CloudFront.
- 161_Hands On_ Restrict an ALB to CloudFront.txt:4: And, if I use an OAI, then it's going to restrict the bucket access only to this OAI, by setting up a bucket policy.
- 161_Hands On_ Restrict an ALB to CloudFront.txt:8: And then, for the bucket policy, do we want to update the bucket policy, to only allow read only access to the OAI?
- 161_Hands On_ Restrict an ALB to CloudFront.txt:14: And, this only allows the principal, which is corresponding to my CloudFront Origin Access identity, with this ID.
- 161_Hands On_ Restrict an ALB to CloudFront.txt:29: It's HTTP only.
- 161_Hands On_ Restrict an ALB to CloudFront.txt:36: Now, the idea is that we only want to be able to access our, ALB through Cloudfront, and not through the ALB itself.
- 162_CloudFront and HTTPS.txt:6: Or you can say for example, that you only want to allow HTTPS and refuse anything that is HTTP based.
- 162_CloudFront and HTTPS.txt:9: And you have HTTP only, or you have HTTPs only, or you have a match viewer, which means that if the viewer is doing a request on HTTP, then it will match the viewer policy and so therefore send a request in HTTP form to the origin.
- 162_CloudFront and HTTPS.txt:19: For this, we must have a valid SSL/TLS certificate that will cover your domain name and any alternate domain name that you set up as part of your distribution.
- 162_CloudFront and HTTPS.txt:28: Now, these certificates must live in the US East Northern Virginia region, and the reason is because CloudFront is assigned to that region even though it is a quote, unquote global service.
- 163_End-to-End Encryption in CloudFront.txt:2: So on the end of CloudFront you must specify the Origin protocol policy to be HTTPS only.
- 163_End-to-End Encryption in CloudFront.txt:3: So CloudFront communicates with the ALB using HTTPS and then your custom Origin which is a load balancer in this instance must have an SSL or TLS certificate that is valid.
- 163_End-to-End Encryption in CloudFront.txt:4: And the certificate domain name must be either what we set for the Origin domain field which we configure in CloudFront, or if we're using the Host header from the clients and it's forwarded to the Origin then the host editor must match the domain of the TLS certificate on your ALB.
- 163_End-to-End Encryption in CloudFront.txt:5: So, because the domain itself is going to be verified by CloudFront, you cannot use self-signed certificate.
- 163_End-to-End Encryption in CloudFront.txt:6: It must be a certificate issued, for example by AWS Certificate Manager or by a third party service.
- 163_End-to-End Encryption in CloudFront.txt:7: Now, the configuration on your application load balancer is that, as I said, you must use a certificate provided by the AWS Certificate Manager or third party but then imported into the AWS Certificate Manager and then your load balancer will have correct configuration.
- 163_End-to-End Encryption in CloudFront.txt:8: And then of course you must set up your EC2 instance to have SSL.
- 163_End-to-End Encryption in CloudFront.txt:10: You cannot export certificates from ACM.
- 163_End-to-End Encryption in CloudFront.txt:11: So therefore for your EC2 instance to set up SSL or TLS you must use a third party, or you can use a third party SSL certificate for any domain name actually, because there's no verification or you can even use a self-signed certificate on your EC2 instance, because the ALB is not going to verify the certificate itself.
- 164_CloudFront Geo Restrictions.txt:7: So we have France and Portugal, meaning the users from France can access our CloudFront distribution, whereas the user from Malta cannot.
- 164_CloudFront Geo Restrictions.txt:9: The Allow list is something you can define our CloudFront distribution which is to say you only allow the list of countries into your distribution, or you can use a Block list to prevent access from a specific list of countries and then allow everyone else.
- 165_CloudFront Functions and Lambda@Edge.txt:34: The idea is that you cannot call external services from the CloudFront Functions.
- 165_CloudFront Functions and Lambda@Edge.txt:59: But only at the original Edge Cache Level, okay.
- 165_CloudFront Functions and Lambda@Edge.txt:60: In this case we cannot use CloudFront Functions because we cannot use both Lambda@Edge and CloudFront Functions on the Viewer Request and Responses.
- 165_CloudFront Functions and Lambda@Edge.txt:70: Now the max execution time is what I think is the most important thing.
- 165_CloudFront Functions and Lambda@Edge.txt:71: You only get one millisecond to execute your CloudFront Functions.
- 165_CloudFront Functions and Lambda@Edge.txt:72: And therefore them must be very quick and very simple.
- 165_CloudFront Functions and Lambda@Edge.txt:127: What you need to know is understand when you need to use Lambda@Edge or CloudFront Functions and that should be good to go.
- 166_Hands On_ CloudFront Functions.txt:60: And then use a redirect status code to say that you should go instead to a URL that contains the full /en or /fr.
- 166_Hands On_ CloudFront Functions.txt:62: And the idea is that this code is performing a very, very simple lookup of the URL and some headers, to understand whether or not the request should be changed, and perform a little bit of logic that could be annoying to perform all the way into our origin.
- 168_AWS Global Accelerator.txt:4: But our application is only deployed in one region.
- 168_AWS Global Accelerator.txt:53: Now for security, it's appropriately secured because we only have two external IP that needs to be whitelisted by your clients.
- 169_Hands On_ AWS Global Accelerator.txt:18: So that means you cannot choose any region, it's just a global service.
- 169_Hands On_ AWS Global Accelerator.txt:22: So right now we don't have any endpoints, so we cannot finish the configuration but let's create this accelerator.
- 169_Hands On_ AWS Global Accelerator.txt:41: Then, the same setup as before, no key pair required.
- 169_Hands On_ AWS Global Accelerator.txt:78: An dif I go to this other IP address, I also have only EU-West-1.

### 6. Patterns / Architectures
- 064_AWS Global Accelerator.txt:1: Now let's talk about AWS Global Accelerator.
- 064_AWS Global Accelerator.txt:4: Now the Anycast IP is going to be used to send traffic directly to the Edge locations all around the world.
- 064_AWS Global Accelerator.txt:5: And then from the Edge location, the traffic will be sent to your application, but using the internal traffic of AWS.
- 064_AWS Global Accelerator.txt:7: Well say that all your applications wants to access a public ALB in India, but your clients are in Australia, America, and Europe, well, the way it's going to work is that they're going to use the Anycast IP, which is going to redirect them to an Edge location.
- 064_AWS Global Accelerator.txt:8: And from the Edge location, the traffic will go privately on the Edge OS network from the Edge location into your desired endpoints.
- 064_AWS Global Accelerator.txt:9: This global accelerator really gives you some of course, accelerations.
- 064_AWS Global Accelerator.txt:12: You're going to get consistent performance because, well, you're going to get intelligent routing from the lowest latency, and you're also going to get fast regional failover.
- 064_AWS Global Accelerator.txt:14: So your two Anycast IP are going to be there for the rest of your lifecycle of Global Accelerator, and it will leverage the internal AWS network as fast as possible.
- 064_AWS Global Accelerator.txt:15: In terms of health checks, while the Global Accelerator performs health checks of your application, which makes your application global.
- 064_AWS Global Accelerator.txt:16: And in case something is unhealthy, then the failover happens usually in less than one minutes.
- 064_AWS Global Accelerator.txt:20: So what's the difference between CloudFront and Global Accelerator?
- 064_AWS Global Accelerator.txt:21: Well, they both use the global network of AWS, and they both leverage the Edge locations around the world.
- 064_AWS Global Accelerator.txt:22: They all have integration with SHIELD for DDoS protection, but CloudFront is here by giving you cached content at the Edge, such as images or videos, or dynamic content such as API acceleration and dynamic site delivery.
- 064_AWS Global Accelerator.txt:23: But for CloudFront, all the content is going to be delivered at the Edge, whereas Global Accelerator is here to improve performance overall.
- 064_AWS Global Accelerator.txt:25: And it's going to proxy packets directly from an Edge location into your application running, wherever it's running in the AWS network.
- 064_AWS Global Accelerator.txt:27: And it's also going to be great if you have an HTTP use case that requires to use a static IP address, or if you have a use case that requires deterministic fast regional failover.
- 165_CloudFront Overview.txt:4: It improves the read performance by caching the content of your website at the different edge locations.
- 165_CloudFront Overview.txt:5: And because your content is cached all around the world, then your users all around the world will have a lower latency and this will improve the user experience.
- 165_CloudFront Overview.txt:6: CloudFront is made of hundreds of points of presence globally and that includes edge locations and caches across the world.
- 165_CloudFront Overview.txt:7: On top of it, by having the content distributed globally, we are getting DDoS protection.
- 165_CloudFront Overview.txt:10: So if you wanna look at a map of the world, these are the map and we see some edge locations as well as edge caches.
- 165_CloudFront Overview.txt:12: Then what the user will do is that it will request the content from an American edge location using CloudFront and CloudFront will be able to fetch the content from Australia.
- 165_CloudFront Overview.txt:13: Now, if another user in the US will be requesting the same content, then it will be served directly from the edge and it will not go all the way to Australia to serve that content.
- 165_CloudFront Overview.txt:14: Same if a user is in China, then it'll be talking to a Chinese point of presence and then redirected to the S3 buckets, and then the content will be cached at the edge.
- 165_CloudFront Overview.txt:17: So this is used for distributing files and caching them at the edge.
- 165_CloudFront Overview.txt:26: We have the edge location all around the world, okay?
- 165_CloudFront Overview.txt:29: And when the client connects and does an HTTP request into your edge location, then the edge location will see if it has it in the cache.
- 165_CloudFront Overview.txt:31: And then once it retrieves the results, it will be caching it into a local cache so that if another client requests the same content from the same edge location, then the edge location does not need to go to the origin.
- 165_CloudFront Overview.txt:32: So if we have S3 as an origin, then if we look at the cloud, your S3 bucket is your origin in some region, and then you have edge locations all around the world, for example, at Los Angeles, and your users accessing the edge location in Los Angeles will get their content directly served through the edge location.
- 165_CloudFront Overview.txt:33: But first, the edge location will get it from the origin S3 bucket through the private network.
- 165_CloudFront Overview.txt:36: Again, this will be another edge location, which will be serving users close to Brazil, and then it will be a private connection between your edge location and your S3 bucket and so on.
- 165_CloudFront Overview.txt:37: So using CloudFront and the edge locations, we can see that the content of our S3 bucket in one region can be distributed all around the world through the edge locations or points of presence.
- 165_CloudFront Overview.txt:39: Well, if you have CloudFront, you're using the Global Edge network.
- 165_CloudFront Overview.txt:41: And the files are going to be cached in each edge location maybe for a day.
- 165_CloudFront Overview.txt:48: And so this is great if you have dynamic content that needs to change all the time and be available at low latency in a few regions.
- 166_CloudFront with S3 - Hands On.txt:21: So we have enough requests and allowance per month, we're going to get always on DNS protection, we're going to get geographic traffic blocking and global CDN, DNS, free TL certificates.
- 166_CloudFront with S3 - Hands On.txt:23: But if you needed something such as, for example, edge key-value store or advanced DDoS protection or uptime SLA, or protection for WordPress, these kind of things, then one of these plans will be better for you.
- 167_CloudFront - ALB_EC2 as an Origin.txt:9: Well, we're going to create a CloudFront distribution, which has a bunch of edge locations, and our users are going to access CloudFront this way.
- 167_CloudFront - ALB_EC2 as an Origin.txt:17: And so therefore you had a list of edge locations with their public IPs.
- 167_CloudFront - ALB_EC2 as an Origin.txt:18: And you use this link to find the list of all the CloudFront IPs and you would make sure to change the security group to allow all these public IPs of the edge location into your EC2 instance.
- 167_CloudFront - ALB_EC2 as an Origin.txt:19: So it would be public, but only restricted to the edge locations.
- 169_CloudFront - Cache Invalidation.txt:3: And if you do happen to update the backend origin, CloudFront edge locations will not know about it and will only get the refreshed content from your backend origin, the update you want, once the TTL of the cache has expired.
- 169_CloudFront - Cache Invalidation.txt:11: Well, say we have a CloudFront distribution, two edge locations.
- 169_CloudFront - Cache Invalidation.txt:12: Each edge location has its own cache, which contains the index.html and the images directly from your origin, which is an S3 bucket.
- 169_CloudFront - Cache Invalidation.txt:14: So, that means that in one day, the edge locations will re-fetch these files for the cache.
- 169_CloudFront - Cache Invalidation.txt:21: And then you're going to invalidate /images/* to remove all the images from the cache in your edge locations.
- 169_CloudFront - Cache Invalidation.txt:22: So, then CloudFront is going to tell the edge locations to invalidate these files from the cache and they're going to be simply removed from the cache.
- 169_CloudFront - Cache Invalidation.txt:23: Now, next time a user is going to ask for, for example, the index.html, CloudFront is going to forward the request to a specific edge location, which will realize that the file is not in its cache anymore.
- 169_CloudFront - Cache Invalidation.txt:24: Therefore, the edge location will do a request on your origin and get the updated and newer index.html.
- 170_AWS Global Accelerator - Overview.txt:1: Okay, so in this lecture, we are going to talk about a newer kind of service for AWS called the AWS Global Accelerator.
- 170_AWS Global Accelerator - Overview.txt:3: So, say you have deployed and application, and it's global and you've global users who want to access it directly.
- 170_AWS Global Accelerator - Overview.txt:9: And that can add a lot of latency due to many hops through the routers.
- 170_AWS Global Accelerator - Overview.txt:15: So you can see these hops I introduce a bit of risk connection can get lost, they also add a little bit of latency, and they're not as direct as possible into our amazon infrastructure.
- 170_AWS Global Accelerator - Overview.txt:16: So what we want to do is to wish to go as fast as possible through as soon as possible the AWS US network to minimize latency.
- 170_AWS Global Accelerator - Overview.txt:17: And so before we do so and use the global accelerator for this, I want to introduce to you another concept which is Unicast and Anycast IP.
- 170_AWS Global Accelerator - Overview.txt:30: So Global Accelerator uses that Anycast IP concept to work.
- 170_AWS Global Accelerator - Overview.txt:32: We're able to leverage the AWS internal global network to route to our application.
- 170_AWS Global Accelerator - Overview.txt:34: And is going to happen is that instead of sending it through the public internet in America, it's going to come to the closest edge location.
- 170_AWS Global Accelerator - Overview.txt:35: And from edge location, it's going to go all the way straight to our ALB through the internal AWS network.
- 170_AWS Global Accelerator - Overview.txt:36: Same for Australia, so it goes to closest edge location near to Australia and then it goes over the private AWS network to get to the ALB and same for Europe.
- 170_AWS Global Accelerator - Overview.txt:37: So the idea with this is that, we're going to use an Anycast IP and there's actually going to be two of those that are going to be created for your application and they're global.
- 170_AWS Global Accelerator - Overview.txt:38: And the Anycast IP will send the traffic directly to the closest edge location of your users.
- 170_AWS Global Accelerator - Overview.txt:40: So the edge location will then send the traffic to you application, (mumbles) For example, through the private AWS network which is much more stable, has less latency and so on.
- 170_AWS Global Accelerator - Overview.txt:41: So the Global Accelerator is absolutely unique because it really allows to give two static IP addresses all around the globe for the users for whatever application you may have.
- 170_AWS Global Accelerator - Overview.txt:42: And right now I'm showing one ALB in one region but it could be global as well it could be multiple ALBs in multiple regions.
- 170_AWS Global Accelerator - Overview.txt:46: There is consistent performance because we go over the network so we have intelligent routing to the lowest latency edge location and we'll have fast regional failover in case anything goes wrong.
- 170_AWS Global Accelerator - Overview.txt:48: It's internal AWS network to go after the edge location so it's perfect.
- 170_AWS Global Accelerator - Overview.txt:50: So the Global Accelerator will perform a health check on your application and then make sure that the application is global and if health check fails for one ALB and one region then there is automated failover in less than one minute to a healthy end port.
- 170_AWS Global Accelerator - Overview.txt:54: And you get DDoS protection automatically through the Global Accelerator, thanks to something called AWS Shield that we'll see in the security session.
- 170_AWS Global Accelerator - Overview.txt:56: So you're really asking me what is the difference between Global Accelerator and CloudFront?
- 170_AWS Global Accelerator - Overview.txt:58: So, Global Accelerator and CloudFront they both use the same global network and they will both use edge locations all around the globe that AWS has created.
- 170_AWS Global Accelerator - Overview.txt:61: And the content is going to be served from the edge locations.
- 170_AWS Global Accelerator - Overview.txt:62: So once in a while the edge locations are going to fetch the content from the origin but most of the time hopefully CloudFront will deliver cache content from the edges.
- 170_AWS Global Accelerator - Overview.txt:63: So here the users are getting content from the edges.
- 170_AWS Global Accelerator - Overview.txt:64: Whereas, for Global Accelerator, it improves the performance of the wide range of application over TCP or UDP.
- 170_AWS Global Accelerator - Overview.txt:65: But the packets are being proxyeed from the edge locations to the applications running in two one or more AWS regions.
- 170_AWS Global Accelerator - Overview.txt:68: So it's a really good fit if you have a non-HTTP uses cases, such as gaming, IoT or Voice over IP or it's also really good if you have and HTTP use case that require a static IP addresses globally.
- 170_AWS Global Accelerator - Overview.txt:70: Or in case you need to have deterministic and fast regional failover.
- 170_AWS Global Accelerator - Overview.txt:71: So, Global Accelerator is a newer kind of service and it will appear in your exam.
- 171_AWS Global Accelerator - Hands On.txt:1: All right, so let's go ahead and practice using Global Accelerator.
- 171_AWS Global Accelerator - Hands On.txt:2: So, for this, we're gonna have to create an infrastructure in two regions to make the Global Accelerator useful.
- 171_AWS Global Accelerator - Hands On.txt:17: As you can see, for Global Accelerator, because it's a global service, on the top-hand side it says "Global".
- 171_AWS Global Accelerator - Hands On.txt:18: So that means you cannot choose any region, it's just a global service.
- 171_AWS Global Accelerator - Hands On.txt:52: And in Global Accelerator, in our accelerator, we're going to now configure these instances.
- 171_AWS Global Accelerator - Hands On.txt:71: All right, so I'm back in my Global Accelerator, you can get back here, and I had to wait for the provisioning status to be deployed for my health checks to pass.
- 171_AWS Global Accelerator - Hands On.txt:73: But now that it's been provisioned and my health checks are passing, we can see that we have two static IP addresses available for our Global Accelerator.
- 171_AWS Global Accelerator - Hands On.txt:75: And so what I can do now is just try to use the Global Accelerator.
- 171_AWS Global Accelerator - Hands On.txt:82: So this shows you that the Global Accelerator is working as intended.
- 156_CloudFront Overview.txt:4: And the idea is that by using CloudFront, you're going to get a better read performance, and the content is going to be cached at the edge of the world.
- 156_CloudFront Overview.txt:5: So, they are 225 plus Points of Presence globally in AWS about 215 plus are Edge Locations and 13 are Regional Edge Caches.
- 156_CloudFront Overview.txt:7: The idea of CloudFront is that, for example, you have your content in an S3 Buckets in Australia but your users are trying to access that content globally.
- 156_CloudFront Overview.txt:8: So, if you have a user, for example, in Canada, trying to access it, maybe there will be a Edge Location available next to that user and the Edge Location is going to cache that content, but first fetch it to the S3 bucket.
- 156_CloudFront Overview.txt:9: That means that any other user in Canada will also get that content locally from the Edge Location and the Edge Location does not have to go to the S3 bucket every time to get the data.
- 156_CloudFront Overview.txt:10: So, you have a lot of Edge Locations around the world.
- 156_CloudFront Overview.txt:11: So, for example, a user in Russia, could get to an Edge Location near China, and then get access to the S3 bucket content as well.
- 156_CloudFront Overview.txt:12: So, you content is going to be distributed and cached globally.
- 156_CloudFront Overview.txt:20: Well, you have Edge Locations and Regional Edge Caches and the idea is that your origin can have, for example, an S3 Buckets, or an HTTP endpoint, for example, on-premise servers, a server and then you're gonna have two layers in CloudFront.
- 156_CloudFront Overview.txt:21: You're gonna have the Regional Edge Cache and the Edge Locations.
- 156_CloudFront Overview.txt:24: The users will get redirected to the Edge Location.
- 156_CloudFront Overview.txt:25: The Edge Location does not have that logo.
- 156_CloudFront Overview.txt:26: So, the Edge Location will ask the Regional Edged Cache if that logo exists in the cache and the Regional Edge Cache does not have it, therefore, it will go and forward the request to the origin.
- 156_CloudFront Overview.txt:28: It gets sent back to the Regional Edge Cache, which puts the image into its cache.
- 156_CloudFront Overview.txt:29: Then the Regional Edge Cache sends it back to the Edge Location, which will also cache it as well, and then the user will get back the logo.
- 156_CloudFront Overview.txt:31: Well, because when a user from a similar geography as the first users will request the same logo, it will just query the Edge Location and the Edge Location already has that logo cached, so the logo comes back right away.
- 156_CloudFront Overview.txt:32: Now, if some users a bit more further away are requesting it from a second Edge Location.
- 156_CloudFront Overview.txt:33: Well, if that Edge Location is geographically close to the Regional Edge Cache, then the Edge Location will ask the same Regional Edge Cache before for the file, and the logo will be sent right away back by the Regional Edge Cache and then back to the user.
- 156_CloudFront Overview.txt:34: So, the idea here is that you can see, the origin only gets one request, and we were able to serve multiple users and multiple Edge Locations.
- 156_CloudFront Overview.txt:35: So, the Edge Locations allow you to serve content directly and quickly to the users, because they're really close to them and they will cache the most popular content whereas the Regional Edge Caches will serve content directly to the Edge Location.
- 156_CloudFront Overview.txt:39: Now, in case you have dynamic content that is premium requested by users, it goes directly into your origins, it does not pass through the Edge Cache.
- 157_CloudFront Origins.txt:7: So this is for anything that's public, so you could use it on top of an API gateway if you wanted more control otherwise, you can use straight from API Gateway, the API gateway Edge feature, or you can use it for example, on an S3 bucket that's configured as a website.
- 157_CloudFront Origins.txt:11: So the idea is that CloudFront will have multiple edge locations around the world, for example, in Los Angeles, Sao Paolo, Mumbai, and Melbourne, and we're going to set up CloudFront in a specific way that is going to be compatible with our S3 buckets.
- 157_CloudFront Origins.txt:13: Now, whenever the users request data from one of these edge locations, they will go and ask it if their data exists.
- 157_CloudFront Origins.txt:14: If it doesn't exist, then the edge location will first fetch the regional Edge cache location, and then the cache location will ask the origin for the data, which I've represented as a simple line.
- 157_CloudFront Origins.txt:15: I just omitted the Regional Edge cache in this diagram, but it goes directly from the origin into the Edge Location using the private network of AWS.
- 157_CloudFront Origins.txt:16: So this is the case for all the Edge locations around the world, effectively making an easy way to distribute an S3 bucket that is original endpoint into a globally available website.
- 157_CloudFront Origins.txt:25: Well, because the edge locations are going to be accessing publicly your HTTP endpoints, and so your EC2 instance will have a security group and the user will go into the Edge Locations, the Edge Location will not have the content cached at first, and so the Edge Locations will ask the origin, in this case, our EC2 instance to get the contents.
- 157_CloudFront Origins.txt:26: In which case, well, you must allow the public IP of the Edge locations into the security group of your EC2 instances, otherwise things will not work.
- 157_CloudFront Origins.txt:29: Alternatively, if you want to use, for example, an application balancer, then again, it must be public because the Edge locations will access the data, the website publicly, but your EC2 instances in the backend can still remain private because they are only accessed by the ALB.
- 157_CloudFront Origins.txt:30: So once this is it, then the users will go into the edge locations, again using all public IPs, and then the applications will request the data from your application balancer.
- 157_CloudFront Origins.txt:31: Therefore, you must allow from the security group perspective of your ALB, the public IP of the edge locations, okay?
- 157_CloudFront Origins.txt:38: You can also group origins together, and this is to increase high availability and do failover.
- 157_CloudFront Origins.txt:44: So this could be giving you a good multi-region setup for CloudFront and Amazon S3.
- 160_CloudFront Origin Security.txt:2: So for Amazon S3 buckets, we've seen this architecture, and the idea is that we want to be able to prevent direct access to files in our S3 buckets so that they're only accessible through CloudFront.
- 160_CloudFront Origin Security.txt:10: So let's take the example of a user accessing our CloudFront edge location and is going to give it a few headers.
- 160_CloudFront Origin Security.txt:19: And if you wanted to post this architecture one step deeper, we can leverage WAF as a service.
- 160_CloudFront Origin Security.txt:20: So the idea is that now we have the same architecture, so just simplified with an ALB because WAF is integrated directly with ALBs.
- 162_CloudFront and HTTPS.txt:2: So we have two connections happening, one within the client and the edge location, and one within the edge location and the origin.
- 162_CloudFront and HTTPS.txt:3: So the Viewer Protocol Policy is how the client connects to the edge location.
- 162_CloudFront and HTTPS.txt:8: Now, for the Origin Protocol Policy, this is how the edge location connects into your origin.
- 162_CloudFront and HTTPS.txt:11: Now, a few things to note is that your S3 buckets static websites do not support HTTPS so you have no other choice but to use the HTTP Origin Protocol Policy from your edge location into an S3 bucket setup as a static websites.
- 162_CloudFront and HTTPS.txt:25: So either CloudFront will serve the HTTP request using SNI, which recommended, so CloudFront will know which SSL certificate to use based on the request it receives, or we can have a level of security that is expensive, which is to use dedicated IP address in each edge location.
- 162_CloudFront and HTTPS.txt:28: Now, these certificates must live in the US East Northern Virginia region, and the reason is because CloudFront is assigned to that region even though it is a quote, unquote global service.
- 164_CloudFront Geo Restrictions.txt:4: Well, we'll set up CloudFront with Edge Locations and our origin, for example, in the S3 bucket.
- 165_CloudFront Functions and Lambda@Edge.txt:2: This allow you to run custom code at the Edge to do some customization.
- 165_CloudFront Functions and Lambda@Edge.txt:3: So the idea is that you want to execute edge functions as close as possible to users to make sure that you're verifying some early logics some early behavior or normalizing some Cache keys.
- 165_CloudFront Functions and Lambda@Edge.txt:4: So an Edge Function is a code that you write and that you attached to a CloudFront distribution and it will run very close to users in order to minimize the latency of whatever you're trying to do.
- 165_CloudFront Functions and Lambda@Edge.txt:7: Now CloudFront has two different logic for Edge Functions.
- 165_CloudFront Functions and Lambda@Edge.txt:8: It has the CloudFront functions and Lambda@Edge.
- 165_CloudFront Functions and Lambda@Edge.txt:10: So the use cases for customization at the Edge, at the Edge is to manipulate HTTP request and responses is to implement request filtering before reaching your application is to verify user authentication and authorization is to also maybe generate HTTP responses directly at the Edge.
- 165_CloudFront Functions and Lambda@Edge.txt:12: Or for example, doing Bot mitigation at the edge.
- 165_CloudFront Functions and Lambda@Edge.txt:13: The idea is that using Edge Functions.
- 165_CloudFront Functions and Lambda@Edge.txt:14: So either Cloud Front Functions and Lambda@Edge you do not have to manage any servers.
- 165_CloudFront Functions and Lambda@Edge.txt:15: Everything is deployed globally and it is serverless.
- 165_CloudFront Functions and Lambda@Edge.txt:17: So if we look at a traditional architecture of CloudFront, we have our clients to our Edge Locations talking to our regional Edge Cache, talking to our Origin.
- 165_CloudFront Functions and Lambda@Edge.txt:18: Now Lambda@Edge Functions are going to be deployed at the Regional Edge Cache level.
- 165_CloudFront Functions and Lambda@Edge.txt:19: Whereas CloudFront Functions are going to be deployed on the Edge Locations.
- 165_CloudFront Functions and Lambda@Edge.txt:20: So as you can see two different level for deployments of these functions, and that will impact your choice between CloudFront Functions and Lambda@Edge Functions.
- 165_CloudFront Functions and Lambda@Edge.txt:24: So these are lightweight functions return in JavaScript and they're meant to do high scale latency-sensitive CDN customizations.
- 165_CloudFront Functions and Lambda@Edge.txt:27: So we run at Edge Locations and it's Process-based isolation.
- 165_CloudFront Functions and Lambda@Edge.txt:36: Now Lambda@Edge is a different mindset.
- 165_CloudFront Functions and Lambda@Edge.txt:37: So these were first what CloudFront was offering as a feature CloudFront Functions are new but Lambda@Edge has been existing for a long time.
- 165_CloudFront Functions and Lambda@Edge.txt:41: And they run on the nearest Regional Edge Cache.
- 165_CloudFront Functions and Lambda@Edge.txt:47: Now, when you want to deploy Lambda@Edge Functions on CloudFront, you need to author your functions in one region, which is us-east-1, and then CloudFront will replicate this function to all its regional Edge Caches.
- 165_CloudFront Functions and Lambda@Edge.txt:49: So we have Edge Locations and Regional Edge Cache.
- 165_CloudFront Functions and Lambda@Edge.txt:52: Now your Cloud Front Functions are going to run on the Edge Locations at the Viewer Request and Viewer Response level.
- 165_CloudFront Functions and Lambda@Edge.txt:53: Whereas your Lambda@Edge Functions are going to run at the Origin Request and Origin Response level.
- 165_CloudFront Functions and Lambda@Edge.txt:54: This is if you want to use both CloudFront Functions and Lambda@Edge Functions together, okay?
- 165_CloudFront Functions and Lambda@Edge.txt:57: But if you want to just have Lambda@Edge Functions then in that case, what's going to happen is that the Lambda@Edge Functions are going to operate on both of your requests, response.
- 165_CloudFront Functions and Lambda@Edge.txt:59: But only at the original Edge Cache Level, okay.
- 165_CloudFront Functions and Lambda@Edge.txt:60: In this case we cannot use CloudFront Functions because we cannot use both Lambda@Edge and CloudFront Functions on the Viewer Request and Responses.
- 165_CloudFront Functions and Lambda@Edge.txt:61: So this is when you need capabilities of Lambda@Edge that are not available with CloudFront Functions.
- 165_CloudFront Functions and Lambda@Edge.txt:63: So if we want to compare, you know, on the table the Cloud Front Functions and Lambda@Edge while the run time is support is different.
- 165_CloudFront Functions and Lambda@Edge.txt:66: Where it gets executed is on Edge Locations for CloudFront Functions.
- 165_CloudFront Functions and Lambda@Edge.txt:67: Whereas it's original Edge Cache for Lambda@Edge.
- 165_CloudFront Functions and Lambda@Edge.txt:68: The CloudFront triggers are going to be the view request and response functions and all of them for Lambda@Edge.
- 165_CloudFront Functions and Lambda@Edge.txt:73: Whereas Lambda@Edge, you get five seconds of run time for viewers triggered and 30 seconds of run time for origin triggers.
- 165_CloudFront Functions and Lambda@Edge.txt:75: Whereas for Lambda@Edge, you have more memory.
- 165_CloudFront Functions and Lambda@Edge.txt:77: The total package site is very small for CloudFront Functions, 10 KiloBytes whereas Lambda@Edge has more space.
- 165_CloudFront Functions and Lambda@Edge.txt:79: Whereas you have some for Lambda@Edge.
- 165_CloudFront Functions and Lambda@Edge.txt:81: You have access to it in Lambda@Edge.
- 165_CloudFront Functions and Lambda@Edge.txt:83: And the pricing is that there's a free tier for CloudFront Functions and it's one sixth of the price of @Edge.
- 165_CloudFront Functions and Lambda@Edge.txt:84: So if you can move your logic from Lambda@Edge CloudFront Functions, you're better off and Lambda@Edge as no free tier.
- 165_CloudFront Functions and Lambda@Edge.txt:86: So when do you use a CloudFront Function versus a Lambda@Edge function?
- 165_CloudFront Functions and Lambda@Edge.txt:93: Or you want to do your rewrites, or redirects or to request authentication and authorization directly at the Edge.
- 165_CloudFront Functions and Lambda@Edge.txt:95: Whereas Lambda@Edge is going to be giving you a much longer execution time, okay?
- 165_CloudFront Functions and Lambda@Edge.txt:103: Now, if you wanted to do authorization and authentication with CloudFront functions, the idea is that at the Edge Location, you would intercept the content and you would check the token, the digital JWT token which lives in your headers.
- 165_CloudFront Functions and Lambda@Edge.txt:106: Whereas your Lambda@Edge Function will operate on the regional edge Cache level.
- 165_CloudFront Functions and Lambda@Edge.txt:108: Another very common use case for Lambda@Edge is to load content based on the user agents.
- 165_CloudFront Functions and Lambda@Edge.txt:109: So we have an extra bucket an Amazon cloud front with Original Edge Cache and we have users texting it from desktop and others just texting from mobile.
- 165_CloudFront Functions and Lambda@Edge.txt:118: Now, what we can do is instead of sending this big image back to our mobile which may be very inefficient, we can have Lambda@Edge Function that will inspect the User-Agent GTP header and then redirect based on the device type.
- 165_CloudFront Functions and Lambda@Edge.txt:122: So the Lambda@Edge Function was able to modify the request to change the target of these request.
- 165_CloudFront Functions and Lambda@Edge.txt:123: So the other way you can use Lambda@Edge is for a global application.
- 165_CloudFront Functions and Lambda@Edge.txt:125: And then for dynamic API requests it sends it into CloudFront to leverage the Cache but your Lambda Function can also be used for example to query data into DynamoDB table, which gives you a fully global and serverless way to do an API in AWS, okay.
- 165_CloudFront Functions and Lambda@Edge.txt:127: What you need to know is understand when you need to use Lambda@Edge or CloudFront Functions and that should be good to go.
- 166_Hands On_ CloudFront Functions.txt:37: And for function associations, we'll see this later on, this is if we want to use CloudFront functions around that edge, we will set this up right after.
- 166_Hands On_ CloudFront Functions.txt:61: So this is just a bit of code, but this code executes at the edge.
- 168_AWS Global Accelerator.txt:1: Okay, so in this lecture, we are going to talk about a newer kind of service for AWS called the AWS Global Accelerator.
- 168_AWS Global Accelerator.txt:3: So, say you have deployed and application, and it's global and you've global users who want to access it directly.
- 168_AWS Global Accelerator.txt:9: And that can add a lot of latency due to many hops through the routers.
- 168_AWS Global Accelerator.txt:15: So you can see these hops I introduce a bit of risk connection can get lost, they also add a little bit of latency, and they're not as direct as possible into our amazon infrastructure.
- 168_AWS Global Accelerator.txt:16: So what we want to do is to wish to go as fast as possible through as soon as possible the AWS US network to minimize latency.
- 168_AWS Global Accelerator.txt:17: And so before we do so and use the global accelerator for this, I want to introduce to you another concept which is Unicast and Anycast IP.
- 168_AWS Global Accelerator.txt:30: So Global Accelerator uses that Anycast IP concept to work.
- 168_AWS Global Accelerator.txt:32: We're able to leverage the AWS internal global network to route to our application.
- 168_AWS Global Accelerator.txt:34: And is going to happen is that instead of sending it through the public internet in America, it's going to come to the closest edge location.
- 168_AWS Global Accelerator.txt:35: And from edge location, it's going to go all the way straight to our ALB through the internal AWS network.
- 168_AWS Global Accelerator.txt:36: Same for Australia, so it goes to closest edge location near to Australia and then it goes over the private AWS network to get to the ALB and same for Europe.
- 168_AWS Global Accelerator.txt:37: So the idea with this is that, we're going to use an Anycast IP and there's actually going to be two of those that are going to be created for your application and they're global.
- 168_AWS Global Accelerator.txt:38: And the Anycast IP will send the traffic directly to the closest edge location of your users.
- 168_AWS Global Accelerator.txt:40: So the edge location will then send the traffic to you application, (mumbles) For example, through the private AWS network which is much more stable, has less latency and so on.
- 168_AWS Global Accelerator.txt:41: So the Global Accelerator is absolutely unique because it really allows to give two static IP addresses all around the globe for the users for whatever application you may have.
- 168_AWS Global Accelerator.txt:42: And right now I'm showing one ALB in one region but it could be global as well it could be multiple ALBs in multiple regions.
- 168_AWS Global Accelerator.txt:46: There is consistent performance because we go over the network so we have intelligent routing to the lowest latency edge location and we'll have fast regional failover in case anything goes wrong.
- 168_AWS Global Accelerator.txt:48: It's internal AWS network to go after the edge location so it's perfect.
- 168_AWS Global Accelerator.txt:50: So the Global Accelerator will perform a health check on your application and then make sure that the application is global and if health check fails for one ALB and one region then there is automated failover in less than one minute to a healthy end port.
- 168_AWS Global Accelerator.txt:54: And you get DDoS protection automatically through the Global Accelerator, thanks to something called AWS Shield that we'll see in the security session.
- 168_AWS Global Accelerator.txt:56: So you're really asking me what is the difference between Global Accelerator and CloudFront?
- 168_AWS Global Accelerator.txt:58: So, Global Accelerator and CloudFront they both use the same global network and they will both use edge locations all around the globe that AWS has created.
- 168_AWS Global Accelerator.txt:61: And the content is going to be served from the edge locations.
- 168_AWS Global Accelerator.txt:62: So once in a while the edge locations are going to fetch the content from the origin but most of the time hopefully CloudFront will deliver cache content from the edges.
- 168_AWS Global Accelerator.txt:63: So here the users are getting content from the edges.
- 168_AWS Global Accelerator.txt:64: Whereas, for Global Accelerator, it improves the performance of the wide range of application over TCP or UDP.
- 168_AWS Global Accelerator.txt:65: But the packets are being proxyeed from the edge locations to the applications running in two one or more AWS regions.
- 168_AWS Global Accelerator.txt:68: So it's a really good fit if you have a non-HTTP uses cases, such as gaming, IoT or Voice over IP or it's also really good if you have and HTTP use case that require a static IP addresses globally.
- 168_AWS Global Accelerator.txt:70: Or in case you need to have deterministic and fast regional failover.
- 168_AWS Global Accelerator.txt:71: So, Global Accelerator is a newer kind of service and it will appear in your exam.
- 169_Hands On_ AWS Global Accelerator.txt:1: All right, so let's go ahead and practice using Global Accelerator.
- 169_Hands On_ AWS Global Accelerator.txt:2: So, for this, we're gonna have to create an infrastructure in two regions to make the Global Accelerator useful.
- 169_Hands On_ AWS Global Accelerator.txt:17: As you can see, for Global Accelerator, because it's a global service, on the top-hand side it says "Global".
- 169_Hands On_ AWS Global Accelerator.txt:18: So that means you cannot choose any region, it's just a global service.
- 169_Hands On_ AWS Global Accelerator.txt:52: And in Global Accelerator, in our accelerator, we're going to now configure these instances.
- 169_Hands On_ AWS Global Accelerator.txt:71: All right, so I'm back in my Global Accelerator, you can get back here, and I had to wait for the provisioning status to be deployed for my health checks to pass.
- 169_Hands On_ AWS Global Accelerator.txt:73: But now that it's been provisioned and my health checks are passing, we can see that we have two static IP addresses available for our Global Accelerator.
- 169_Hands On_ AWS Global Accelerator.txt:75: And so what I can do now is just try to use the Global Accelerator.
- 169_Hands On_ AWS Global Accelerator.txt:82: So this shows you that the Global Accelerator is working as intended.

## Step 3 â€” Deep Expansion (Global Edge Concepts)

### Amazon CloudFront
- What it is: Global CDN for cached and dynamic content delivery at edge locations.
- Why it exists: Reduces latency and origin load while improving global user experience.
- Internal working: Edge POP evaluates cache behavior and fetches from origin when needed.
- Architecture: Multi-origin distribution with cache policy and edge security controls.
- Key components: Distributions, cache behaviors, origins, invalidations, geo controls.

### AWS Global Accelerator
- What it is: Anycast-based global entry service routing traffic over AWS backbone to regional endpoints.
- Why it exists: Improves path quality, latency consistency, and failover speed.
- Internal working: Clients hit static anycast IPs, then traffic is proxied to healthy optimal endpoints.
- Architecture: Dual-anycast global ingress with regional endpoint groups and health-driven failover.
- Key components: Static anycast IPs, endpoint groups, traffic dials, health checks.

## Cross-Cloud Mapping (Concept-First)

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| CDN edge caching | CloudFront | Azure Front Door / CDN | Cloud CDN |
| Anycast global application entry | Global Accelerator | Front Door / Traffic Manager patterns | Global load balancing patterns |
| Deterministic regional failover | Global Accelerator health-based routing | Front Door endpoint failover | Global LB failover policies |
| DDoS posture at edge perimeter | CloudFront/GA + Shield | DDoS Protection + Front Door | Cloud Armor + edge services |

### Trade-offs and Decision Notes
- CloudFront is optimal when cacheability and edge content controls drive performance.
- Global Accelerator is optimal for static-IP, non-HTTP, and deterministic failover needs.
- Many production architectures combine both for frontend acceleration plus robust global entry.

## Phase-wise Architect-Level Organization

### Phase 1 â€” Foundations
- Decide cache-vs-routing acceleration intent before selecting edge services.
- Define global entry constraints for protocols, static IP needs, and failover targets.

### Phase 2 â€” Core Services
- Implement CloudFront cache policies and origin security posture.
- Implement Global Accelerator endpoint groups and health-driven traffic control.

### Phase 3 â€” Advanced Patterns
- Combine CDN and anycast entry for mixed static/dynamic and protocol-diverse workloads.
- Tune global failover and regional traffic dials for planned and unplanned events.

### Phase 4 â€” System Design
- Reference architecture: global edge entry with secure origins and deterministic regional failover.
- Scaling considerations: cache invalidation behavior, regional traffic shifts, endpoint health design.
- Cost considerations: transfer tiers, cache miss rates, accelerator endpoint usage.

<!-- BEGIN PRACTICE_ENHANCEMENTS -->

## Hands-On Practice (Kid-Friendly Step-by-Step)

### Safety First
- Use a sandbox account only.
- Set a budget alert before creating resources.
- Delete resources after practice to avoid surprise cost.

### Hands-On Signals Found In This KB
- Signal 1: So, for this, we're gonna have to create an infrastructure in two regions to make the Global Accelerator useful.
- Signal 2: And in Global Accelerator, in our accelerator, we're going to now configure these instances.
- Signal 3: Transcript signals that for this, we're gonna have to create an infrastructure in two regions to make the Global Accelerator useful.
- Signal 4: Transcript signals that in Global Accelerator, in our accelerator, we're going to now configure these instances.
- Signal 5: Design implication: for this, we're gonna have to create an infrastructure in two regions to make the Global Accelerator useful.
- Signal 6: Key Insights: So let's go and practice using CloudFront, but first we have to create an S3 bucket to hold our files for our distribution.
- Signal 7: Key Insights: So let's create a bucket, and I'll call this one demo-CloudFront-Stephan-v4, and it will scroll down, leave everything as the default and click on Create Bucket.
- Signal 8: Key Insights: And if I go and click on open here, this generates a pre-sign.
- Signal 9: Key Insights: So let's open up the CloudFront console.
- Signal 10: Key Insights: And I first have this popup about pricing, so I'm going to click on don't show it again and then close it.

### Service-Specific Lab Paths
### Activity 1: Amazon EC2 Lab for CloudFront and Global Accelerator design, anycast, edge routing, cache vs non-cache acceleration, global failover
- AWS console path: AWS Console -> EC2 -> Instances
- Azure equivalent: Azure Virtual Machines
- GCP equivalent: Compute Engine
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> EC2 -> Instances.
3. Build: Launch one small instance with default VPC.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check instance running state and system status checks.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Terminate instance and remove extra volumes.

### Activity 2: Elastic Load Balancing Lab for CloudFront and Global Accelerator design, anycast, edge routing, cache vs non-cache acceleration, global failover
- AWS console path: AWS Console -> EC2 -> Load Balancers
- Azure equivalent: Azure Load Balancer or Application Gateway
- GCP equivalent: Cloud Load Balancing
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> EC2 -> Load Balancers.
3. Build: Create an application load balancer with one target group.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Check target health and ALB DNS response.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete ALB, listeners, and target group.

### Activity 3: Amazon VPC Lab for CloudFront and Global Accelerator design, anycast, edge routing, cache vs non-cache acceleration, global failover
- AWS console path: AWS Console -> VPC
- Azure equivalent: Azure Virtual Network
- GCP equivalent: VPC Network
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> VPC.
3. Build: Create a VPC with one public and one private subnet.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Validate route table associations.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete test subnets and VPC components.

### Activity 4: Amazon CloudWatch Lab for CloudFront and Global Accelerator design, anycast, edge routing, cache vs non-cache acceleration, global failover
- AWS console path: AWS Console -> CloudWatch
- Azure equivalent: Azure Monitor
- GCP equivalent: Cloud Monitoring
- Time: 12-20 minutes
1. Sign in to AWS console and set region.
2. Navigate: AWS Console -> CloudWatch.
3. Build: Create one dashboard and one alarm.
4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.
5. Save and wait for status Ready or Active.
6. Verify: Trigger alarm condition and inspect alarm history.
7. Write one observation: what worked, what failed, what changed.
8. Cleanup: Delete dashboard and alarm.

### Quick Troubleshooting
- Access denied: verify role permissions or ask admin for least-privilege lab policy.
- Resource limit reached: pick another region or request quota increase.
- Unexpected charges: stop/delete resources and review cost explorer immediately.

## Cross-Cloud Thinking Mode

Use this lens to study CloudFront and Global Accelerator design, anycast, edge routing, cache vs non-cache acceleration, global failover in a cloud-agnostic way: focus on capability first, provider name second.

### Capability Mapping (AWS / Azure / GCP)
| Capability | AWS | Azure | GCP |
|---|---|---|---|
| Identity | IAM / IAM Identity Center | Microsoft Entra ID + RBAC | Cloud IAM |
| Object Storage | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Virtual Machines | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Serverless Functions | AWS Lambda | Azure Functions | Cloud Functions / Cloud Run |
| Containers | Amazon EKS / ECS | AKS | GKE / Cloud Run |
| Databases | RDS / DynamoDB / ElastiCache | Azure SQL / Cosmos DB / Azure Cache | Cloud SQL / Firestore / Memorystore |
| Networking | VPC / Route 53 / ELB | VNet / DNS / Load Balancer | VPC / Cloud DNS / Cloud Load Balancing |
| Observability | CloudWatch / X-Ray / CloudTrail | Azure Monitor / App Insights / Activity Log | Cloud Monitoring / Cloud Logging / Cloud Trace |

### Same Lab Across 3 Clouds
| Lab Theme | AWS | Azure | GCP |
|---|---|---|---|
| Amazon EC2 | Amazon EC2 | Azure Virtual Machines | Compute Engine |
| Elastic Load Balancing | Elastic Load Balancing | Azure Load Balancer or Application Gateway | Cloud Load Balancing |
| Amazon VPC | Amazon VPC | Azure Virtual Network | VPC Network |
| Amazon CloudWatch | Amazon CloudWatch | Azure Monitor | Cloud Monitoring |

### How To Think Cross-Cloud
1. Start with workload requirement: latency, throughput, security, and compliance.
2. Map requirement to capability family (identity, network, compute, data, observability).
3. Compare service behavior, not branding: limits, scaling model, and failure modes.
4. Keep a portable architecture note: what is generic vs provider-specific.
5. Test same mini-lab in at least 2 clouds and write down differences.

### Child-Friendly Practice Challenge
- Pick one simple task (for example: upload one file, run one function, read one metric).
- Do the same task in AWS, Azure, and GCP.
- Fill this mini template:
  - What was the same?
  - What had a different name?
  - What felt easier/harder and why?

<!-- END PRACTICE_ENHANCEMENTS -->

