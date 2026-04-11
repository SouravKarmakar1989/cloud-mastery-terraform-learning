# Send and Receive Messages to a Service Bus Queue

## Pointwise No-Loss Summary

1. The video demonstrates end-to-end queue messaging with Azure Service Bus:
   - create Service Bus namespace/resource,
   - create queue,
   - send messages from one console app,
   - receive messages from another console app.

## Azure Resource Setup in Portal

1. Create Azure Service Bus resource in existing Resource Group (Sydney Resource Group in demo).
2. Naming example includes Azure Service Bus queue + initials.
3. Region used: Australia East.
4. Tier used: Standard.
5. After resource creation, create queue named queue.

## Sender App Setup (Visual Studio)

1. Create new .NET 7 Console App (example name: Azure Service Bus Queue).
2. Install Azure Service Bus NuGet package from documentation.
3. Use sender sample code from docs and walk through key parts:
   - create ServiceBusClient,
   - create sender object,
   - set number of messages to send (3 in demo),
   - configure client options to AmqpWebSockets,
   - provide Service Bus connection string,
   - set queue name to queue.
4. Connection string source in portal:
   - Service Bus -> Shared access policies -> RootManageSharedAccessKey -> Primary connection string.
5. Code creates a message batch, adds 3 messages, and sends batch in one operation.

## Sender Execution and Validation

1. Run sender project.
2. Console confirms batch of 3 messages published.
3. In portal queue metrics, active message count becomes 3.

## Receiver App Setup (Visual Studio)

1. Create second .NET 7 Console App (example name: Service Bus Queue Receiver).
2. Install Azure Service Bus package in receiver project.
3. Use receiver sample code from docs and walk through key parts:
   - create ServiceBusClient,
   - create processor,
   - set AmqpWebSockets client option,
   - provide same Service Bus connection details,
   - target queue name queue,
   - define message handler (prints message content),
   - define error handler (prints exception details),
   - attach handlers to processor,
   - start async processing.

## Receiver Execution and Validation

1. Set receiver app as startup project and run.
2. Receiver prints all 3 queued messages.
3. Portal refresh shows no active messages remaining.
4. Queue metrics show incoming 3 and outgoing 3.

## Overall Takeaway

1. Azure Service Bus queue enables straightforward producer/consumer integration.
2. Sender/receiver patterns in .NET use ServiceBusClient, sender/processor, and handlers.
3. Portal metrics and active message counts provide quick verification for both publish and consume steps.

## Cleanup Mentioned

1. Delete Resource Group at end to remove created resources.
