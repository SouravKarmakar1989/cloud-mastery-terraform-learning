# Requester Pays

## Pointwise No-Loss Summary

1. Requester Pays shifts request and data-transfer charges from bucket owner to data requester.
2. Bucket owner still pays for data storage in the bucket.

## Why It Exists

1. Useful when sharing large data volumes with partners/collaborators.
2. Without Requester Pays, owner absorbs repeated download/transfer costs by external consumers.
3. With Requester Pays, requester account is billed for request/transfer operations.

## Billing Split Clarified

1. Bucket owner:
   - storage cost remains owner responsibility.
2. Requesting account:
   - request and transfer charges for its accesses.

## Access Requirement Note

1. Anonymous access is not supported for Requester Pays usage because AWS must identify billable requester identity/account.

## Outcome

1. Learner understands Requester Pays as a cost-distribution mechanism for shared datasets.
