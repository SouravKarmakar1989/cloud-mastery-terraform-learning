# Amazon S3 Bucket ও Object নিয়ে বিস্তারিত আলোচনা

এই সেকশনটা Amazon S3-এর একদম core — মানে bucket আর object। আগের সেকশনগুলোতে আমরা storage class, security, permission এসব শিখেছিলাম। এইবার হাতে-কলমে দেখব bucket কীভাবে তৈরি করতে হয়, object কীভাবে upload-download করতে হয়, lifecycle কীভাবে manage করতে হয় — সব কিছু। চলো শুরু করি।

---

## Bucket তৈরি করা এবং নামকরণের নিয়ম

### নামটা globally unique হতে হবে

S3 bucket-এর নাম globally unique হতে হয় — কিন্তু একটু ভুল ধারণা আছে এখানে। আসলে uniqueness টা পুরো world জুড়ে না, বরং AWS **partition** জুড়ে। AWS-এর তিনটা partition আছে:

- **Standard partition** — বাকি সব region (US, EU, AP, etc.)
- **China partition** — `cn-*` region গুলো
- **GovCloud partition** — US সরকারি কাজের জন্য

তাই কেউ যদি standard partition-এ `my-data-bucket` নামে একটা bucket নিয়ে রাখে, তাহলে তুমি সেই নামে আর bucket বানাতে পারবে না — এমনকি তোমার AWS account আলাদা হলেও না।

### নামকরণের নিয়মগুলো

- **৩ থেকে ৬৩ character** হতে হবে
- শুধু **lowercase letters, numbers, hyphen (-) এবং dot (.)** ব্যবহার করা যাবে
- নাম **letter বা number দিয়ে শুরু এবং শেষ** হতে হবে
- পাশাপাশি দুটো dot থাকতে পারবে না (যেমন `my..bucket` — invalid)
- IP address-এর format হওয়া যাবে না (যেমন `192.168.1.1` — invalid)
- `xn--` দিয়ে শুরু করা যাবে না
- `-s3alias` দিয়ে শেষ করা যাবে না

**Valid উদাহরণ:** `amazon-s3-deepdive`, `amazon.s3.deep.dive`, `my-prod-data-2024`  
**Invalid উদাহরণ:** `MyBucket` (uppercase), `my_bucket` (underscore), `my-bucket-` (শেষে dash)

### ARN এবং Bucket Limit

Bucket-এর ARN দেখতে এরকম: `arn:aws:s3:::bucket-name` — লক্ষ্য কর, এতে account ID নেই। কারণ bucket name globally unique, তাই account ID ছাড়াই identify করা যায়।

Account per limit:
- **Default:** ১০০টা bucket
- **Maximum (hard limit):** ১০০০টা bucket — এটা বাড়াতে AWS Support-এ request করতে হয়
- Bucket বেশি থাকলে performance কমে না — এটা একটা misconception

### Demo

Console থেকে `amazon-s3-deep-dive` bucket US-East-1 এ তৈরি হল। CLI দিয়েও বানানো যায়:

```bash
aws s3api create-bucket --bucket amazon-s3-deep-dive-public --region us-east-1
```

অন্য কেউ যদি আগে থেকে সেই নাম নিয়ে রাখে, তাহলে error আসবে — এমনটাই demo-তে দেখানো হয়েছে।

---

## Bucket-এর Default Settings

নতুন bucket তৈরি হলে দুটো জিনিস automatically চালু থাকে:

### ১. S3 Block Public Access

২০১৭-২০১৯ সালে প্রচুর data breach হয়েছিল misconfigured public S3 bucket-এর কারণে। McGraw-Hill, Pegasus Airlines — এরকম অনেক বড় কোম্পানির sensitive data ফাঁস হয়। এই ঘটনার পর AWS Block Public Access feature চালু করে।

এই setting:
- **Bucket level** এ করা যায়
- **Access Point level** এ করা যায়  
- **পুরো AWS account level** এ করা যায়
- কিন্তু individual object-এ করা যায় না

যদি public access দরকার হয় (যেমন static website hosting), তাহলে bucket-level এ block disable করতে হবে — কিন্তু এটা করার আগে চিন্তা করতে হবে।

### ২. Default Encryption (SSE-S3)

২০২৩ সালের শুরু থেকে AWS সব নতুন object automatically SSE-S3 দিয়ে encrypt করে। এর আগে encryption optional ছিল।

চাইলে bucket-এর default encryption পরিবর্তন করা যায়:
- **SSE-S3** → Amazon managed keys (default)
- **SSE-KMS** → তোমার নিজের KMS key

**Bucket Key** একটা দারুণ feature: S3 নিজেই KMS থেকে একটা data key নিয়ে bucket-এ কিছুক্ষণ রাখে। এতে বারবার KMS API call করতে হয় না → KMS cost কমে।

যদি কেউ object upload করার সময় নিজে encryption header দেয়, সেটা bucket-এর default কে override করবে।

### Demo

- Default encryption SSE-S3 থেকে SSE-KMS-এ পরিবর্তন করা হল, key হিসেবে `S3 Production Data` ব্যবহার করা হল
- `amazon-s3-deep-dive-public` bucket-এ Block Public Access partially disable করা হল (ACL blocking রেখে bucket policy-based public access allow করতে)

---

## Bucket-এর Properties এবং Empty vs Delete

### কী কী Property আছে?

Bucket তৈরির পরেও অনেক কিছু configure করা যায়:

- **Versioning** — object-এর multiple version রাখা
- **Tags** — bucket কে label করা
- **Default Encryption** — সব object encrypt হবে কি না
- **Server Access Logging** — কে কখন bucket access করল তার log
- **CloudTrail Data Events** — API level logging
- **Event Notifications** — object upload/delete হলে trigger
- **Transfer Acceleration** — দ্রুত upload
- **Object Lock** — object delete করা আটকানো
- **Requester Pays** — data transfer cost অন্যের উপর চাপানো
- **Static Website Hosting** — website serve করা

### Empty vs Delete — পার্থক্যটা জানা দরকার

| | Empty | Delete |
|---|---|---|
| কী হয়? | সব object/version মুছে যায়, bucket থাকে | Bucket সহ সব কিছু যায় |
| Bucket name | তোমার account-এ থাকে | Release হয়, অন্য কেউ নিতে পারে |
| Cost | Empty bucket-এ cost নেই | — |

**Important:** যদি তোমার application বা CI/CD pipeline ওই bucket name ব্যবহার করে, তাহলে bucket delete না করে শুধু empty করো। নইলে নাম release হলে অন্য কেউ সেই নাম নিয়ে নিতে পারে — এটা security risk।

IaC tools যেমন Terraform বা CloudFormation দিয়ে bucket delete করতে গেলে আগে manually empty করতে হবে, নইলে error আসবে।

### Demo

- একটা temp bucket বানানো হল, কিছু file upload করা হল
- সরাসরি delete করতে গিয়ে "bucket is not empty" error আসল
- Empty করার পর (type "permanently delete" confirm করে) bucket delete করা গেল

---

## Object কী এবং কীভাবে কাজ করে

### Object-এর পরিচয়

S3-তে যা store করা হয় সবই object। প্রতিটা object-এ থাকে:

- **Key** — object-এর নাম/path (যেমন `photos/vacation/beach.jpg`)
- **Value** — actual data (binary)
- **Version ID** — যদি versioning চালু থাকে
- **Metadata** — additional attributes

**Maximum size per object:** ৫ TB  
**Object count:** unlimited  
**Total bucket size:** unlimited

### Consistency Model

২০২০ সালের শেষদিক থেকে S3 **strong read-after-write consistency** দেয়। মানে তুমি object লেখার সাথে সাথে পড়তে পারবে, আগের মতো eventual consistency-র ঝামেলা নেই।

### ARN এবং URL

Object-এর ARN: `arn:aws:s3:::amazon-s3-deepdive/bryan.png`

### Prefix = "Folder নয়"

S3 আসলে flat storage। কোনো real folder নেই। `photos/vacation/beach.jpg` — এখানে `photos/vacation/` হল key-এর prefix। Console শুধু UI-তে folder দেখায়, কিন্তু S3-এ আসলে সব একই level-এ আছে।

---

## Object Upload করার পদ্ধতি

### Console থেকে

- Maximum **১৬০ GB** পর্যন্ত console দিয়ে upload করা যায়
- Drag and drop করেও কাজ করে

### CLI দিয়ে

```bash
# সব file sync করা
aws s3 sync . s3://amazon-s3-deep-dive

# নির্দিষ্ট file copy করা
aws s3 cp s3://amazon-s3-deepdive . --recursive --exclude "*" --include "*.png"
```

`s3 sync` দারুণ কাজের — শুধু নতুন বা পরিবর্তিত file গুলোই transfer করে।

### SDK বা REST API দিয়ে

Application থেকে programmatically upload করা যায়।

### Upload-এর সময় যা যা set করা যায়

- **Storage class** — Standard, IA, Glacier, etc.
- **Encryption** — bucket default override করা যায়
- **Tags** — key-value pairs
- **Metadata** — content-type, custom attributes
- **Checksums** — data integrity verify করার জন্য

---

## Multipart Upload — বড় File-এর জন্য

### কেন দরকার?

বড় file (যেমন database backup, video file) এক shot-এ upload করলে:
- Network problem হলে পুরোটা আবার শুরু থেকে করতে হয়
- Slow হয়

### কীভাবে কাজ করে

১. বড় file কে ছোট ছোট parts-এ ভাগ করো
২. Parts গুলো **parallel** এ upload হয়
৩. Order যেকোনো হতে পারে
৪. S3 সব parts একত্রিত করে final object তৈরি করে

**সুবিধাগুলো:**
- **Improved throughput** — parallel upload
- **Quick recovery** — network fail হলে শুধু সেই part টা আবার upload করো
- **Pause and resume** — মাঝপথে থামিয়ে পরে continue করা যায়
- **File size না জেনেও শুরু করা যায়** — file generate হতে হতে upload করা যায়

Maximum object size হল ৫ TB — এটা multipart upload-এর কারণেই possible।

---

## Object Access করার পদ্ধতি

### URL-এর তিন ধরন

**১. Virtual-hosted style URL (recommended):**
```
https://bucket-name.s3.region-code.amazonaws.com/key-name
উদাহরণ: https://amazon-s3-deepdive.s3.us-east-1.amazonaws.com/bryan.png
```

**২. Path-style URL (deprecated হচ্ছে):**
```
https://s3.region.amazonaws.com/bucket-name/key-name
```
AWS এটা deprecate করার চেষ্টা করছে অনেকদিন ধরে, কিন্তু অনেকে ব্যবহার করায় এখনো চালু আছে। নতুন কাজে ব্যবহার করা উচিত না।

**৩. S3 URI (AWS services-এর মধ্যে ব্যবহারের জন্য):**
```
s3://bucket-name/key-name
উদাহরণ: s3://amazon-s3-deepdive/bryan.png
```

### কে Access করতে পারে?

- **Same account:** সরাসরি credentials দিয়ে
- **Different AWS account:** bucket owner permission দিলে
- **Public internet:** শুধু যদি public access explicitly allow করা থাকে

Private object-এর public URL-এ click করলে "Access Denied" আসবে।

---

## Object-এর সাথে কী কী করা যায়

### Storage Class পরিবর্তন

প্রতিটা object-এর নিজস্ব storage class আছে (bucket-level নয়)। Object Actions → Edit Storage Class থেকে manually পরিবর্তন করা যায়।

**একটা important কথা:** Storage class change করলে S3 আসলে নতুন object তৈরি করে নতুন settings সহ এবং নতুন "last modified" date দেয়।

### Object Delete করা

**Non-versioned bucket:** object সরাসরি permanently delete হয়।

**Versioned bucket:** object সরাসরি delete হয় না। বরং একটা **delete marker** add হয় নতুন version হিসেবে। এটা হল "soft delete"। আগের versions গুলো remain করে, এবং নির্দিষ্ট version ID দিয়ে retrieve করা যায়।

Delete marker remove করলে object আবার দেখা যাবে।

### Object Move/Copy করা

S3-তে "move" মানে আসলে দুটো operation:
1. **Copy** — নতুন location-এ (same bucket বা different bucket) নতুন object তৈরি
2. **Delete** — original object মুছে ফেলা

Move করলে version ID preserve হয় না — destination bucket-এ নতুন version ID assign হয়।

---

## Lifecycle Rules — স্বয়ংক্রিয় Data Management

### কেন দরকার?

সব data সব সময় same মাত্রায় ব্যবহার হয় না। নতুন data বেশি access হয়, পুরনো data কম। কিন্তু সব কিছু S3 Standard-এ রাখলে cost বাড়ে। Lifecycle rules দিয়ে স্বয়ংক্রিয়ভাবে data সঠিক storage class-এ move করা যায়।

### Lifecycle-এর উদাহরণ

| দিন | কী হবে |
|-----|---------|
| Day 1 | Object S3 Standard-এ upload |
| Day 45 | S3 Standard-IA তে move |
| Day 90 | S3 Glacier Flexible Retrieval-এ move |
| Day 365 | Delete (expire) |

### Transition-এর নিয়ম

- Lifecycle rules শুধু **নিচের দিকে** move করতে পারে (cheaper tier)
- উপরে যেতে হলে manually করতে হবে (console/CLI/API)
- S3 Standard থেকে IA-তে যেতে **অন্তত ৩০ দিন** থাকতে হবে
- IA বা One Zone-IA-তে minimum **৩০ দিনের charge** আছে

**Transition conflict rules:**
- Delete/expire > Transition এর চেয়ে বেশি priority পায়
- Glacier Flexible > Standard-IA-এর চেয়ে বেশি priority পায়

### Filter করার উপায়

Lifecycle rule সব object-এ বা নির্দিষ্ট subsetর উপর apply করা যায়:
- **Prefix** — নির্দিষ্ট "folder"-এর সব object
- **Tags** — নির্দিষ্ট tag থাকা object
- **Object size** — নির্দিষ্ট size-এর বেশি/কম object
- **Combination** — উপরের যেকোনো combination

### Lifecycle-এ কী কী Actions আছে?

১. **Current version** objects কে different storage class-এ move করা
২. **Non-current version** objects কে move করা (versioned bucket)
৩. **Current version expire** করা (delete)
৪. **Non-current version permanently delete** করা
৫. **Expired delete markers** বা **incomplete multipart uploads** delete করা

Incomplete multipart upload গুলো cost করে কারণ data upload হয়ে আছে কিন্তু কাজে লাগছে না — lifecycle rule দিয়ে এগুলো cleanup করা উচিত।

### Demo

Management tab → Lifecycle rules → নতুন rule:
- Day 30: S3 Standard → Standard-IA
- Day 180: Standard-IA → Glacier Instant Retrieval

---

## S3 Select এবং Glacier Select

### সমস্যাটা কী?

মনে করো তোমার কাছে S3-তে একটা বিশাল CSV file আছে — কয়েক GB। তুমি শুধু ওই file-এর ৫ টা row চাও। কিন্তু S3 থেকে পুরো file নামিয়ে আনতে হবে → পুরো transfer cost লাগবে → slow হবে।

### সমাধান: S3 Select

S3 Select দিয়ে তুমি SQL ব্যবহার করে **S3-এর ভেতরেই** data filter করতে পারবে, শুধু দরকারি part টাই return পাবে।

```sql
SELECT * FROM s3object WHERE department = 'engineering'
```

শুধু `SELECT` command support করে।

**Supported formats:** CSV, JSON, Apache Parquet  
**Compression:** GZip, Bzip2 compressed file-এও কাজ করে

### Glacier Select

Same concept কিন্তু Glacier-এ stored data-র জন্য। পুরো archive restore না করেই query করা যায়।

### সীমাবদ্ধতা

- Intelligent-Tiering-এর archive/deep archive tier-এ কাজ করে না
- Glacier Flexible Retrieval বা Glacier Deep Archive-এ কাজ করে না (Glacier Instant Retrieval-এ কাজ করে)
- Reduced Redundancy Storage-এ কাজ করে না

---

## Object Tagging

### Tag কী?

Tag হল key-value pair যা object কে label করার জন্য ব্যবহার করা হয়।

উদাহরণ:
- `environment = production`
- `department = finance`
- `confidential = true`

### নিয়মকানুন

- প্রতি object-এ **সর্বাধিক ১০ টা** tag
- Key: সর্বাধিক ১২৮ characters
- Value: সর্বাধিক ২৫৬ characters
- **Case-sensitive** — `Department` আর `department` আলাদা tag
- Upload-এর সময় বা পরে যেকোনো সময় tag add/modify করা যায়

### Tag কীসে কাজে লাগে?

**১. Organization/Search:** কোন object কোন project বা team-এর তা বোঝা যায়।

**২. Lifecycle Rules:** Specific tag-এর object গুলো আলাদাভাবে move/expire করা যায়।
```
Tag: vacation=cape-town → Glacier Flexible Retrieval-এ move
Tag: vacation=london → S3 Standard-এ থাকুক
```

**৩. Access Control:** IAM policy বা bucket policy দিয়ে tag-based access দেওয়া যায়।
```json
"Condition": {
  "StringEquals": {
    "s3:ExistingObjectTag/environment": "development"
  }
}
```
উপরের policy দিলে user শুধু `environment=development` tag-এর object পড়তে পারবে, বাকিগুলো পারবে না।

**৪. Cost Allocation Tags:** কোন department কত cost করছে সেটা track করতে।

### Millions of Object-এ Tag পরিবর্তন

লক্ষ লক্ষ object-এর tag একসাথে পরিবর্তন করতে হলে **S3 Batch Operations** ব্যবহার করতে হবে। Console/CLI-তে একটা একটা করে করা practical না।

---

## Requester Pays

### Normal ব্যবস্থা

সাধারণত bucket owner data transfer-এর cost বহন করেন।

### Requester Pays Feature

এই feature চালু করলে:
- যে request করছে (requester) → সে data transfer cost pay করবে
- Bucket owner → শুধু storage cost pay করবে

### কখন কাজে লাগে?

যদি তোমার bucket-এ বড় dataset আছে এবং তুমি সেটা partners-দের সাথে share করো। প্রতিদিন GB বা TB data transfer হলে সেই cost তোমার না হয়ে তাদের হবে।

### Important নিয়ম

Requester Pays চালু থাকলে **anonymous access বন্ধ** হয়ে যায় — কারণ AWS কে বিল করবে সেটা জানতে authenticated user দরকার।

### Setup

Bucket → Properties → Requester Pays → Enable করো। ব্যস, এটুকুই।

---

## Student Challenge সমাধান

এই সেকশনের challenge-এ যা করা হয়েছে:

১. **File Download:** S3 console থেকে `world-map.jpeg` download করা হল। Private object হওয়ায় public URL দিয়ে access denied আসলেও, console-এর Download বাটন কাজ করে।

২. **File Delete:** `transportation-stats.csv` file bucket থেকে delete করা হল।

৩. **Bucket Tagging:** Website bucket-এ tag add করা হল:
   - Key: `cost-center`
   - Value: `0884` (marketing department-এর identifier)

---

## সবটা একসাথে মনে রাখো

```
Bucket তৈরি করো
    → নাম globally unique (partition-এ)
    → Block Public Access চালু থাকে
    → SSE-S3 encryption default

Object upload করো
    → Console (160 GB পর্যন্ত) / CLI / SDK
    → বড় file? Multipart Upload ব্যবহার করো

Object access করো  
    → Virtual-hosted style URL (recommended)
    → S3 URI (AWS services-এর মধ্যে)
    → Private = authenticated access only

Lifecycle দিয়ে cost বাঁচাও
    → নিচের tier-এ যাও (Standard → IA → Glacier → Delete)
    → উপরে যেতে হলে manually করো

Data analyze করো কম cost-এ
    → S3 Select — SQL দিয়ে partial data

Tag দিয়ে organize করো
    → Access control, lifecycle, cost allocation সব কিছুতে কাজে লাগে
```

এই সেকশনটা আসলে S3-এর প্রাণ। Bucket আর object — এই দুটোর সাথে ভালোভাবে পরিচিত না হলে বাকি সব advanced feature বুঝতে কষ্ট হবে। পরবর্তী সেকশনগুলোতে আমরা এই basic-এর উপরেই build করব।
