# What is Azure Functions App?

## Pointwise No-Loss Summary

1. Azure Functions App is one of Azure's serverless solutions.
2. It is designed around three practical benefits:
   - write less code,
   - maintain less infrastructure,
   - pay less money.
3. The underlying infrastructure and servers are fully managed by Azure.
4. This allows developers to focus mainly on writing and hosting code instead of managing servers.
5. The result is higher productivity and better focus on business requirements.

## Supported Languages Mentioned

1. C#
2. Java
3. JavaScript
4. PowerShell
5. Python
6. Golang
7. Other languages are also supported.
8. Users can choose their preferred language when creating a Function App.

## Capabilities and Use Cases Discussed

1. Process file uploads from Blob Storage.
   - One system generates documents or data files.
   - Those files are placed in Blob Storage.
   - A Function App can trigger whenever a new file is added.
   - The Function App can process the data and move it to another system.

2. Handle real-time stream or event processing.
   - A source such as stock market systems, IoT devices, or wearables produces large volumes of data.
   - That data is ingested into Event Hub.
   - A Function App can trigger from incoming Event Hub data.
   - It can process the stream and move results into Cosmos DB.
   - The processed data can then be used for dashboard visualizations.

3. Support machine learning and AI processing.
   - A machine learning algorithm generates classification requests.
   - These requests are placed into a queue.
   - A Function App can trigger from queue messages.
   - It performs the required processing and generates classification results.

4. Run scheduled tasks.
   - A database may need periodic cleansing or de-duplication.
   - A Function App can be scheduled to run every 15 minutes or at another interval.
   - It can clean data and remove duplicates.
   - The example given is preventing multiple communications from being sent to the same customer.

5. Build scalable web API architectures.
   - A Function App can listen to HTTP endpoints.
   - Customers send requests to the HTTP endpoint.
   - The Function App processes the request and generates the output.
   - This makes it suitable for scalable API-based solutions.

6. Implement function chaining.
   - Multiple Function Apps can participate in one end-to-end process.
   - Each Function App handles one part of the workflow.
   - The next Function App executes only after the previous one finishes.
   - The example used is cash withdrawal from a bank.
   - Example stages mentioned:
     - identity verification,
     - balance check,
     - cash withdrawal.

7. Implement fan-out and fan-in workflows.
   - A customer request can trigger multiple Function Apps in parallel.
   - The example is travel booking.
   - Separate Function Apps handle:
     - flight booking,
     - hotel booking,
     - car booking.
   - The results are then collected back into one Function App.
   - That final Function App determines the combined outcome of all parallel tasks.

8. Aggregate and correlate events.
   - Function Apps can act as aggregators.
   - They can receive separate events from different channels.
   - They can correlate those events into a unified processing flow.

9. Monitor long-running processes and update customers.
   - Function Apps can monitor the execution state of a long-running workflow.
   - They can provide customers with updates about results or progress.

10. Implement asynchronous HTTP APIs behind an API gateway.
   - A Function App can sit behind an API gateway such as API Management.
   - The API gateway receives the HTTP request.
   - The request is passed to the Function App.
   - The Function App performs a long-running operation.
   - The result is returned back through API Management.
   - This is a standard pattern for implementing asynchronous HTTP APIs.

11. Collect human input and approvals.
   - Function Apps can support workflows that require human intervention.
   - The example given is manager approval for an expense report before a purchase proceeds.

12. React to database changes and send notifications.
   - A Function App can trigger based on changes happening in a database.
   - It can then send notifications to the appropriate customer.

13. Process messages from Azure Service Bus.
   - Messages arrive in an Azure Service Bus queue.
   - Those messages may come from a web application or a third-party system.
   - A Function App can trigger whenever a new message is placed in the queue.
   - It processes the request and updates data in Cosmos DB.

## Overall Takeaway

1. These are common and practical Azure Functions App scenarios, not an exhaustive list.
2. Azure Functions App supports a broader range of integration, automation, orchestration, and event-driven patterns than the examples listed here.
3. The main idea is that Azure Functions App is a flexible serverless execution platform that can respond to events, HTTP calls, schedules, queues, streams, and workflow steps.