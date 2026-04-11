# Send and Receive Messages to a Service Bus Topic

## Pointwise No-Loss Summary

1. The video demonstrates sending and receiving messages with Azure Service Bus Topic.
2. It first explains queue vs topic behavior, then performs hands-on implementation in Visual Studio.

## Queue vs Topic (Core Difference)

1. Queue model:
   - each message is delivered to one consumer path.
2. Topic model:
   - one published message can be delivered to multiple consumers through subscriptions.
3. Topic broadcasts to subscriptions.
4. Subscriptions can have filters so each subscription can receive only matching messages.
5. Filter rules are introduced conceptually here and deferred for deeper implementation in the next video.

## Azure Resource Setup

1. Create Resource Group (example used: RG Sydney Dev).
2. Create Service Bus namespace (example naming includes service bus topic + initials).
3. Region: Australia East.
4. Tier: Standard.
5. Create topic named topic.

## Sender App Setup (Visual Studio)

1. Create .NET 7 Console App (example name: Service Bus topic send receive).
2. Install Azure Service Bus package.
3. Use sender sample code (similar structure to queue sender):
   - create ServiceBusClient and sender,
   - set number of messages to 3,
   - use Service Bus connection string,
   - set topic name to topic,
   - create batch and add messages in loop,
   - send batch.
4. Connection string source:
   - Service Bus -> Shared access policies -> Primary connection string.

## First Send Behavior (No Subscription Yet)

1. Run sender app and publish messages.
2. In portal, messages are not retained for subscription consumption because no subscription existed at send time.
3. Create subscription named S1 under topic.
4. Re-run sender app to publish messages again after subscription exists.

## Receiver App Setup (Visual Studio)

1. Create second .NET 7 Console App (example name: Topic Receiver).
2. Install Azure Service Bus package in receiver project.
3. Use receiver sample code (similar to queue receiver):
   - create ServiceBusClient and processor,
   - set connection string,
   - set topic name topic,
   - set subscription name S1,
   - define message handler (prints content),
   - define error handler (prints exception),
   - attach handlers,
   - start async processing.

## Receiver Execution and Validation

1. Run receiver app.
2. Receiver reads messages from subscription S1.
3. Portal shows subscription queue has no remaining active messages after consumption.
4. Metrics/graphs show incoming/outgoing requests and related counts.

## Overall Takeaway

1. Topics enable pub-sub messaging through subscriptions.
2. Messages must be published after subscriptions exist if subscribers are expected to receive them.
3. Sender/receiver coding pattern is nearly identical to queue scenario, with topic + subscription identifiers added on receiver side.

## Next-Step Context Mentioned

1. Next video will cover subscription filter rules to route specific messages to specific subscriptions.

## Cleanup Mentioned

1. Delete Resource Group at end.
