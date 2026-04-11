# Hands-On: Create a DynamoDB Table with Partition and Sort Keys

## Pointwise No-Loss Summary

1. Demo creates first DynamoDB tables and inserts sample items.
2. It demonstrates both simple primary key and composite primary key models.

## Setup and First Table (Simple Key)

1. Open DynamoDB in target region (Ohio in demo).
2. Create table named books.
3. Set partition key as bookId (string).
4. No sort key used for first table.
5. Customize settings:
   - table class: Standard,
   - capacity mode: Provisioned,
   - autoscaling disabled,
   - low read/write unit values (free-tier-friendly demo settings).
6. Create table.

## Insert Items in Books Table

1. Add first item with unique partition key.
2. Add additional attributes (for example title/author/pages) as needed.
3. Attempt duplicate partition key insertion is rejected.
4. Using new unique partition key succeeds.
5. Demonstrates uniqueness requirement for simple partition-key table.

## Second Table (Composite Key)

1. Create table named bookReviews.
2. Set partition key as bookId.
3. Set sort key as reviewId.
4. Use similar table settings as first table.
5. Create table.

## Insert Items in BookReviews Table

1. Insert item with bookId + reviewId plus review attributes.
2. Insert second review with same bookId but different reviewId.
3. This succeeds because uniqueness is evaluated on combined key.
4. Add records for additional books to show grouping capability.

## Key Learning Outcome

1. Simple key tables require unique partition key per item.
2. Composite key tables allow multiple related items per partition while preserving uniqueness via sort key.
3. DynamoDB item attributes remain flexible (schemaless beyond key attributes).
