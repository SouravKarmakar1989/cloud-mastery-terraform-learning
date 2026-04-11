# Demo - In-Transit Encryption

## Pointwise No-Loss Summary

1. Demo verifies S3 object access over HTTPS and HTTP, then enforces TLS-only access using bucket policy condition.
2. It shows default behavior can allow HTTP unless policy denies insecure transport.

## Steps Demonstrated

1. Open public bucket and confirm object is accessible via HTTPS URL.
2. Modify URL to HTTP and observe object can still be reached before transport policy enforcement.
3. Edit bucket policy to add deny statement for non-secure transport using SecureTransport condition logic.
4. Save policy and retest both URL types.
5. Confirm HTTP requests now fail with access denied, while HTTPS access continues to work.

## Outcome

1. Learner can enforce TLS in transit for S3 access with policy-based deny controls.
