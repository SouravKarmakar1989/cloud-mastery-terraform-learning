# Amazon S3 Monitoring এবং Alerting — সব কিছু এক জায়গায়

S3 একটা hosted service। অনেকে ভাবে, "hosted service তো, আমার monitor করার কী দরকার?" — কিন্তু এটা ভুল ধারণা। Performance থেকে শুরু করে cost, security, compliance — সব কিছুর উপর নজর রাখতে হয়। এই সেকশনে আমরা AWS-এর native monitoring tools নিয়ে কথা বলব।

---

## কেন S3 Monitor করতে হয়?

চারটা মূল কারণ:

**১. Performance, Availability, Utilization**
- Latency বেড়ে গেলে কীভাবে বুঝব?
- Error rate কত? কোন operations fail করছে?

**২. Cost এবং Data Lifecycle**
- কতটা data কোন storage class-এ আছে?
- কোথায় কত টাকা যাচ্ছে?

**৩. Auditing, Compliance এবং Governance**
- কে কখন কোন data access করল?
- Regulatory requirement মেনে চলা হচ্ছে কি?

**৪. Inventory এবং Access Patterns**
- কোন bucket-এ কতটা data? বাড়ছে নাকি কমছে?
- কোন data কম ব্যবহার হচ্ছে, তাই cheaper tier-এ পাঠানো যায়?

এই সেকশনে শুধু **AWS native tools** নিয়ে কথা হবে — Splunk, Datadog এইসব third-party tool নয়।

---

## ১. S3 Storage Lens — সব কিছুর Overview

### Storage Lens কী?

Storage Lens হল Amazon S3-এর analytics tool — একটাই dashboard-এ সব bucket-এর storage usage, cost, activity সব কিছু দেখা যায়।

এটা দিয়ে যা করা যায়:
- Multiple AWS account-এর S3 data একসাথে দেখা
- Storage কীভাবে ব্যবহার হচ্ছে বোঝা
- Cost কমানোর পরামর্শ পাওয়া (recommendations)
- Organization level, account level, region level, bucket level, এমনকি prefix level পর্যন্ত granular data

Interactive dashboard আছে — boring table দেখতে হয় না।

**Data refresh:** প্রতিদিন — আগের দিনের data সকালে update হয়।

### Free vs Advanced

| Feature | Free | Advanced |
|---------|------|----------|
| Usage metrics | ১৪টা | ১৪টা |
| Activity metrics | নেই | ১৫টা |
| Granularity | Bucket level | Prefix level পর্যন্ত |
| Data retention | ১৪ দিন | ১৫ মাস |
| Recommendations | নেই | আছে |
| Cost | বিনামূল্যে | $০.২০ per million objects/month |

অনেকের জন্য Advanced-এর cost অনেক কম — যদি ১ million objects না থাকে, তাহলে $০.২০/month মাত্র!

### Advanced Metrics-এর কাজের দিক

- **Low usage bucket** খুঁজে বের করা → lifecycle policy বানানো → cost কমানো
- **Prefix-level insights** দিয়ে multiple team-এর মধ্যে cost attribution করা
- **১৫ মাসের data** দিয়ে long-term storage growth trend বোঝা → capacity planning
- **Month-over-month outlier** detect করা → অস্বাভাবিক cost বৃদ্ধি আগেভাগে ধরা

### Data Export

Storage Lens-এর data export করা যায় — তারপর Splunk, Sumo Logic বা নিজের custom dashboard-এ ব্যবহার করা যায়।

---

## ২. Amazon S3 Inventory — বিস্তারিত Catalog

### Inventory কী?

S3 Inventory হল তোমার bucket-এর সব object-এর একটা detailed catalog — কতটা বড়, কোন storage class-এ, কখন পরিবর্তিত হয়েছে, encrypted কি না, multipart upload ছিল কি না — সব কিছু।

এই catalog দিয়ে:
- Compliance audit-এর জন্য trail রাখা যায়
- কোন object কম ব্যবহার হচ্ছে সেটা identify করা যায়
- Data governance এবং access control enforce করা যায়

### Output Format

Report run করলে বিভিন্ন format-এ save করা যায়:
- **CSV** → Athena দিয়ে analyze করো
- **Apache ORC** → Hadoop দিয়ে
- **Apache Parquet** → Python, Java, C++ দিয়ে

### Report-এ কী কী থাকে?

- Object name/key
- Object size
- Last modified date
- Storage class
- Encryption status
- Multipart upload indicator
- ETag / checksum
- Object Lock status
- Intelligent-Tiering tier

### Workflow উদাহরণ

১. S3 Inventory report → destination bucket-এ save হল  
২. **Event Notification** trigger হল → Lambda function চলল বা SNS email গেল → "Report ready!"  
³. Athena দিয়ে report analyze করো → কোন object Glacier-এ পাঠানো যায় বের করো  
৪. **S3 Batch Operations** দিয়ে সেই objects একসাথে Glacier-এ move করো

---

## ৩. Server Access Logs — কে কী করল?

### কী কী log করে?

Server access logging চালু করলে bucket-এ যত request আসে সব record হয়। প্রতিটা request-এর জন্য একটা separate log entry।

প্রতিটা log-এ থাকে:
- Bucket owner
- Bucket name
- Timestamp
- Remote IP (requester-এর)
- Requester identity (authenticated user বা anonymous)
- Request type (GET, PUT, DELETE, etc.)
- Object key
- HTTP status code
- Bytes sent / object size
- Total time
- TLS version

### কোথায় Store করবে?

Log গুলো অন্য bucket-এ — এবং **আলাদা AWS account**-এ পাঠানো উচিত।

**কেন?** কেউ যদি তোমার account এ ঢুকে পড়ে, সব bucket access করতে পারে + log delete করতে পারে। Log অন্য account-এ থাকলে সেটা করা কঠিন হয়।

### Delivery Time

বেশিরভাগ log কয়েক ঘণ্টার মধ্যে deliver হয়।

### Use Cases

- Security audit: কে কখন কোন object access করল?
- Billing clarification: কোন API call-এর জন্য charge এসেছে?
- Customer usage analysis: কারা তোমার data ব্যবহার করছে?

### Lifecycle Rule দাও

Log গুলো দিনে দিনে জমে। Lifecycle rule বানাও — যেমন ৩০/৬০/৯০ দিন পর expire করো। নইলে unnecessary cost বাড়বে।

---

## ৪. CloudTrail Event Logging — API Actions Track করা

### Server Access Log আর CloudTrail-এর পার্থক্য

| | Server Access Log | CloudTrail |
|--|---|---|
| কী track করে? | S3 bucket-এ সব request | AWS account-এ authenticated API calls |
| Public internet access | হ্যাঁ, log করে | না, log করে না |
| কোথায় configure? | S3 bucket settings-এ | CloudTrail service-এ |

**উদাহরণ:**
- কেউ bucket-এর encryption settings পরিবর্তন করল → **CloudTrail এ থাকবে**
- কেউ public object URL দিয়ে ফাইল download করল → **Server access log-এ থাকবে, CloudTrail-এ না**

### CloudTrail কীভাবে ব্যবহার করবে S3-এর জন্য?

CloudTrail service এ গিয়ে event source filter করো: `s3.amazonaws.com` — তাহলে শুধু S3-সম্পর্কিত events দেখতে পাবে।

যা দেখবে: `GetBucketACL`, `GetBucketLogging`, `CreateBucket`, `DeleteBucket`, `PutBucketEncryption` — এরকম API calls।

---

## ৫. S3 Event Notifications — Event-Driven Workflow বানাও

### Event Notification কী?

Bucket-এ কিছু হলে (object upload, delete, tag change, etc.) AWS কে বলো "এই কাজ করো" — এটাই event notification।

### কোথায় পাঠাতে পারবে?

- **SNS Topic** → email notification
- **SQS Queue** → message queue-তে রাখো, processing শুরু করো
- **Lambda Function** → সরাসরি code চালাও
- **Amazon EventBridge** → complex routing এর জন্য

### Real-World উদাহরণ

**উদাহরণ ১ — Video Processing:**  
মিডিয়া কোম্পানি নতুন video upload করল → S3 event → Lambda trigger → Lambda watermark add করল

**উদাহরণ ২ — Order Processing:**  
রাতে order file bucket-এ upload হল → S3 event → SNS → email গেল processing team-কে → দল সকালে order fulfill করল

**উদাহরণ ৩ — Video Encoding:**  
Object-এ "final" tag দেওয়া হল → S3 event → SQS queue → encoding servers message নিল → video encode হল

### Supported Event Types

- **Object Created** (PUT, POST, COPY, multipart upload)
- **Object Removal** (DELETE)
- **Object Restore** (Glacier থেকে restore)
- **Lifecycle events**
- **Object Tagging** (tag যোগ/সরানো)
- **Object ACL put**
- **Replication events**

### কিছু গুরুত্বপূর্ণ নিয়ম

- Notification **অন্তত একবার** deliver হওয়ার guarantee আছে
- সাধারণত **seconds-এর মধ্যে** deliver হয়, কখনো বেশি সময় লাগতে পারে
- SQS FIFO queues directly support করে না — FIFO দরকার হলে EventBridge ব্যবহার করো
- S3 কে permission দিতে হবে SNS/SQS/Lambda-তে publish করার জন্য
- Console থেকে configure করলে Lambda-এর permission automatically set হয়

---

## ৬. Cost Explorer — মাসে কত টাকা যাচ্ছে?

Cost Explorer হল AWS-এর cost analysis tool। S3-এর জন্য ব্যবহার করলে:

- মাসে মাসে S3-এ কত খরচ হচ্ছে দেখা যায়
- Bar chart বা line chart-এ visualize করা যায়
- **Cost Allocation Tags** দিয়ে আরো detailed breakdown

### Cost Allocation Tags

Tag key যেমন `application`, `team`, `business-unit` — এগুলো billing console-এ enable করলে Cost Explorer-এ সেই tag দিয়ে filter করা যায়।

উদাহরণ: `team=marketing` bucket, `team=engineering` bucket — আলাদাভাবে কত খরচ হচ্ছে দেখা যাবে।

**Note:** Tag enable করার পর **২৪ ঘণ্টা** পর্যন্ত apply হতে সময় নিতে পারে।

---

## ৭. AWS Config — Configuration Compliance Monitoring

### Config কী?

AWS Config হল continuous monitoring tool — তোমার সব AWS resource-এর configuration track করে। কোনো কিছু পরিবর্তন হলে সেটা timeline-এ দেখা যায়।

**Troubleshooting উদাহরণ:**  
বিকেল ৩টায় application বন্ধ হয়ে গেল। Config-এর timeline খুললে দেখা যাবে ঠিক কখন কে কী পরিবর্তন করেছিল। হয়তো কেউ IAM role-এর permission পরিবর্তন করে read-write থেকে read-only করে দিয়েছে — সেটাই সমস্যা।

### Config Rules for S3

Config-এ S3-এর জন্য pre-built rules আছে। যেমন:

- `s3-bucket-logging-enabled` — সব bucket-এ logging আছে কি না
- `s3-bucket-public-read-prohibited` — কোনো bucket publicly readable না
- `s3-bucket-public-write-prohibited` — কোনো bucket publicly writable না
- `s3-bucket-ssl-requests-only` — শুধু HTTPS requests allow করা
- `s3-bucket-server-side-encryption-enabled` — encryption চালু আছে কি না
- `s3-default-encryption-kms` — KMS encryption use হচ্ছে কি না

### কীভাবে কাজ করে?

Rules প্রতি ২৪ ঘণ্টায় evaluate করা হয়। Non-compliant resource লাল রং দিয়ে দেখানো হয়। Click করলে কোন bucket/resource সমস্যায় আছে সেটা দেখা যায় → fix করো।

Custom rule বানাতে চাইলে Lambda function লিখতে হবে।

---

## সব Tools এক নজরে

| Tool | কাজ |
|------|-----|
| **Storage Lens** | Usage analytics, cost recommendations, multi-account dashboard |
| **S3 Inventory** | Object catalog, compliance audit, batch operations এর input |
| **Server Access Logs** | Who accessed what — security audit, billing clarification |
| **CloudTrail** | API-level actions — account changes track করা |
| **Event Notifications** | S3 events থেকে workflow trigger করা |
| **Cost Explorer** | Monthly cost trends, cost allocation by tag |
| **AWS Config** | Configuration compliance — bucket rules enforce করা |

এই সাতটা tool একসাথে ব্যবহার করলে S3-এর উপর পূর্ণ visibility থাকবে — performance, cost, security এবং compliance সব দিকেই।
