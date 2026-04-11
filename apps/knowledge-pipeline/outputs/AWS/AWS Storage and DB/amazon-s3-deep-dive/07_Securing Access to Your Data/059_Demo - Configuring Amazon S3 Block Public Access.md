# Demo - Configuring Amazon S3 Block Public Access

## Pointwise No-Loss Summary

1. Demo shows Block Public Access behavior at both account and bucket scopes.
2. It demonstrates precedence and practical impact on bucket-policy changes.

## Account-Level Demonstration

1. Open S3 account-level Block Public Access settings.
2. Enable block-all mode.
3. This applies to all buckets in the account.

## Bucket-Level Demonstration

1. Open specific bucket permissions and edit bucket-level BPA.
2. Even if bucket-level settings are relaxed, account-level block settings still govern/override effective public behavior.

## Policy Conflict Demonstration

1. Attempt to save bucket policy that would allow public access while account-level BPA is enabled.
2. Console returns policy-save rejection due to BPA conflict.

## Additional Validation Path

1. Disable account-level BPA, then adjust bucket-level controls.
2. Apply public-access policy and test object URL behavior.
3. Demonstration shows that other settings (for example requester-pays or encryption/signature requirements) can also influence access outcomes.
4. Re-enabling BPA restores public-block posture and access-denied behavior for public URL test.

## Outcome

1. Learner sees real precedence order and understands BPA as enforcement layer above permissive bucket policy attempts.
