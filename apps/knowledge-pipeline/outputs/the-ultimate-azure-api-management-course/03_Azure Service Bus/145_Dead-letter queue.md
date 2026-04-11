# Dead-Letter Queue in Azure Service Bus

## Pointwise No-Loss Summary

1. The video explains dead-letter queues (DLQ) in Azure Service Bus.
2. DLQ is described as a sub-queue attached to a parent queue/subscription.
3. You do not create DLQ as an independent entity; it is part of the parent entity.

## Core DLQ Characteristics Mentioned

1. DLQ stores messages that cannot be delivered/processed (poisoned or failed messages).
2. Messages can later be read and optionally resubmitted after issue resolution.
3. Time-to-live is not observed the same way in DLQ path context (as noted in video).
4. DLQ supports peek-lock delivery mode.
5. There is no automatic cleanup; messages remain until explicitly handled.

## Demo Setup

1. Create Resource Group (example: RG dead letter + initials).
2. Create Service Bus namespace (example naming includes SB dead letter + initials).
3. Region: Australia East.
4. Tier: Standard.
5. Open dead-letter sample project in Visual Studio.
6. Set Service Bus connection string values in sample config.
7. Create required queue (basicqueue/basic queue naming in sample).

## Sample Flow in Code

1. Send messages to queue.
2. Repeatedly receive same message to exceed max delivery count.
3. Once max delivery threshold is exceeded, message moves to DLQ.
4. Create DLQ receiver using parent queue path + dead-letter sub-queue path syntax.
5. Read normal queue messages and DLQ messages separately.
6. Output includes marker text for DLQ message handling path (fixing marker in demo).

## Observed Runtime Behavior

1. Max delivery count default shown as 10.
2. Sample intentionally hits/exceeds this count.
3. Message transitions to DLQ after threshold is exceeded.
4. Console output shows:
   - normal queue receives,
   - DLQ receives (with custom marker).

## Message Count Notes (Queue/Subscription/Topic)

1. Message counts are available at queue and subscription levels.
2. Topic-level message count is not equivalent because topic forwards to subscriptions and does not hold delivery backlog the same way.
3. Therefore DLQ/active counts are inspected at queue/subscription paths.

## Reasons Messages Move to DLQ (Covered)

1. System-level reasons/examples mentioned:
   - header size issues,
   - TTL expired path,
   - session ID issues,
   - max transfer hop count exceeded,
   - max delivery count exceeded.
2. Application-level dead-lettering:
   - malformed payload,
   - poisoned/corrupted data,
   - authentication/business validation failures.
3. For app-level dead-lettering, include meaningful reason/description for troubleshooting.

## Max Delivery Count Notes

1. Default max delivery count is 10.
2. Exceeding it sends message to DLQ.
3. Behavior itself cannot be disabled; only threshold can be adjusted.

## TTL and Expiration DLQ Option

1. Queue/subscription setting exists to dead-letter on message expiration.
2. When enabled, expired messages are moved to DLQ.
3. Expiration-related dead-letter reason maps to TTL-expired category.

## Subscription Rule Evaluation Note

1. If SQL filter/rule evaluation on subscription fails, message can be dead-lettered.

## Auto-Forward and Destination Failure Cases

1. Exceeding max auto-forward hops (4) can dead-letter message.
2. Destination disabled/full scenarios can push message to source DLQ.
3. Destination deleted can produce error behavior (404 case noted in video).

## Operational Handling Guidance

1. Use Service Bus Explorer to inspect active vs dead-letter message counts.
2. You can manually move/reprocess messages from DLQ to original flow after fixes.

## Overall Takeaway

1. DLQ is a reliability safety net for failed or poisoned messages.
2. Correct diagnosis requires understanding both system-level and application-level dead-letter reasons.
3. Build explicit reprocessing workflows for DLQ messages to maintain end-to-end delivery integrity.

## Cleanup Mentioned

1. Delete Resource Group at end.
