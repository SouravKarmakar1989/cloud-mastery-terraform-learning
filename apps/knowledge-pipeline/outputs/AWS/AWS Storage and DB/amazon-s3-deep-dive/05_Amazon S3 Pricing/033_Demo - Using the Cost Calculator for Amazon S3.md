# Demo - Using the Cost Calculator for Amazon S3

## Pointwise No-Loss Summary

1. Demo uses AWS Pricing Calculator (calculator.aws) to estimate S3 monthly/yearly costs.
2. Workflow demonstrates adding S3 service estimates and adjusting workload parameters.

## Demo Steps Shown

1. Open calculator.aws.
2. Click Create estimate.
3. Search services and add Amazon S3 configuration.
4. Enter estimate description and region.
5. Select storage class (first example uses S3 Standard).
6. Enter storage amount (example: 60 TB per month).
7. Optionally configure request assumptions:
   - object size,
   - PUT/COPY/POST usage,
   - GET/SELECT activity,
   - transfer assumptions.
8. Save and view summary.

## Example Output Observations

1. For 60 TB S3 Standard example, calculator returns monthly/yearly estimate values in summary.
2. Demo then adds second S3 estimate for Glacier Deep Archive workload (example: 100 TB).
3. Combined summary shows separate line items and updated total annual/monthly estimate.

## Guidance Reiterated in Demo

1. Calculator provides estimate, not exact bill.
2. Accuracy depends on quality of assumptions entered:
   - request rates,
   - transfer profile,
   - object size characteristics,
   - region and class choices.

## Outcome

1. Learner can build practical S3 cost projections with multiple workload scenarios in AWS Pricing Calculator.
