# Subscription Filters in Azure Service Bus Topics

## Pointwise No-Loss Summary

1. The video demonstrates how subscription filters route specific topic messages to specific subscriptions.
2. Hands-on flow uses:
   - one Service Bus topic,
   - three subscriptions,
   - sample code from Microsoft GitHub repository.

## Azure Resource Setup

1. Create Resource Group (example: RG Sydney Dev).
2. Create Service Bus namespace (example naming includes service bus inventory + initials).
3. Region: Australia East.
4. Tier: Standard.
5. Create topic named topic.
6. Create three subscriptions under that topic:
   - S1,
   - S2,
   - S3.

## Sample Project Setup (Visual Studio Code)

1. Use Microsoft docs sample repository containing Service Bus examples.
2. Clone repo.
3. Navigate to sample path for basic send/receive tutorial with filters.
4. Build solution with dotnet build.
5. Navigate to built output path (including netcoreapp3.1 folder in demo).

## Run Sample with Topic and Connection Inputs

1. Execute sample command from docs.
2. Replace placeholders with:
   - topic name = topic,
   - Service Bus connection string from portal shared access policy (primary connection string).
3. Step flow in sample execution:
   - remove default filters on subscriptions,
   - create custom filters,
   - send messages,
   - receive messages.

## Filter Creation and Portal Verification

1. After filter-creation step, portal shows rules added per subscription.
2. Example shown:
   - S1 has multiple rules (for example MyRule1 and MyRule2),
   - S2 and S3 have their own rule sets.
3. Rules use storeId-style criteria to decide which messages match each subscription.

## Message Distribution Behavior

1. Send messages to topic via sample step.
2. Portal shows different active-message counts per subscription after routing.
3. In demo:
   - S1 and S2 receive more messages,
   - S3 receives fewer messages.
4. Reason: each subscription applies different filter criteria.

## Code Walkthrough Highlights

1. Program file defines subscription names and filter dictionary.
2. Main workflow:
   - parse connection string and topic name from command input,
   - remove default filters from subscriptions,
   - add custom rules per subscription,
   - send topic messages,
   - receive from subscriptions.
3. Rule names are generated incrementally (e.g., MyRule + counter).
4. Routing decision is fully determined by filter rules configured on each subscription.

## Receive Step and Final Validation

1. Run receive step (F5 in demo context).
2. Messages are read from each subscription.
3. Refresh portal and verify active messages in subscriptions return to zero after processing.

## Overall Takeaway

1. Topic subscriptions can apply independent filter rules.
2. One published topic stream can be selectively routed to different subscribers.
3. Filtering can be managed in code (sample approach) and adjusted in portal as needed.

## Cleanup Mentioned

1. Delete Resource Group at end.
