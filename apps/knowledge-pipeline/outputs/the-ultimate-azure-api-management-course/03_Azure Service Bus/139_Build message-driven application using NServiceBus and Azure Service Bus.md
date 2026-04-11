# Build Message-Driven Application Using NServiceBus and Azure Service Bus

## Pointwise No-Loss Summary

1. The video demonstrates building a message-driven app using NServiceBus with Azure Service Bus.
2. NServiceBus is introduced as a framework (by Particular) that abstracts infrastructure plumbing so focus stays on business logic.

## Azure Setup

1. Create Resource Group (example: RG NServiceBus).
2. Create Service Bus namespace (example naming includes SB NServiceBus + initials).
3. Region: Australia East.
4. Tier: Standard.
5. Video note: Standard is the minimum tier to use for this NServiceBus scenario.

## Sample Solution Setup

1. Download sample project from docs (version 7 sample in video).
2. Open solution in Visual Studio 2022.
3. Solution contains three projects:
   - Sender (console app),
   - Receiver (console app),
   - Shared (contracts and NServiceBus references).
4. Update Service Bus connection string in sender appsettings.
5. Update Service Bus connection string in receiver appsettings.
6. Connection string source: Service Bus -> Shared Access Policies -> namespace connection string.

## Shared Contracts Explained

1. Shared project defines message contracts.
2. Ping class:
   - message sent from sender to receiver,
   - implements command interface.
3. Pong class:
   - acknowledgement message,
   - implements message interface.

## Sender Project Flow

1. Program defines host and logging.
2. Endpoint configured as sender.
3. Transport configured with Azure Service Bus connection string.
4. Routing configured:
   - messages of type Ping routed to receiver endpoint.
5. Installers enabled to provision required topology (queues/entities).
6. Worker/session usage allows sending outside a handler context.

## Receiver Project Flow

1. Similar host/logging setup.
2. Endpoint configured as receiver.
3. Transport configured with Azure Service Bus connection string.
4. No explicit routing section needed for receiver-only role.
5. Installers enabled for required queue setup.

## Message Handlers Explained

1. Ping handler implements handle-message interface.
2. Handle method receives message + context.
3. Context provides operations like reply/publish/etc.
4. Handler logs and sends acknowledgement (Pong).
5. Pong handler similarly handles Pong message type.

## Run and Observe Baseline Messaging

1. Configure startup projects so sender and receiver start together.
2. Run solution.
3. Two consoles open:
   - sender keeps sending,
   - receiver keeps receiving.

## Resiliency Configuration Demonstrated

1. Add recoverability configuration from docs to sender endpoint setup.
2. Configure two retry modes:
   - immediate retries,
   - delayed retries (with configurable count/time increase).
3. Delayed retry rationale example: transient issues like DB deadlock may recover over time.

## Failure Simulation and Retry Observation

1. In receiver Ping handler, uncomment line that throws errors (forced failure path).
2. Re-run solution.
3. Stop sender after several messages; receiver continues retry workflow.
4. Console output shows:
   - immediate retries,
   - scheduled delayed retries.
5. Demonstrates how retries increase resilience for transient and operational failures.

## Overall Takeaway

1. NServiceBus + Azure Service Bus provides a structured message-driven architecture with clear endpoint/contract separation.
2. Built-in recoverability settings (immediate + delayed retries) are crucial for resilient distributed processing.
3. Designing for failure (network, DB, API, etc.) is mandatory in production messaging systems.

## Cleanup Mentioned

1. Delete Resource Group at end.
