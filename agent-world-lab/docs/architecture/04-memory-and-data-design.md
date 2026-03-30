# Memory and Data Design

## Memory abstractions

- Working memory: request-scoped transient context
- Session memory: thread/session state store abstraction
- Long-term memory: durable store abstraction
- Knowledge memory: retrieval abstraction for documents/chunks

## First-pass persistence defaults

- Long-term memory: Azure Table Storage
- Document/object storage: Azure Blob Storage
- Approvals: dedicated table/collection separate from audit logs
- Audit logs: dedicated immutable-style append model table/collection

## Explicit non-goal in first pass

- Redis is excluded by design to minimize cost and moving parts

## Portability model

Data and memory interfaces remain cloud-agnostic so adapters can map to:

- AWS DynamoDB + S3
- GCP Firestore + Cloud Storage

without changing core backend abstractions.
