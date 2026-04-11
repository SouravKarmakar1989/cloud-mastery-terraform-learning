# Learning the Amazon S3 Bucket Defaults

## Pointwise No-Loss Summary

1. New S3 buckets include key security defaults.
2. Two defaults highlighted:
   - Block Public Access,
   - default server-side encryption.

## Block Public Access Context

1. Historical misconfigurations exposed sensitive data through unintentionally public buckets/objects.
2. AWS improved UX warnings and controls to reduce accidental public exposure.
3. By default, new buckets and related access paths do not allow public access due to block-public-access settings.
4. Settings can be applied at:
   - access point,
   - bucket,
   - account scope.
5. Goal is preventing accidental public data sharing.

## Default Encryption Context

1. New objects uploaded to S3 are automatically encrypted at rest by default.
2. Baseline default is SSE-S3 (S3-managed keys).
3. Bucket default can be changed to SSE-KMS when key-control requirements are needed.
4. If request headers do not specify encryption, bucket default is used.
5. If request headers specify encryption settings, S3 uses those request-level settings.

## Operational Notes

1. Defaults are designed to improve security posture without requiring immediate manual setup.
2. Lesson defers deeper encryption mechanics to later data-protection section.

## Outcome

1. Learner understands why modern S3 defaults are security-first and how defaults influence upload behavior.
