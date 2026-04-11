# Traditional Database Architecture with Relational Databases

## Pointwise No-Loss Summary

1. Lecture introduces classic three-layer app pattern before DynamoDB deep dive.
2. Relational DB model is presented as strong fit for many consistency-driven workloads.

## Traditional Layered Pattern

1. Client layer:
   - users/apps send requests.
2. Application layer:
   - business logic (auth, pricing, order flow, etc.),
   - often EC2/Lambda behind load balancer on AWS.
3. Database layer:
   - RDS relational engines (MySQL/Postgres/Oracle etc.) store durable business data.

## Why Relational Works Well in Many Cases

1. SQL querying power.
2. Structured schema model.
3. Constraints/integrity controls.
4. Strong fit for systems like:
   - financial/transaction-heavy consistency scenarios,
   - inventory systems with table relationships/joins.

## Limitation Context

1. At very large scale and rapid growth, traditional relational patterns can face scaling friction.
2. This motivates NoSQL approaches introduced next.
