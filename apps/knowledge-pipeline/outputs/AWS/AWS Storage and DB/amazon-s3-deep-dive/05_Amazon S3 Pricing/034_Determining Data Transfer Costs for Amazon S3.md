# Determining Data Transfer Costs for Amazon S3

## Pointwise No-Loss Summary

1. Lesson explains transfer-pricing differences for data entering vs leaving S3.
2. Inbound internet transfer to S3 is free.
3. Outbound transfer from S3 has tiered pricing and path-dependent charges.

## Internet Transfer Model

1. Data transferred into S3 from internet/on-prem/home:
   - no transfer charge.
2. Data transferred out from S3 to internet:
   - first 100 GB per month is free,
   - then tiered per-GB rates apply,
   - larger transfer volumes can get lower per-GB rates in higher tiers.

## Transfers to AWS Services/Regions

1. S3 to CloudFront transfer is called out as free in this lesson context.
2. Inter-region transfer is charged per GB and can vary by region pair.
3. Some regions can be notably more expensive for transfer and ongoing storage.

## Practical Cost Planning Notes

1. Transfer destination matters as much as transfer volume.
2. Regional price differences affect both:
   - one-time transfer cost,
   - recurring storage cost at destination.

## Outcome

1. Learner can include transfer-path and transfer-volume effects when estimating full S3 cost beyond pure storage pricing.
