# S3 Default Encryption

## Pointwise No-Loss Summary

1. Default encryption for buckets is SSE-S3 by default on new buckets/objects.
2. Bucket default encryption can be changed (for example to SSE-KMS).

## Bucket Policy vs Default Encryption

1. Bucket policy can enforce encryption requirements preemptively on PUT requests.
2. Policy can deny uploads when expected encryption headers are missing or incorrect.
3. Example enforcement patterns mentioned:
   - require SSE-KMS header,
   - require SSE-C customer algorithm header.

## Evaluation Order Highlight

1. Bucket policy evaluation occurs before default encryption behavior.

## Outcome

1. Lecture emphasizes that default encryption is baseline, while bucket policy provides strict enforcement control.
