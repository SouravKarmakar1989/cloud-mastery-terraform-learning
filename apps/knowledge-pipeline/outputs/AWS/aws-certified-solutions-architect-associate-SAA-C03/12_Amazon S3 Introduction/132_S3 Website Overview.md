# S3 Website Overview

## Pointwise No-Loss Summary

1. Amazon S3 can host static websites and make them internet-accessible.
2. Website endpoint URL depends on AWS region format.
3. Two similar endpoint patterns are shown (difference is dash vs dot in regional URL structure).

## Static Website Hosting Model

1. An S3 bucket contains website files (for example HTML and images).
2. Bucket is configured for website hosting.
3. Users access site through S3 website endpoint URL.

## Public Access Requirement

1. Static website access requires public read permissions on bucket objects.
2. If website returns 403 Forbidden after setup, bucket is not public.
3. Fix is to attach an S3 bucket policy that allows public access/read.

## Outcome

1. Lecture connects prior bucket policy security topic to static website hosting prerequisites before hands-on implementation.
