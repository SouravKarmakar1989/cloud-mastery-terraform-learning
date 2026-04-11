# Demo - Working with Amazon S3 Storage Classes

## Pointwise No-Loss Summary

1. Demo shows two practical operations:
   - changing storage class for existing objects,
   - selecting storage class at upload time for new objects.

## Environment and Starting State

1. Instructor opens S3 bucket (example: my-data-lookup-bucket-BC).
2. Existing monthly PDF files are currently in Standard class.
3. Scenario: older reports are retained but rarely accessed, so class should be changed to lower-cost tier.

## Updating Existing Objects

1. Select multiple objects in bucket.
2. Use Actions -> Edit storage class.
3. Choose new class (demo uses One Zone-IA for recreatable reports).
4. Save changes.
5. Verify class column now reflects updated storage class.

## Choosing Class During Upload

1. Click Upload.
2. Add new files (example: July/August reports).
3. In upload Properties, choose storage class before upload.
4. Demo chooses Intelligent-Tiering for newly uploaded files.
5. Complete upload and verify resulting objects display chosen class.

## Key Takeaways from Demo

1. Storage class can be changed manually for existing objects.
2. Storage class can be set at ingestion for new objects.
3. Additional automation options (for later lessons) include lifecycle policies and Intelligent-Tiering movement.

## Outcome

1. Learner can manually manage class assignment both post-upload and pre-upload in S3 console.
