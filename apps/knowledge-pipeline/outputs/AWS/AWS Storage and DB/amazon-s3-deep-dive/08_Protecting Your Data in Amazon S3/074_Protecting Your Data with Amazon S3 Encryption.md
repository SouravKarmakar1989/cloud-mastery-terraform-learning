# Protecting Your Data with Amazon S3 Encryption

## Pointwise No-Loss Summary

1. Encryption is framed as foundational data-protection control for modern cloud workloads.
2. Lesson distinguishes three encryption states/locations in data flow:
   - client-side before upload,
   - in-transit during transfer,
   - server-side at rest in S3.

## Encryption Layers Explained

1. Client-side encryption:
   - data encrypted before reaching AWS service endpoint.
2. In-transit encryption:
   - TLS protects data moving between client and S3.
3. At-rest/server-side encryption:
   - S3 encrypts persisted object content using managed keying model.

## Practical Framing

1. Different organizations choose different combinations based on compliance, control, and operational simplicity.
2. Encryption strategy should be intentional across full data lifecycle, not only at storage endpoint.

## Outcome

1. Learner gets clear conceptual map of where encryption can be applied and why layered encryption choices matter.
