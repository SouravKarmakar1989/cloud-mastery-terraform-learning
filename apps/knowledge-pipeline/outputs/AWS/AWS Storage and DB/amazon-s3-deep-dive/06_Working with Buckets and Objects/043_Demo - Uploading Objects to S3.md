# Demo - Uploading Objects to S3

## Pointwise No-Loss Summary

1. Demo shows three object-upload methods:
   - console file picker,
   - drag-and-drop,
   - CLI sync.

## Console Upload Demonstration

1. Open target bucket.
2. Use Upload/Add files to select local files.
3. Review upload properties (storage class/defaults).
4. Start upload and monitor per-file progress/success.
5. Verify objects appear in bucket listing.

## Drag-and-Drop Demonstration

1. Drag local file into bucket upload area.
2. Complete upload flow.
3. Verify new object appears in list.

## CLI Sync Demonstration

1. From local directory containing files, run aws s3 sync to bucket URI.
2. Sync uploads files not already present (incremental behavior).
3. Refresh console and verify increased object count.

## Outcome

1. Learner can use UI and CLI approaches to populate buckets and keep local directory content synchronized with S3.
