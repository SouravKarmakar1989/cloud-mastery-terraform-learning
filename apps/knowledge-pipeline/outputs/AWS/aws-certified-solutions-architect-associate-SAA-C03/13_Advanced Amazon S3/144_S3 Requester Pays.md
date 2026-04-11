# S3 Requester Pays

## Pointwise No-Loss Summary

1. S3 Requester Pays can appear as an exam scenario feature.
2. Default billing model without Requester Pays:
   - bucket owner pays storage,
   - bucket owner also pays data transfer/download costs.

## Requester Pays Model

1. Bucket owner continues to pay storage costs.
2. Requester pays network/download transfer costs when downloading objects.
3. Useful when sharing large datasets with other accounts.

## Authentication Requirement

1. Requester cannot be anonymous.
2. Requester must be authenticated so AWS can bill the requester account for transfer usage.

## Outcome

1. Feature shifts download cost burden from owner to authenticated data consumers while keeping storage cost with owner.
