# Atomic Transactions in Azure Service Bus

## Pointwise No-Loss Summary

1. The video demonstrates atomic transaction workflow across multiple Service Bus entities.
2. Objective is to coordinate multi-step operations with commit/compensation behavior.

## Azure Setup

1. Create Resource Group (example: RG transactions).
2. Create Service Bus namespace (example naming includes SB transaction + initials).
3. Region: Australia East.
4. Tier: Standard.

## Sample Project Structure (Visual Studio)

1. Open atomic-transactions sample under error/transaction handling section.
2. Project includes multiple files beyond standard main/program:
   - saga task manager,
   - travel booking handler,
   - orchestration/setup code.
3. Saga/task logic coordinates step progression and next-queue routing.
4. Travel booking handler includes operations such as:
   - flight booking,
   - hotel booking,
   - car booking,
   - corresponding cancellation/compensation handlers.

## Transactional Workflow Concept

1. Workflow models a multi-step travel booking transaction.
2. Booking steps (car/hotel/flight) are coordinated under transactional scope.
3. On success:
   - operations commit and proceed to result path.
4. On failure in any step:
   - compensation/cancellation path executes,
   - overall workflow is canceled/rolled back logically across related queues.

## Queue Chaining/Routing in Code

1. Program defines queue names for:
   - input/start,
   - step handlers,
   - result output,
   - compensator/cancel paths.
2. Each handler sends next-step message to downstream queue.
3. Failure routing sends execution to corresponding cancel queue.
4. Flight booking shown as aggregation/finalization point in explained flow.

## Connection and Execution Setup

1. Copy Service Bus connection string from Shared Access Policies.
2. Set connection string values in sample configuration variables.
3. Set breakpoints in program flow to inspect staged execution.

## Runtime Stages Demonstrated

1. Stage 1:
   - create required queues programmatically in Service Bus.
2. Portal verification:
   - multiple queues appear (booking + cancellation + result/input queues).
3. Stage 2:
   - run transactional booking flow.
4. Portal verification:
   - message counts appear across multiple queues as workflow executes.
5. Stage 3:
   - cleanup/removal of created queues as part of sample flow.

## Console/Execution Observations

1. Console shows sequence of car/hotel/flight booking operations and payload handling.
2. Data is distributed across multiple queues per orchestration design.
3. Transaction scope controls coordinated completion/compensation behavior.

## Overall Takeaway

1. Atomic transaction use in Service Bus is shown as multi-entity workflow control, not just single-queue send/receive.
2. Saga-style orchestration enables reliable commit/compensation across distributed queue-based steps.
3. This pattern is useful for complex business processes requiring coordinated success/failure handling.

## Cleanup Mentioned

1. Delete Resource Group at end.
