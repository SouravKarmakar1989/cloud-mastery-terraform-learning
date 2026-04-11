# Handle Service Bus Events with Function App Using Event Grid

## Pointwise No-Loss Summary

1. The video demonstrates handling Service Bus events with Azure Function App.
2. Integration path used:
   - Service Bus emits events,
   - Event Grid captures/routes events,
   - Function App executes event-triggered function.

## Azure Resource Setup

1. Create Resource Group (example: RG Sydney).
2. Create Service Bus namespace (example naming includes SB function app + initials).
3. Tier used: Premium.
4. Create topic named topic.
5. Create topic subscription named S1.

## Sample Solution Preparation

1. Reuse sample code path from prior videos:
   - samples -> dotnet -> Azure.Messaging.ServiceBus -> servicebus integration v2.
2. Open solution in Visual Studio 2022.
3. Update Service Bus connection string in sender/project code:
   - get connection string from Shared Access Policies -> primary connection string.
4. Set topic name in sender to topic.
5. Update Function App project (event-grid receiver) with same Service Bus connection string variable.
6. Build solution and confirm no errors.

## Publish Function App

1. Publish Function App project to Azure (Windows target).
2. Create new publish profile/resources:
   - Resource Group: Sydney,
   - plan: Consumption,
   - region: Australia East,
   - create Application Insights and storage account.
3. First publish configures profile and resources.
4. In demo, function was not visible immediately after first publish.
5. Publish second time; function appears in Function App (event grid trigger function).

## Event Grid Subscription Wiring

1. In Service Bus -> Events, create event subscription.
2. Configure:
   - name example: event,
   - schema: Event Grid schema,
   - topic name for Event Grid subscription,
   - endpoint type: Azure Function.
3. Select target function endpoint:
   - Resource Group (Sydney),
   - Function App production slot,
   - function = event-grid trigger function.
4. Confirm selection and create subscription.

## Trigger Test and Validation

1. Run sender/messages project to publish messages to Service Bus topic.
2. In Service Bus events view, matched-event count increases.
3. Open Function App -> target function -> Monitor.
4. After short delay, successful invocation appears.
5. This confirms Event Grid successfully routed Service Bus event to Function App trigger.

## Overall Takeaway

1. Event Grid acts as the event-routing bridge between Service Bus and Function App.
2. Topic events can trigger Function App workflows without direct polling patterns.
3. Monitor + matched-event metrics provide end-to-end validation for the integration chain.

## Cleanup Mentioned

1. Delete Resource Group at end.
