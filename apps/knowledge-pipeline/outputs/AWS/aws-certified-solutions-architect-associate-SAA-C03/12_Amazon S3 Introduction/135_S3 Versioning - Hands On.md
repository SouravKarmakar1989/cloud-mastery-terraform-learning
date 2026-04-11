# S3 Versioning - Hands On

## Pointwise No-Loss Summary

1. Bucket versioning is enabled from Properties -> Bucket versioning.
2. Objective is to demonstrate overwrite history, rollback, and delete-marker behavior.

## Creating a New Version by Re-Upload

1. Initial website page shows "I love coffee".
2. index.html is edited locally to "I REALLY love coffee".
3. Updated index.html is uploaded again to same key.
4. Website refresh confirms updated content is served.

## Viewing Version IDs

1. "Show versions" toggle reveals object version IDs.
2. Objects uploaded before versioning (beach.jpg, coffee.jpg) show version ID null.
3. index.html now shows:
   - older null version (pre-versioning),
   - new generated version ID (post-versioning upload).

## Rollback by Deleting Specific Version

1. With "Show versions" enabled, selected newer version of index.html is deleted.
2. Action is permanent delete for that specific version ID.
3. Website refresh returns content to previous "I love coffee" state.

## Delete Marker Behavior

1. With "Show versions" disabled, coffee.jpg is deleted.
2. This creates a delete marker (logical deletion), not immediate removal of old underlying version.
3. Website/image URL then returns missing object behavior (404).
4. Deleting the delete marker (permanent delete of marker) restores prior coffee.jpg version visibility.
5. Website refresh confirms image is visible again.

## Outcome

1. Hands-on demonstrates both rollback mechanics and difference between:
   - deleting a specific version ID (permanent for that version),
   - deleting current object without version selection (adds delete marker).
