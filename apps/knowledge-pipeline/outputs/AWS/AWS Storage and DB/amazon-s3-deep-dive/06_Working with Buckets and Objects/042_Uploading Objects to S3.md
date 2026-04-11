# Uploading Objects to S3

## Pointwise No-Loss Summary

1. S3 supports multiple upload methods for different scale/use cases.
2. Key naming can include prefixes to organize object listings.

## Prefix and Organization Model

1. Prefixes use forward-slash delimiter in key names.
2. This creates folder-like views in console.
3. S3 remains a flat object namespace; slash is part of object key string, not a true directory hierarchy.

## Upload Methods Covered

1. AWS Management Console:
   - simple UI for one-off/smaller operations.
2. Programmatic methods:
   - SDK,
   - REST API,
   - CLI.
3. Multipart upload:
   - upload one large object in parts,
   - helps with large files, parallelism, and failure recovery.

## Console File-Size Limit Mentioned

1. Console upload max file size highlighted at 160 GB.
2. For larger files, use SDK/API/CLI approaches.

## Upload-Time Object Properties Mentioned

1. Permissions.
2. Storage class.
3. Encryption settings.
4. Additional checksum options.
5. Object tags.
6. Object metadata.

## Outcome

1. Learner understands how to choose upload path, how prefixing works, and which object properties can be set at ingest.
