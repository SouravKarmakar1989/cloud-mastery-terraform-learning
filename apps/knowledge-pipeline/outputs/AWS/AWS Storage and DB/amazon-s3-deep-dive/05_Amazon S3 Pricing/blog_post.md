## Amazon S3 Pricing: সব কিছু যা তোমার জানা দরকার

আজকে আমরা আলোচনা করবো Amazon S3-এর pricing নিয়ে। তুমি যদি Amazon S3 ব্যবহার করো, তাহলে এর খরচের বিষয়টি বুঝে নেওয়া খুবই গুরুত্বপূর্ণ। কারণ সঠিকভাবে খরচ বুঝে নিলে তুমি তোমার S3 ব্যবহারে খরচ কমাতে পারবে। চল, একে একে আমরা S3 pricing-এর প্রতিটি দিক নিয়ে আলোচনা করি।

### Amazon S3 Pricing-এর মূল উপাদানগুলি

Amazon S3-এর খরচ মূলত তিনটি বিষয়ে নির্ভর করে:

1. **Storage Volume**: যত বেশি ডেটা S3-তে রাখবে, তত বেশি খরচ হবে। S3 তোমাকে gigabytes-এর ভিত্তিতে চার্জ করে।

2. **Storage Class**: তুমি যে storage class বেছে নেবে তার উপরেও খরচ নির্ভর করে। উদাহরণস্বরূপ, Standard class-এ বেশি খরচ হলেও Infrequent Access বা Glacier Deep Archive-এর মতো class-এ খরচ কম হয়।

3. **Region**: তুমি কোন region-এ ডেটা store করছো তাও খরচে প্রভাব ফেলে। যেমন, North Virginia-তে ডেটা রাখার খরচ Tokyo-তে রাখার থেকে কম হতে পারে।

### Storage Class অনুযায়ী খরচ

Amazon S3 বিভিন্ন ধরনের storage class অফার করে:

- **S3 Standard**: প্রতি গিগাবাইটের জন্য $0.023 প্রতি মাসে।
- **S3 Standard-IA**: একটু কম খরচে, $0.0125 প্রতি গিগাবাইট প্রতি মাসে।
- **S3 One Zone-IA**: আরও সস্তা, $0.01 প্রতি গিগাবাইট প্রতি মাসে।
- **Glacier Instant Retrieval**: $0.004 প্রতি গিগাবাইট, যা খুবই কম।
- **Glacier Deep Archive**: সবচেয়ে কম খরচে, $0.00099 প্রতি গিগাবাইট।

### Intelligent-Tiering

Intelligent-Tiering storage class তোমার ডেটার access pattern অনুযায়ী storage class পরিবর্তন করে। এর ফলে তুমি খরচ বাঁচাতে পারো। এটা মূলত Standard, IA এবং Glacier এর খরচ অনুসরণ করে।

### Volume Discounts

S3 Standard-এর জন্য Amazon volume discount অফার করে:

- প্রথম 50TB: $0.023 প্রতি গিগাবাইট
- 50TB থেকে 499TB: $0.022 প্রতি গিগাবাইট
- 500TB এবং তার বেশি: $0.021 প্রতি গিগাবাইট

### Request এবং Data Retrieval Fees

**Put Requests**: ডেটা আপলোড করার জন্য $0.005 প্রতি 1000 requests।

**Get Requests**: $0.0004 প্রতি 1000 requests।

**Lifecycle Transitions**: প্রতি 1000 transitions এর জন্য $0.01।

**Data Retrieval**: Storage class অনুযায়ী retrieval fees ভিন্ন হয়। যেমন, Glacier থেকে data retrieval এর জন্য expedite retrieval এর ক্ষেত্রে বেশি খরচ হয়।

### AWS Pricing Calculator ব্যবহার করা

তুমি AWS Pricing Calculator ব্যবহার করে তোমার S3 খরচ অনুমান করতে পারো। এটি তোমাকে বিভিন্ন storage class, region, এবং data transfer এর খরচ অনুমান করতে সাহায্য করবে।

### Data Transfer Costs

S3 থেকে data transfer এর ক্ষেত্রে Amazon প্রথম 100GB প্রতি মাসে বিনামূল্যে দেয়। কিন্তু এরপর থেকে tiered pricing structure অনুসরণ করে খরচ হয়। যেমন, প্রথম 10TB এর জন্য প্রতি গিগাবাইট $0.09। অন্য AWS সার্ভিসে data transfer এর ক্ষেত্রে খরচ কম হয়, বিশেষ করে যদি CloudFront ব্যবহার করো।

### শেষ কথা

Amazon S3-এর pricing একটু জটিল হলেও, এর বিভিন্ন দিক বুঝে নিলে তুমি সহজেই খরচ কমাতে পারো। তোমার ডেটার ব্যবহারের ধরন অনুযায়ী storage class নির্বাচন করো এবং pricing calculator ব্যবহার করে প্রাক্কলন করো। আশা করছি এই গাইড তোমাকে S3 ব্যবহার এবং খরচ নিয়ন্ত্রণে সাহায্য করবে।