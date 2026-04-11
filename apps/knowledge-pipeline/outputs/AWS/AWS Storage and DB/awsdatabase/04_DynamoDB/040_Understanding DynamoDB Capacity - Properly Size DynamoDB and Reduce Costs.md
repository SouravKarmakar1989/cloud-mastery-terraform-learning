# Understanding DynamoDB Capacity: Properly Size DynamoDB and Reduce Costs

## Pointwise No-Loss Summary

1. DynamoDB capacity planning centers on choosing provisioned vs on-demand mode.
2. Correct choice affects both performance behavior and cost profile.

## Capacity Modes

1. Provisioned mode:
   - define read/write capacity in advance,
   - pay for provisioned throughput,
   - optional autoscaling can adjust provisioned values.
2. On-demand mode:
   - no manual capacity planning,
   - service scales to request traffic automatically,
   - pay per request usage,
   - generally higher unit cost than provisioned.

## Write Capacity Units (WCU)

1. 1 WCU supports 1 write/second for item up to 1 KB.
2. Larger items consume proportionally more WCUs.
3. Item size is rounded up to nearest KB for WCU math.

## Read Capacity Units (RCU)

1. Strongly consistent reads:
   - 1 RCU supports 1 read/second for item up to 4 KB.
2. Eventually consistent reads:
   - 1 RCU supports 2 reads/second for item up to 4 KB.
3. Read-size calculations round up to 4 KB blocks.
4. Strongly consistent reads cost roughly double of eventual for same traffic.

## Throttling and Burst

1. Exceeding provisioned throughput leads to throttling errors after burst allowance is exhausted.
2. Mitigations discussed:
   - exponential backoff/retry,
   - autoscaling,
   - better key design to avoid hot partitions.

## Partition Distribution and Hot Keys

1. DynamoDB distributes load by partition key hashing.
2. Poor key cardinality can overload specific partitions (hot partition issue).
3. Good partition-key design is essential for stable throughput usage.

## Practical Guidance

1. Provisioned suits predictable steady workloads and cost optimization.
2. On-demand suits unpredictable/new workloads and operational simplicity.
3. Capacity mode can be switched with service constraints and quotas over time window.

## Key Takeaway

1. Throughput math + partition-key distribution design are core to DynamoDB performance and cost control.
