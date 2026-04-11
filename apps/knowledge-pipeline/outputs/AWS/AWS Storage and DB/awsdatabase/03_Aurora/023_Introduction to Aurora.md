# Introduction to Aurora

## Pointwise No-Loss Summary

1. Aurora is AWS-native managed relational database service engine family.
2. Aurora supports MySQL-compatible and PostgreSQL-compatible interfaces.
3. Aurora is positioned for high performance and high availability.

## Performance and HA Positioning

1. Lecture cites significant performance improvements versus standard MySQL/Postgres baselines.
2. Automatic failover to replica is typically sub-minute in many scenarios.
3. Supports up to many read replicas (lecture mentions up to 15) with auto scaling behaviors.
4. Storage scales automatically as data grows.
5. Supports Aurora Global Database across regions.

## Core Architecture

1. Cluster has one primary writer instance.
2. Optional reader replicas handle read traffic.
3. Replica instances can be in different AZs.
4. Aurora replicas can participate in failover priority model.

## Cluster Volume Model

1. Aurora uses shared cluster volume across three AZs.
2. Writes from primary are persisted across this distributed storage.
3. Storage is decoupled from compute instances.

## Replica Creation Difference vs RDS

1. Aurora replicas attach to shared cluster volume.
2. No full snapshot-copy bootstrap workflow like classic RDS read replica initialization pattern.
3. Faster scale-out behavior for adding replicas.

## Key Takeaway

1. Aurora combines managed relational compatibility with shared-storage architecture that improves scaling and failover characteristics.
