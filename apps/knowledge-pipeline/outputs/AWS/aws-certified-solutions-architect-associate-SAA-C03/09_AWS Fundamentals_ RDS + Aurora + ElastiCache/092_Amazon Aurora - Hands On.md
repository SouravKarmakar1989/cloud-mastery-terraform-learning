# Amazon Aurora - Hands On

## Pointwise No-Loss Summary

1. Demo creates Aurora cluster and reviews major deployment settings.
2. Cost warning is emphasized because Aurora is not free-tier in same way as basic RDS demos.

## Creation Flow Highlights

1. Standard create used.
2. Engine selected: Aurora MySQL-compatible.
3. Version chosen from default options (feature filters shown for global DB, parallel query, serverless v2 support).
4. Production template selected to expose full options.
5. Cluster identifier and admin credentials configured.

## Storage/Compute Options Reviewed

1. Storage choice:
   - Aurora Standard,
   - I/O Optimized.
2. Instance class selected from burstable family in demo.
3. Serverless v2 mode explained when supported by version (ACU min/max configuration).

## Availability and Networking

1. Aurora replica enabled to create reader in another AZ.
2. Public access enabled for demo.
3. Security group created.
4. MySQL port used: 3306.

## Endpoints and Scaling Features

1. Cluster exposes writer endpoint and reader endpoint.
2. Instance-level endpoints also exist per node.
3. Read replica auto scaling policy workflow is shown (target metrics, min/max replica range).
4. Cross-region read replica/global DB related feature visibility is shown (instance-class/version prerequisites noted).

## Cleanup Flow

1. Reader instance deleted first.
2. Writer instance deleted next.
3. Cluster deletion then completes.

## Outcome

1. Hands-on demonstrates Aurora cluster-oriented deployment model, endpoint behavior, replica scaling options, and deletion order requirements.
