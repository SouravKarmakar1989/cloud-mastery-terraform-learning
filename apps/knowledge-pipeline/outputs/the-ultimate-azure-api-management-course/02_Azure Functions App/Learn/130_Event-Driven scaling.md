# Event-Driven Scaling in Azure Functions

## Configuration and Steps Discussed

**Resource Constraints by Plan**:
- **Consumption Plan**: Each function host instance limited to 1.5 GB memory and 1 CPU, shared across all functions in the app. All functions scale in/out simultaneously.
- **Consumption Plan (multi-app note)**: If multiple Function Apps share the same consumption plan, each Function App scales independently from the others.
- **Premium Plans** (EP1/EP2/EP3): Memory and CPU availability determined by chosen tier size. Each function app scales independently even when sharing an app service plan.

**Scale Controller**: The component that determines when to scale in or out based on incoming workload and request volume. Continuously monitors workload and instructs function app to add or remove instances.

**Cold Start Scenario**: Occurs when consumption plan scales to zero instances due to insufficient traffic. When new requests arrive, scale controller must provision a new instance and launch the app, creating latency. Especially critical for HTTP trigger functions where users experience delays.

**Cold Start Prevention**: Deploy to premium or dedicated plans (either app service plan or app service environment) and enable/configure the always-on setting.

**Maximum Instances**: A single instance can handle multiple concurrent requests with no limit on concurrent executions. However, function app can scale only up to the maximum number of instances specified on the plan. Reduce maximum number if throttling is desired.

**Scaling-Out Rates**:
- **HTTP Triggers**: New instances allocated at most once per second
- **Non-HTTP Triggers**: New instances allocated at most once every 30 seconds
- Premium plan enables faster scaling compared to consumption plan

**Target-Based Scaling**: Supported for Service Bus queues/topics, Storage Queues, Event Hubs, and Cosmos DB extensions as an alternative scaling method.

**Scaling-In Process**: Scale controller terminates instances when workload decreases. Performed safely: no new requests sent to terminating instances; existing executions allowed to complete before termination (drain mode).

**Drain Mode Durations**:
- **Consumption Plan**: Up to 10 minutes extended shutdown period
- **Premium Plan**: Can extend up to 60 minutes

**Maximum Scale-Out Limits by Plan**:
- **Consumption Plan**: Default 200 instances maximum
- **Premium Plan**: Default 100 instances maximum
- Can be reduced using Azure CLI command

## Overall Takeaway

Event-driven scaling automatically adjusts function app capacity based on demand through the scale controller, with HTTP triggers scaling faster than non-HTTP. Cold starts are eliminated on premium/dedicated plans with always-on enabled. Fine-tune scaling behavior by setting maximum instance limits and understanding drain mode behavior during scale-in.

---

