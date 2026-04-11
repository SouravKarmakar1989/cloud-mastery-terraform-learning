# DynamoDB API Basics for Cert Prep

## Pointwise No-Loss Summary

1. Demo maps common DynamoDB console actions to underlying API operations.
2. Emphasis is certification-relevant API understanding.

## Scan API

1. Scan reads entire table (optionally filtered).
2. Useful for simple exploration, but expensive/inefficient for large tables.

## PutItem API

1. Creating an item in table maps to PutItem.
2. Inserts new item with specified attributes.

## GetItem API

1. Opening/fetching a specific item maps to GetItem.
2. Retrieves item by key.

## UpdateItem API

1. Editing existing item attributes maps to UpdateItem.
2. Persists partial/full attribute updates.

## Query API

1. Query uses key-based access pattern (partition key, optionally sort-key condition).
2. More efficient than Scan for targeted reads.
3. Sort-key operators support filtered key-condition retrieval patterns.

## BatchWriteItem API

1. Bulk delete/insert style console operations map to BatchWriteItem.
2. Supports grouped write/delete request patterns.
3. Entire table deletion is separate operation (delete table), not batch item workflow.

## Certification Takeaway

1. Understand when each API is used and why key-based Query is preferred over full-table Scan for efficient access patterns.
