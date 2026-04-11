# Duplicate Detection in Azure Service Bus

## Pointwise No-Loss Summary

1. The video explains why duplicate detection matters in Service Bus queues/topics.
2. Duplicate messages can happen in real systems due to crashes, retries, and uncertain send acknowledgements.

## Why Duplicates Happen (Examples Mentioned)

1. App sends message, then crashes immediately.
2. App restarts and sends same message again.
3. Client/network error scenario:
   - message may have been sent,
   - sender does not receive acknowledgement,
   - sender retries and duplicates are introduced.

## Tier Requirement

1. Basic tier does not support duplicate detection.
2. Standard tier (or above) is required.

## Demo Setup

1. Create Resource Group (example: RG Duplicate Detection).
2. Create Service Bus namespace (example naming includes SB duplicate detection + initials).
3. Region: Australia East.
4. Tier: Standard.
5. Open duplicate-detection sample project in Visual Studio.
6. Sample sends same message ID twice to same queue.

## Test 1: Duplicate Detection Disabled

1. Create queue with duplicate detection disabled.
2. Set queue name and Service Bus connection string in sample code.
3. Run project.
4. Result:
   - send operations succeed,
   - both duplicate messages are received (same message ID appears twice).

## Test 2: Duplicate Detection Enabled

1. Delete/recreate queue (same name) with duplicate detection enabled.
2. Set duplicate detection window to 1 hour in demo.
3. Run same project again.
4. Result:
   - sender still reports successful sends,
   - only one message is received,
   - duplicate message is dropped.

## How Duplicate Detection Works

1. Service Bus tracks message IDs for a configured time window.
2. If same message ID appears again within that window:
   - send call can still be accepted,
   - duplicate message is ignored/dropped.
3. Message ID can be GUID, but recommendation is business-meaningful identifier (for example business process identifiers) for predictable repeatability.

## Partitioning and Uniqueness

1. If partitioning is enabled:
   - uniqueness is determined by message ID + partition key.
2. If partitioning is disabled (default in video context):
   - uniqueness is based on message ID only.

## Scheduled vs Non-Scheduled Duplicate Behavior

1. Scheduled message first, then duplicate non-scheduled message:
   - duplicate is dropped.
2. Non-scheduled first, then duplicate scheduled:
   - duplicate is dropped.
3. Duplicate detection scope includes both scheduled and non-scheduled sends.

## Detection Window Notes

1. Window range mentioned:
   - minimum: 20 seconds,
   - maximum: 7 days.
2. Default referenced in docs as 10 minutes.
3. Larger windows increase duplicate-check work and can impact throughput.
4. Best practice for high-throughput entities:
   - keep detection window as small as practical.

## Overall Takeaway

1. Duplicate detection is essential for reliability in retry-prone distributed systems.
2. It prevents duplicate storage/processing while preserving sender-side send semantics.
3. Throughput-sensitive workloads should tune detection window carefully.

## Cleanup Mentioned

1. Delete Resource Group at end.
