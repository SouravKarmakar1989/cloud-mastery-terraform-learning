# Hands-On: Configure DynamoDB Indexes

## Pointwise No-Loss Summary

1. Demo creates table with LSI, inserts data, queries through index, then adds GSI and queries again.
2. Demonstrates how indexes unlock different query dimensions.

## Create Table with LSI

1. Create table (booksDemo in demo) with:
   - partition key,
   - sort key.
2. During table creation, add Local Secondary Index.
3. Configure LSI sort key and projected attributes.
4. Use provisioned capacity settings and create table.

## Insert Sample Items

1. Add multiple book-review items with mixed values.
2. Ensure data supports testing key-based and index-based queries.

## Query Using LSI

1. In Explore items, select LSI for query context.
2. Query by partition key + sort key condition.
3. Apply additional filter expressions as needed.
4. Observe targeted query returns expected subset quickly.

## Add GSI After Table Creation

1. Open table indexes and create new Global Secondary Index.
2. Define new GSI partition/sort key attributes.
3. Configure GSI throughput and projection settings.
4. Wait for index creation readiness.

## Update Items for GSI Attributes

1. Add/ensure attributes used by GSI are present in items.
2. Save updated records.

## Query Using GSI

1. Select GSI in query UI.
2. Query on GSI partition key and optional sort condition.
3. Retrieve results based on alternate key model not available in base table key design.

## Cleanup in Demo

1. Table is deleted at end of demo (with optional backup prompt noted).
2. Deletion protection and IAM controls are noted as safeguards for production contexts.

## Practical Takeaway

1. LSI supports alternate sort patterns within same partition key.
2. GSI supports entirely new access patterns and can be introduced after table creation.
