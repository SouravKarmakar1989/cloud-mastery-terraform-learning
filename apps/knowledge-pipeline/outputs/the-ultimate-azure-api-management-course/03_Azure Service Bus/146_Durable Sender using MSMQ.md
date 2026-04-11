# Durable Sender Using MSMQ and Azure Service Bus

## Pointwise No-Loss Summary

1. The video demonstrates a durable-sender pattern combining local MSMQ and Azure Service Bus.
2. Key goal is resilience against temporary network/connectivity failures.

## Durable Sender Concept

1. Application first writes messages to local Windows Message Queue (MSMQ).
2. Messages are later forwarded from local queue to Azure Service Bus when connectivity is available.
3. If Service Bus is temporarily unreachable, app can still persist outgoing messages locally.
4. Once connectivity returns, backlog is delivered to Service Bus.

## Azure and Local Prerequisites

1. Create Resource Group (example naming includes RG durable + initials).
2. Create Service Bus namespace (example naming includes SB durable + initials).
3. Region: Australia East.
4. Tier: Standard.
5. Ensure Message Queuing (MSMQ) feature is installed on Windows machine.

## Sample Solution Structure

1. Open Durable Sender solution in Visual Studio.
2. Two projects shown:
   - Durable Sender Client,
   - Durable Sender Library.
3. Main walkthrough focuses on client project Program.cs.

## Message Send Patterns Demonstrated

1. Four messages (M1–M4) are sent with different transactional contexts:
   - M1: sent outside transaction,
   - M2: sent within local transaction,
   - M3 and M4: sent within distributed transaction.
2. Sample then loops to process/retrieve forwarded messages.

## Configuration in Code

1. Copy Service Bus connection string from namespace shared access policies.
2. Set connection string in sample variable.
3. In Service Bus, create two queues used by sample:
   - basicqueue/basic queue,
   - duplicate queue (as named in demo).

## Runtime Observation Flow

1. Run project.
2. In local MSMQ management view, local queues appear and contain sent messages.
3. Continue execution to establish Service Bus connection and forward messages.
4. In Azure portal queue metrics/explorer:
   - messages appear in target queue,
   - content reflects sent IDs (M1, M2 first, then M3, M4 in later retrieval flow).
5. Retrieval output confirms all four messages processed with original transactional context distinctions.

## Overall Takeaway

1. MSMQ + Service Bus durable-sender pattern buffers outbound messages locally during outages.
2. This reduces message-loss risk from transient connectivity failures.
3. Pattern supports mixed transaction modes while preserving eventual forward delivery to Service Bus.

## Cleanup Mentioned

1. Delete Resource Group at end.
