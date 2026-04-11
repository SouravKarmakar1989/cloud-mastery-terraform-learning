# Handle Service Bus Events with Logic Apps Using Event Grid

## Pointwise No-Loss Summary

1. The video demonstrates event-driven integration from Service Bus to Logic Apps via Event Grid.
2. End-to-end objective:
   - publish messages to Service Bus topic,
   - trigger Logic App through Event Grid,
   - read messages from subscription,
   - send emails per message,
   - complete messages.

## Azure Resource Setup

1. Create Resource Group (example: RG Sydney).
2. Create Service Bus namespace (example naming includes SB Logic App + initials).
3. Region: Australia East.
4. Tier: Premium.
5. Create topic named topic.
6. Create topic subscription named S1.

## Logic App Creation and Initial Workflow Design

1. Create Logic App (example naming includes Logic App Service Bus + initials).
2. Region: Australia East.
3. Tier: Consumption.
4. Open Logic App Designer (new beta designer shown in video).
5. Add Event Grid trigger: when a resource event occurs.
6. Because of designer limitations in beta, several values are entered manually:
   - subscription ID,
   - resource type: Microsoft.ServiceBus/namespaces,
   - resource name.
7. Add trigger parameter suffix filter and set it to topic subscription name pattern used in demo.

## Add Service Bus + Processing Steps in Logic App

1. Add action: get messages from topic subscription (peek-lock mode).
2. Create Service Bus connection using primary connection string from shared access policies.
3. Configure action with:
   - topic = topic,
   - subscription = S1.
4. Add control action: For each.
5. Iterate over body output from previous step.
6. Inside loop add Outlook send-email action:
   - set Outlook connection,
   - send to self in demo,
   - subject includes expression using base64 decode pattern over loop item content,
   - body set to test.
7. Add final Service Bus action inside flow:
   - complete message in topic subscription,
   - topic = topic,
   - subscription = S1,
   - lock token from previous message output.
8. Save workflow.

## Initial Trigger Failure and Root Cause

1. Trigger history shows failure after first save.
2. Root cause shown in run details:
   - missing Event Grid subscription path.
3. Required fix:
   - create Event Grid system topic,
   - create Event Grid event subscription on Service Bus namespace,
   - point endpoint to Logic App workflow URL.

## Event Grid Wiring Fix

1. Create Event Grid system topic:
   - topic type: Service Bus namespaces,
   - select subscription/resource group/service bus namespace,
   - name example: EG-topic,
   - region: Australia East.
2. In Service Bus -> Events, create event subscription:
   - name example: event,
   - schema: Event Grid schema,
   - system topic = newly created topic,
   - endpoint type = webhook,
   - webhook URL = Logic App workflow URL.

## Publish Test Messages from Sample Code

1. Open previously downloaded Service Bus sample solution in VS Code.
2. Navigate to integration sample folder/project (integration v2 path shown).
3. In sender project program file:
   - paste Service Bus connection string,
   - set topic name to topic.
4. Run solution to publish test messages.

## Validation in Azure

1. Service Bus metrics/topic views show messages published.
2. Events metrics show published/matched event counts.
3. Logic App run history shows both failed and successful runs.
4. Failure case analyzed:
   - lock token lost when completing message in one run.
5. Subsequent run handles remaining messages successfully.
6. Topic/subscription active messages eventually return to zero.
7. Email inbox shows generated emails from processed messages.

## Overall Takeaway

1. Event Grid is used as event-routing bridge between Service Bus events and Logic App workflow execution.
2. Logic App can safely process messages using peek-lock and complete-message actions.
3. End-to-end pattern enables low-code event handling and notification workflows on top of Service Bus topics/subscriptions.

## Cleanup Mentioned

1. Delete Resource Group at end.
