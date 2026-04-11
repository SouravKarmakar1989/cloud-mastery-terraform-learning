# S3 Foundations Learner Notes

This file is a learner-first companion to `01_S3_Foundations.md`.
It is structured as blog-post-depth theoretical articles, a comprehensive multi-cloud hands-on activity guide, and closed with troubleshooting, revision, and self-assessment material.

Source authority: 145 processed source files, 8235 extracted non-empty transcript lines, owned by AWS Storage Knowledge Base. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read each theoretical section fully before touching the console. Understand the why before the how.
2. Work through the Hands-On Activity Guide in module order. Each module builds on the last.
3. Run all three cloud variants when you can. The most durable learning comes from doing the same concept on AWS, Azure, and GCP in the same sitting.
4. Use the Troubleshooting section when something goes wrong. Most situations are already documented.
5. Return to the Quick Revision Sheet before any exam, interview, or architecture review.

## Theoretical Notes

---

### 1. S3 Is a Namespace and Policy System, Not a Filesystem

The most important mental shift when learning S3 is to stop thinking in terms of folders, drives, and file paths. S3 is an HTTP-based object store. A bucket is a regionally-scoped namespace and a policy enforcement boundary. An object is a key–value pair: the key is an arbitrary string (what looks like a path is just a prefix), and the value is the object bytes plus metadata. There are no directories. What the console renders as folders are simply prefixes sharing a `/` delimiter.

**Why this shape matters for architecture.** Because objects are individually addressable via URL, access control decisions live at three levels: the bucket policy (applies to all objects in the bucket), the object ACL (per-object and increasingly discouraged), and IAM policies attached to the requesting principal. The key design insight is that the bucket is not just a container — it is a governance unit. Every object that lands in that bucket inherits the bucket's Block Public Access settings, default encryption, and versioning state from the moment it is written.

**Globally unique bucket names.** Bucket names are globally unique across all AWS accounts. This is not just a naming convention — it means the bucket namespace is a shared global resource. Choosing bucket names that encode account ID or environment context (e.g., `my-app-prod-logs-123456789012`) prevents name collisions and reduces the risk of bucket name squatting attacks.

**Prefixes are performance shards.** S3 internally partitions the index by prefix. You can achieve approximately 3,500 PUT/COPY/POST/DELETE and 5,500 GET/HEAD requests per second **per prefix**. If all your objects start with the same prefix (e.g., `logs/2026/04/08/`) under heavy workload, you are constrained to one partition. Randomizing the leading prefix (e.g., using a hash of the object key as the first component) distributes load across partitions. This is no longer necessary for most modern workloads, but it explains why high-throughput patterns do not follow human-readable date-based layouts.

**Azure and GCP equivalents.** Azure Blob Storage organizes objects inside containers (the equivalent of S3 buckets) inside storage accounts (the equivalent of an AWS account-region pairing with a service quota boundary). GCP Cloud Storage has buckets with global names, similar to S3. Both platforms share the same fundamental concept: a named, regionally-scoped flat object namespace with HTTP-based access.

---

### 2. Bucket Defaults Are Architecture Decisions, Not Console Trivia

When you create a bucket, AWS gives you a set of configurable defaults. These are not optional niceties. They define the blast radius of every object written to that bucket from the moment it is created. Getting these wrong is not immediately obvious — the bucket works fine at first — but the failure mode emerges when a new team, a new tool, or a new process starts writing data under time pressure without re-reading the bucket's configuration.

**Block Public Access (BPA).** BPA is a set of four independent controls: `BlockPublicAcls`, `IgnorePublicAcls`, `BlockPublicPolicy`, and `RestrictPublicBuckets`. When all four are enabled (the recommended default for any private workload), no object in the bucket can be made publicly accessible regardless of what any IAM policy, bucket policy, or object ACL says. BPA is a guardrail, not a bucket policy. It operates independently of and overrides policy-based access grants that would otherwise open public access. It can be set at the account level to protect all buckets by default.

**Object ownership.** The Object Ownership setting determines whether the bucket owner automatically owns all objects, regardless of which account uploaded them. In the old ACL model, an object uploaded by account B into account A's bucket was owned by account B — account A could not delete it or apply policies to it without a separate permission grant. Setting `BucketOwnerEnforced` (the recommended default) disables ACLs entirely and transfers ownership of all objects to the bucket owner. This eliminates an entire class of cross-account ownership bugs.

**Default encryption.** Every bucket should have default encryption enabled. The choice is SSE-S3 (AWS-managed keys, free) or SSE-KMS (CMK or AWS-managed KMS key, with per-request key API costs and full audit trail through CloudTrail). Default encryption ensures every object written to the bucket is encrypted at rest even if the PUT request does not specify an encryption header. The bucket can also enforce encryption through a bucket policy that denies any PUT request that does not include a server-side encryption header.

**Versioning.** Versioning is disabled by default. Once enabled, it cannot be disabled — only suspended. Enabling versioning means S3 retains all previous versions of an object under the same key, each with a unique version ID. Accidental deletes become soft deletes: S3 inserts a delete marker rather than removing the bytes. You recover the object by deleting the delete marker. Versioning is a prerequisite for cross-region replication, MFA Delete, and S3 Object Lock.

---

### 3. Storage Class Selection Is Economic Routing, Not a One-Time Decision

S3 storage classes are assigned per object. Every object in the same bucket can be in a different storage class. The classes differ in three dimensions: durability/availability, minimum storage duration (a billing concept, not a technical constraint), and retrieval cost and latency. Choosing the wrong class does not produce an error — it produces an unexpected bill or a restore failure at the moment you most need the data.

**S3 Standard.** 99.999999999% (eleven nines) of durability across three AZs. 99.99% availability. No minimum storage duration. No retrieval fee. The correct choice for data that is accessed frequently or unpredictably, and for any data where you have not yet characterized access patterns.

**S3 Standard-IA (Infrequent Access).** Same durability and multi-AZ resilience as Standard. Lower per-GB storage price. But adds a per-GB retrieval fee and a 30-day minimum storage duration billing floor (you pay for 30 days even if you delete the object on day 2). The correct choice for data that is accessed less than once a month and for which you can absorb a retrieval fee.

**S3 One Zone-IA.** Like Standard-IA but stored only in one AZ. Cheaper, but the data is lost if that AZ is destroyed. Only appropriate for data you can reconstruct or re-derive — never for primary backups.

**S3 Glacier Instant Retrieval.** Multi-AZ. Millisecond retrieval (unlike other Glacier tiers). 90-day minimum storage duration. Highest retrieval fee per GB. Correct for long-term archival data that is accessed only a few times per year but where you cannot wait minutes or hours when you do need it.

**S3 Glacier Flexible Retrieval.** Multi-AZ archival. Three retrieval options: Expedited (1–5 min), Standard (3–5 hr), Bulk (5–12 hr). 90-day minimum storage duration. Correct for compliance archives and backups where restoration is a planned, infrequent event.

**S3 Glacier Deep Archive.** Lowest cost. Standard retrieval: 12 hours. Bulk retrieval: 48 hours. 180-day minimum storage duration. Correct for data retained only to satisfy regulatory requirements and almost never read.

**S3 Intelligent-Tiering.** Monitors access patterns and automatically moves objects between a frequent-access tier and an infrequent-access tier. Optional archive tiers (after 90 or 180 days of no access). No retrieval fees for the frequent-to-infrequent tier transitions. A per-object monthly monitoring fee applies. Correct for unpredictable access patterns at scale, where manual lifecycle management would be operationally burdensome. Not cost-effective for small objects (the monitoring fee dominates).

**Azure and GCP equivalents.** Azure Blob Storage has Hot, Cool, Cold, and Archive access tiers. The Archive tier requires rehydration (up to 15 hours) before reading, equivalent to Glacier Flexible Retrieval. GCP Cloud Storage has Standard, Nearline, Coldline, and Archive classes. All three platforms use the same economic logic: pay less to store, pay more to retrieve.

---

### 4. Access Control Is a Four-Layer Stack — Understand All Four

S3 access control is not a single dial. It is a stack of four independent mechanisms that AWS evaluates together. Misunderstanding which layer controls what responsibility is the root cause of most S3 security misconfigurations.

**Layer 1: Block Public Access.** Evaluated first. If any BPA setting blocks the request, access is denied immediately regardless of what policies say. This is the emergency brake.

**Layer 2: IAM identity-based policies.** Policies attached to the requesting IAM user, role, or service principal. These grant or deny based on who the caller is. If the requesting identity is within the same AWS account as the bucket, IAM policies can be sufficient without a bucket policy.

**Layer 3: Bucket (resource-based) policies.** JSON policies attached to the bucket itself. Bucket policies are evaluated regardless of where the request originates — same account, cross-account, or AWS service. Bucket policies are required for cross-account access, for enforcing encryption-in-transit, and for restricting access to specific VPC endpoints or IP ranges.

**Layer 4: Object ACLs.** Legacy per-object access control. AWS strongly recommends disabling ACLs by setting `BucketOwnerEnforced` on the Object Ownership setting. ACLs are confusing, easily misconfigured, and unnecessary when IAM and bucket policies are used correctly.

**The effective policy.** For same-account requests, access is allowed if IAM policies allow AND bucket policy does not explicitly deny. For cross-account requests, BOTH the IAM policy on the calling principal AND the bucket policy must explicitly allow the action. This asymmetry trips up most practitioners.

**Enforcing https-only access.** Add a bucket policy that denies all requests where `aws:SecureTransport` is false. This prevents HTTP access (unencrypted in transit) to any object in the bucket:
```json
{
  "Effect": "Deny",
  "Principal": "*",
  "Action": "s3:*",
  "Resource": ["arn:aws:s3:::your-bucket", "arn:aws:s3:::your-bucket/*"],
  "Condition": { "Bool": { "aws:SecureTransport": "false" } }
}
```

**VPC endpoint policies.** S3 can be accessed from within a VPC through a gateway VPC endpoint (free) that routes S3 traffic through the AWS backbone without leaving to the internet. A VPC endpoint policy attached to the endpoint can restrict which S3 buckets or operations the endpoint allows. This is the correct pattern for private subnets that need S3 access without a NAT Gateway.

---

### 5. Versioning and Lifecycle Together Create a Governed Data Model

Versioning alone retains every version forever, which accumulates unbounded cost. Lifecycle rules alone without versioning have no understanding of versions. The two features are designed to work together: versioning captures the temporal dimension of objects, and lifecycle rules apply economic routing and retention policy to that temporal dimension.

**The delete marker trap.** When versioning is enabled and you delete an object without specifying a version ID, S3 creates a delete marker — a special version that acts as the "current" version. The object appears deleted when you list objects. But the actual bytes are still there, under older version IDs. Storage accrues. The fix is a lifecycle rule that expires delete markers and cleans up non-current versions after a retention period matching your recovery window (e.g., keep the last 30 days of non-current versions, then purge).

**Lifecycle rule anatomy.** A lifecycle rule applies to a prefix or to objects with specific tags. It can specify transitions (move objects to another storage class after N days) and expirations (delete objects after N days). Critically, transitions and expirations can be applied independently to current versions and non-current versions. A complete lifecycle policy for a versioned bucket typically has: (1) transition current versions to Standard-IA after 30 days, (2) transition current versions to Glacier after 90 days, (3) expire non-current versions after 30 days, and (4) expire delete markers when there are no other versions under the key.

**Abort incomplete multipart uploads.** Large objects uploaded via the multipart upload API leave partial uploads in a "pending" state if the upload is not completed or explicitly aborted. These parts accrue storage charges but are invisible in most bucket listings. A lifecycle rule with the `AbortIncompleteMultipartUpload` action set to expire after 7 days is a cost hygiene essential for any bucket that receives large uploads.

---

### 6. Static Website Hosting: When S3 Is Enough and When It Is Not

S3 static website hosting enables a bucket to serve its contents over HTTP through a bucket-specific website endpoint (`<bucket>.s3-website.<region>.amazonaws.com`). No servers, no origin compute, no TLS termination at the bucket. This is the correct pattern for hosting a single-page app, documentation, or a simple public website where geographic performance and HTTPS with a custom domain are not critical requirements.

**The limitations.** The S3 website endpoint does not support HTTPS. It always exposes the full bucket URL with the S3 region subdomain. It does not integrate natively with Route 53 for custom-domain HTTPS. For production public delivery with HTTPS and a custom domain, the correct pattern is: S3 bucket (private, not a website), CloudFront distribution with an Origin Access Control (OAC) restricting access to only the CloudFront identity, and an ACM certificate attached to the CloudFront distribution.

**Origin Access Control vs Origin Access Identity.** OAC is the modern replacement for OAI. OAC supports SSE-KMS encryption on the origin bucket (OAI did not), supports additional HTTP methods, and supports all S3 storage classes including Glacier. When you use CloudFront in front of S3, always use OAC.

**Azure Static Website and GCP equivalents.** Azure Storage Accounts have a `$web` container pattern for static website hosting. GCP Cloud Storage supports hosting a static website through a public bucket or through a load balancer-fronted backend bucket. All three require a CDN layer (Azure Front Door or CDN, GCP Cloud CDN) for HTTPS with a custom domain.

---

### 7. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Object storage namespace | Amazon S3 | Azure Blob Storage | Cloud Storage |
| Per-object storage economics | S3 storage classes | Blob access tiers (Hot/Cool/Cold/Archive) | Cloud Storage classes (Standard/Nearline/Coldline/Archive) |
| Static website hosting | S3 website endpoint + CloudFront + OAC | Static website in Storage Account + Azure CDN / Front Door | Public bucket or backend bucket + Load Balancer + Cloud CDN |
| Bucket-level public access guardrail | Block Public Access (4 independent controls) | Public network access toggle + Shared key authorization | Public Access Prevention (uniform or per-bucket) |
| Access policy model | IAM + bucket policy (resource-based) + ACLs (disabled) | Azure RBAC + Shared Access Signature + blob public access level | Bucket IAM (uniform) + ACLs (fine-grained) |
| Encryption at rest | SSE-S3 / SSE-KMS / SSE-C (customer-provided) | SSE with Microsoft-managed or customer-managed keys | Google-managed encryption or CMEK |
| Lifecycle and retention | S3 lifecycle rules + versioning | Blob lifecycle management policies + versioning | Object lifecycle management + versioning |
| Private network access | Gateway VPC endpoint for S3 | Private endpoint for Blob Storage | Private Service Connect endpoint |
| Content delivery integration | CloudFront + Origin Access Control | Azure CDN / Front Door + private origin | Cloud CDN + backend bucket |
| Cost visibility | S3 Storage Lens + Cost Explorer | Storage metrics + Cost Management | Cloud Billing reports + Storage Insights |

## Hands-On Activity Guide

### Prerequisites and Safety Rules

**Before any lab:**
- Use a dedicated sandbox/learning AWS account. Never use a production account.
- Set an AWS Budgets alert (e.g., \$5/month) before creating any resources.
- Tag every resource with at minimum: `Project=Learning`, `Topic=S3`, `Owner=<your identifier>`.
- When a lab is complete, verify all created resources and delete them. S3 costs accrue on stored bytes, API calls, and data transfer even for small test buckets.
- Never put real PII, production data, or actual secrets in any test bucket.

---

### Module 1: Build a Secure S3 Baseline

**Goal:** Create a bucket with all correct defaults — the kind of bucket that passes a security review without changes.

#### Lab 1A: Create a Private, Encrypted, Versioned Bucket (AWS)

1. S3 console → Buckets → Create Bucket.
2. Bucket name: `s3-learner-lab-<your-account-id>`. Region: your primary learning region.
3. Object Ownership: `ACLs disabled (Bucket owner enforced)`. This disables legacy ACLs.
4. Block Public Access: all four toggles enabled. Confirm.
5. Versioning: Enable.
6. Default encryption: SSE-S3 (AES-256). Enable. Leave Bucket Key enabled to reduce KMS API calls.
7. Tags: `Project=Learning`, `Topic=S3`.
8. Create.

What to verify in the bucket properties tab after creation:
- Status (Access): Bucket and objects not public.
- Versioning: Enabled.
- Encryption: SSE-S3.
- Object ownership: Bucket owner enforced (ACLs disabled).

#### Lab 1B: Upload an Object and Understand Its Metadata

1. Upload a small text file (create one with `echo "hello s3" > test.txt`).
2. Select the uploaded object. In the Properties tab, note: Storage class (Standard), Encryption (SSE-S3), Version ID.
3. Override the storage class on a second upload: upload a second file and change the storage class to `Standard-IA` in the upload wizard.
4. Compare the properties of both objects in the same bucket. Observe: different storage classes, different version IDs, same bucket defaults for encryption.

#### Lab 1C: Add a Bucket Policy

Add a bucket policy that enforces HTTPS-only access:

1. S3 → your bucket → Permissions → Bucket Policy → Edit.
2. Paste and save:
```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "DenyNonTLS",
      "Effect": "Deny",
      "Principal": "*",
      "Action": "s3:*",
      "Resource": [
        "arn:aws:s3:::s3-learner-lab-<your-account-id>",
        "arn:aws:s3:::s3-learner-lab-<your-account-id>/*"
      ],
      "Condition": {
        "Bool": {
          "aws:SecureTransport": "false"
        }
      }
    }
  ]
}
```
3. Save. Verify in the Permissions tab that the bucket policy is shown as active.
4. Try accessing an object URL with `http://` (not `https://`). It should be denied.

#### Lab 1D: Azure Blob Storage Equivalent

1. Azure Portal → Storage Accounts → Create.
2. Name: `s3learnerlab` + a random suffix (6 chars, lowercase, no hyphens — Azure naming is stricter).
3. Region: choose a nearby region.
4. Performance: Standard. Redundancy: LRS (Locally-Redundant Storage) for the learning lab.
5. Advanced tab: Require secure transfer (HTTPS only) → Enabled. Enable blob public access → Disabled. Enable storage account key access → Enabled.
6. Data protection tab: Enable versioning for blobs.
7. Review + Create.

What to note vs AWS:
- Azure "Storage Account" is both a service quota boundary and a billing entity. Multiple containers live inside it.
- Azure "containers" are equivalent to S3 buckets.
- Azure "Require secure transfer" is equivalent to the S3 DenyNonTLS bucket policy.

#### Lab 1E: GCP Cloud Storage Equivalent

1. GCP Console → Cloud Storage → Buckets → Create.
2. Name the bucket. Choose a Region.
3. Storage class: Standard.
4. Access control: Uniform (applies IAM policies to all objects; disables legacy ACLs). Equivalent to `BucketOwnerEnforced` on S3.
5. Public access prevention: Enforce (blocks all public access). Equivalent to S3 Block Public Access.
6. Enable versioning.
7. Create.

---

### Module 2: Storage Classes and Lifecycle Rules

**Goal:** Move objects through the storage class hierarchy and implement a lifecycle policy that manages versions and incomplete uploads.

#### Lab 2A: Explore Storage Class Behavior (AWS)

1. Upload four identical small files to your bucket. Assign each a different storage class: Standard, Standard-IA, Glacier Instant Retrieval, Glacier Flexible Retrieval.
2. Note the minimum storage duration warnings in the upload wizard.
3. Attempt to download each one via the CLI:
   ```bash
   aws s3 cp s3://s3-learner-lab-<id>/standard.txt .
   aws s3 cp s3://s3-learner-lab-<id>/standard-ia.txt .
   aws s3 cp s3://s3-learner-lab-<id>/glacier-instant.txt .
   # Glacier Flexible Retrieval cannot be copied directly — initiate a restore first:
   aws s3api restore-object \
     --bucket s3-learner-lab-<id> \
     --key glacier-flexible.txt \
     --restore-request '{"Days":1,"GlacierJobParameters":{"Tier":"Expedited"}}'
   ```
4. Standard, Standard-IA, and Glacier Instant Retrieval return bytes immediately. Glacier Flexible Retrieval requires a restore operation before the bytes can be read. Observe the restore status in the console under the object's properties.

#### Lab 2B: Create a Lifecycle Policy for a Versioned Bucket

1. S3 → your bucket → Management → Lifecycle rules → Create lifecycle rule.
2. Rule name: `versioned-lifecycle-policy`. Scope: Apply to all objects.
3. Add the following actions:
   - Transition current versions of objects to Standard-IA after 30 days.
   - Transition current versions of objects to Glacier Flexible Retrieval after 90 days.
   - Expire non-current versions of objects after 30 days.
   - Permanently delete previous versions of objects after 30 days.
   - Delete expired delete markers.
   - Abort incomplete multipart uploads after 7 days.
4. Save the rule.

Verify the rule is active in the Lifecycle rules list. Note: lifecycle transitions do not execute immediately — they run once daily. For a learning environment, you can manually change the storage class of individual objects to simulate the effect.

#### Lab 2C: Observe the Delete Marker Behavior

1. Upload a file: `versioned-test.txt`.
2. Delete it from the S3 console (without specifying a version).
3. The file disappears from the bucket listing.
4. Enable "Show versions" toggle in the console. The delete marker appears as the current version. The original version is still present below it.
5. Delete the delete marker by selecting it specifically. The original file reappears as the current version.

This is the S3 soft-delete model. Understand it: delete without version ID = delete marker. Permanent delete requires specifying the version ID.

---

### Module 3: Static Website Hosting and CloudFront Integration

**Goal:** Host a static site on S3, understand the limitations, then add CloudFront with OAC for production-grade delivery.

#### Lab 3A: S3 Static Website Hosting (Insecure Baseline)

1. Create a separate bucket for this lab: `my-s3-website-lab-<id>`.
2. Bucket Properties → Static website hosting → Enable. Index document: `index.html`. Error document: `error.html`.
3. The website endpoint URL is displayed — note it (HTTP only, no custom domain).
4. Upload an `index.html`:
   ```html
   <html><body><h1>S3 Static Site Lab</h1></body></html>
   ```
5. Permissions: you must allow public read access for the website to work. This means disabling Block Public Access and adding a bucket policy with `s3:GetObject` for Principal `*`.

**Observe the problem:** the bucket must be publicly accessible for the website endpoint to serve objects. This is intentional for static public websites. But it means no HTTPS, no custom domain with valid certificate, and the bucket is publicly readable by anyone on the internet.

#### Lab 3B: CloudFront + OAC for HTTPS Delivery (Production Pattern)

1. Create a second bucket: `my-cloudfront-origin-<id>`. Keep it **completely private** (all Block Public Access settings on, no bucket policy granting public access).
2. Upload `index.html` to this bucket.
3. CloudFront console → Create Distribution.
4. Origin domain: select the S3 bucket (not the website endpoint).
5. Origin access: Origin access control settings (recommended) → Create new OAC. Leave defaults.
6. Viewer protocol policy: Redirect HTTP to HTTPS.
7. Create the distribution.
8. CloudFront prompts you to update the S3 bucket policy to allow only the CloudFront distribution IAM service principal. Copy and apply this policy to the origin bucket.
9. Wait for the distribution to deploy (status: Enabled). Navigate to the CloudFront domain name. Verify HTTPS works and the content is served.

The origin bucket has no public access. Only the CloudFront distribution can access it through the OAC-controlled S3 API calls. The browser never has a direct URL to the bucket.

---

### Module 4: VPC Endpoint for Private S3 Access

**Goal:** Access S3 from a private subnet without an Internet Gateway, using a Gateway VPC Endpoint.

1. VPC Console → Endpoints → Create Endpoint.
2. Service Name: search for `com.amazonaws.<region>.s3`, type: Gateway.
3. VPC: choose your VPC. Route tables: select the route tables of your private subnets.
4. Policy: `Full Access` (for the lab). In production, restrict to specific bucket ARNs.
5. Create.

The endpoint adds a route entry (`AWS S3 → pl-xxxxx`) to the selected route tables. Traffic from any instance in those subnets going to S3 now routes through the AWS backbone endpoint, not through the internet.

6. Launch an EC2 instance in a private subnet (no public IP, no Internet Gateway route). Attempt:
   ```bash
   aws s3 ls s3://s3-learner-lab-<id>/
   ```
   This succeeds even though the instance has no internet connectivity, because it routes through the Gateway VPC Endpoint.

7. Verify cost savings: Gateway VPC Endpoints for S3 are **free**. There are no per-hour or per-GB data processing charges, unlike Interface Endpoints (which use PrivateLink and charge per hour and per GB). For S3 access from private subnets, always use the Gateway endpoint type.

---

### Module 5: Bucket Policy Deep Dive — Cross-Account and Service Access

**Goal:** Write bucket policies that correctly model cross-account and service-principal access.

#### Lab 5A: Allow a Cross-Account IAM Role Read Access

To allow role `arn:aws:iam::999999999999:role/DataReaderRole` in a different account to read your bucket:

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::999999999999:role/DataReaderRole"
      },
      "Action": ["s3:GetObject", "s3:ListBucket"],
      "Resource": [
        "arn:aws:s3:::s3-learner-lab-<id>",
        "arn:aws:s3:::s3-learner-lab-<id>/*"
      ]
    }
  ]
}
```

The bucket policy grants cross-account access. The IAM policy on `DataReaderRole` in account 999999999999 must also grant `s3:GetObject` and `s3:ListBucket` for this bucket. **Both sides must allow** for cross-account access to succeed.

#### Lab 5B: Allow a Specific VPC Endpoint Only

Restrict bucket access to traffic originating from a specific VPC endpoint (useful for data lake buckets that should never be accessed from outside the VPC):

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Deny",
      "Principal": "*",
      "Action": "s3:*",
      "Resource": ["arn:aws:s3:::s3-learner-lab-<id>", "arn:aws:s3:::s3-learner-lab-<id>/*"],
      "Condition": {
        "StringNotEquals": {
          "aws:sourceVpce": "vpce-xxxxxxxxxxxxxxxxx"
        }
      }
    }
  ]
}
```

This denies all access to the bucket unless the request arrives through the specified VPC endpoint. Even an IAM admin in the account would be denied if they tried to access the bucket from outside the VPC.

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Steps |
|---|---|---|
| `AccessDenied` on `s3:GetObject` | BPA blocks it, missing IAM allow, bucket policy explicit deny, or missing cross-account policy on one side | Check Block Public Access; check IAM policy on the calling identity; check bucket policy; for cross-account, verify both sides allow |
| Object appears deleted but storage cost keeps rising | Delete markers from versioned bucket not being cleaned up; non-current versions accumulating | Enable "Show versions" in console; add lifecycle rule to expire non-current versions and delete markers |
| `403 Forbidden` when trying to serve static website | BPA blocks public access; bucket policy doesn't grant `s3:GetObject` for `Principal: "*"` | Disable BPA, add `s3:GetObject` public allow in bucket policy — or switch to CloudFront+OAC pattern |
| Glacier Flexible Retrieval `s3 cp` fails immediately | Object is in Glacier Flexible Retrieval and has not been restored; archived objects must be restored before reading | Run `s3api restore-object` with the desired retrieval tier; wait for the restoration to complete; check `x-amz-restore` header |
| Lifecycle transitions not executing | Lifecycle rule applies only to objects created after the rule was set; transitions also require the minimum storage duration to have passed | Verify rule scope; confirm objects are old enough; check that the rule is `Enabled` not `Disabled` |
| Incomplete multipart uploads causing unexpected cost | Aborted or never-completed multipart uploads leave hidden parts that accrue charges | Add `AbortIncompleteMultipartUpload` lifecycle action; check S3 Storage Lens for incomplete MPU metrics |
| `NoSuchBucket` when accessing bucket from another region | S3 bucket names resolve globally but requests must target the correct regional endpoint | Check the region of the bucket; use `aws s3api get-bucket-location` to confirm; use the correct regional endpoint |
| `InvalidBucketName` on bucket creation | Name contains uppercase, underscores, or is too long/too short | Use lowercase letters, numbers, and hyphens only; 3–63 characters; no IP address format |

---

## Quick Revision Sheet

**Core Concepts**
- S3 bucket = regional namespace + policy enforcement boundary. Objects = key+value+metadata.
- Bucket names are globally unique across all AWS accounts.
- Objects are individually addressable; S3 is flat — "folders" are prefix conventions only.
- Throughput: ~3,500 write / 5,500 read requests per second per prefix partition.

**Bucket Defaults Checklist (Security)**
- [ ] Block Public Access: all 4 controls enabled
- [ ] Object Ownership: Bucket owner enforced (ACLs disabled)
- [ ] Default encryption: SSE-S3 minimum (SSE-KMS for auditability)
- [ ] Versioning: enabled for data protection
- [ ] Bucket policy: DenyNonTLS for in-transit encryption

**Storage Class Decision Tree**
- Accessed frequently or unpredictably → `Standard`
- Accessed < once/month, can tolerate retrieval fee → `Standard-IA`
- Same as above but in one AZ (reconstructable data only) → `One Zone-IA`
- Long-term archive, instant access needed → `Glacier Instant Retrieval` (90-day min)
- Long-term archive, hours-to-retrieve is acceptable → `Glacier Flexible Retrieval` (90-day min)
- Regulatory archive, 12–48hr restore acceptable → `Glacier Deep Archive` (180-day min)
- Unknown access pattern at scale → `Intelligent-Tiering` (monitoring fee per object)

**Lifecycle Rule Essentials (versioned buckets)**
1. Transition current versions to IA after 30 days
2. Transition current versions to Glacier after 90 days
3. Expire non-current versions after 30 days
4. Delete delete markers when no other versions exist
5. Abort incomplete multipart uploads after 7 days

**Access Control Evaluation Order**
1. Block Public Access (any match = deny, overrides all)
2. Organization SCPs (if using AWS Organizations)
3. IAM identity-based policies (same-account: either IAM allow OR bucket policy allow is sufficient)
4. Bucket resource-based policies
5. Object ACLs (deprecated; disabled with BucketOwnerEnforced)
Note: Cross-account requires BOTH IAM policy on caller AND bucket policy to explicitly allow.

**Static Website Delivery**
- S3 website endpoint: HTTP only, no custom domain TLS, requires public read access → dev/test only.
- Production: private S3 bucket + CloudFront + OAC + ACM certificate + Route 53 alias record.

**VPC Access**
- Gateway VPC Endpoint for S3 = free, no per-GB data processing charge, routes through AWS backbone.
- Interface Endpoint (PrivateLink) = per-hour + per-GB cost, needed for specific service endpoints.
- For S3, always use Gateway type endpoint for private subnet access.

### Module 3: Compare delivery patterns

**Goal:** Contrast a private bucket, a public website-style bucket, and an edge-fronted delivery path.

1. Test browser access to a private object and record the denial path.
2. Create a narrowly scoped public content example or a temporary website configuration in a sandbox account only.
3. Front the same content with CloudFront or map the equivalent Azure/GCP pattern so you can compare origin protection approaches.
4. Summarize when direct bucket access is acceptable and when an edge layer is the safer default.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

## Troubleshooting Notes

| Symptom | Likely Cause | Check First |
|---|---|---|
| Unexpected AccessDenied | Bucket policy, Block Public Access, KMS policy, or object ownership mismatch | Check the caller principal, bucket policy evaluation, and encryption key policy together |
| Objects restore too slowly or remain unavailable | Archive tier retrieval has not completed or lifecycle changed the object state | Inspect the current storage class, restore status, and lifecycle timers |
| Transfer job stalls or never starts | Agent reachability, endpoint routing, or IAM trust is incomplete | Validate network reachability on port 443, task execution role, and endpoint resolution |
| Throughput is lower than expected | The chosen storage service or class does not match the access pattern | Check request concurrency, filesystem mode, and the service-specific throughput model |
| Cost is higher than expected | Duplicate retention, retrieval fees, or wrong class selection | Review lifecycle, replication scope, archive restores, and request-heavy access paths |
| Static website behavior is inconsistent | Website hosting, bucket policy, and browser-side CORS expectations are mixed together | Check whether the request is using the website endpoint, the object endpoint, or an edge distribution |

## Quick Revision Sheet
- Decide whether the bucket is a private system boundary, a public delivery surface, or both through layered services.
- Decide how storage class selection should follow actual access patterns rather than static assumptions.
- Decide whether versioning and lifecycle are mandatory controls or optional conveniences for this workload.
- Decide how object access should be governed across IAM, bucket policy, encryption policy, and endpoint path.
- Keep the mental model for s3 foundations tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in s3 foundations, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
