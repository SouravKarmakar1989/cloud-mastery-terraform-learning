# Message Browsing (Peeking) in Azure Service Bus

## Pointwise No-Loss Summary

1. The video explains message browsing/peeking in Azure Service Bus.
2. Peeking is used to enumerate messages for diagnostics/debugging without removing them from queue/subscription.

## Demo Setup

1. Create Resource Group (example: RG peeking).
2. Create Service Bus namespace (example naming includes SB peeking + initials).
3. Region: Australia East.
4. Tier: Standard.
5. Open message-browse sample project in Visual Studio.
6. Sample behavior:
   - send sample messages to queue,
   - run peek operation,
   - print metadata/details for browsed messages.

## Queue and Connection Configuration

1. Get Service Bus primary connection string from Shared Access Policies.
2. Set connection string in sample project variable.
3. Create queue required by sample (basicqueue/basic queue naming in demo).
4. Run project.

## Observed Behavior

1. Sample sends 10 messages.
2. Peek operation returns details for those messages.
3. Running sample multiple times increases queue message count accordingly.
4. Key behavior: peek does not dequeue/remove messages.
5. Messages remain in queue after peek.

## What Peek Includes (as Discussed)

1. Active messages: included.
2. Dead-letter messages: not included in normal queue/subscription peek.
3. Locked messages: included.
4. Scheduled messages:
   - included for queues,
   - not included for subscriptions (as stated in video).
5. Expired messages: may appear depending on state and cleanup timing.

## Dead-Letter Peek Note

1. To browse dead-letter messages, perform peek directly on dead-letter queue path.
2. This is highlighted as a separate operation and covered further in dead-letter lesson.

## Expired Message Nuance

1. Expired messages are eventually cleaned via background cleanup/garbage collection.
2. Cleanup is not always immediate at expiry instant.
3. Therefore, peek may temporarily show expired messages.
4. Important clarification:
   - seeing expired messages in peek does not mean they are retrievable by normal receive operations.

## Locked Message Nuance

1. Peek can show messages currently locked by another receiver.
2. Peek does not expose the lock state details needed for processing.

## Peek API Behavior and Ordering

1. Peek API is available for queues, subscriptions, and dead-letter queues.
2. Messages are returned by sequence-number order (lowest to highest available).
3. This is enqueue sequence order, not necessarily retrieval chronology by consumers.
4. You can provide starting sequence number to control peek start point.
5. Repeated peek calls can continue enumeration across additional messages.

## Overall Takeaway

1. Peeking is a safe non-destructive inspection tool for Service Bus message diagnostics.
2. It is useful for understanding queue/subscription state without affecting message processing flow.
3. Correct interpretation requires awareness of inclusion rules (active/locked/expired/scheduled/dead-letter).

## Cleanup Mentioned

1. Delete Resource Group at end.
