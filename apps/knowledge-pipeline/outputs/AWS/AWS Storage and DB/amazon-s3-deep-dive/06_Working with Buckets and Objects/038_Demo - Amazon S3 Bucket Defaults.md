# Demo - Amazon S3 Bucket Defaults

## Pointwise No-Loss Summary

1. Demo inspects and updates bucket defaults from S3 console.
2. Focus areas:
   - default encryption,
   - block public access settings.

## Default Encryption Demo Steps

1. Open bucket -> Properties.
2. View default encryption (SSE-S3 by default on new buckets).
3. Edit encryption settings.
4. Switch to SSE-KMS.
5. Select existing KMS key (or provide ARN, including cross-account key option).
6. Bucket key option is reviewed as cost optimization to reduce KMS request volume.
7. Save changes and verify KMS-based default encryption is active.

## Block Public Access Demo Steps

1. Open bucket -> Permissions.
2. Edit block public access configuration.
3. Keep strict block settings for private bucket scenario.
4. In separate demo bucket intended for later public policy demos, adjust settings to allow bucket-policy-based public behavior while still restricting ACL-based public patterns.
5. Console warning prompts are shown emphasizing risk of public exposure.

## Verification Behavior

1. Console surfaces clear warnings when public access risk increases.
2. Bucket list and permissions indicators reflect current public-access posture.

## Outcome

1. Learner can confidently inspect/modify security defaults and interpret AWS warning signals before exposing any data.
