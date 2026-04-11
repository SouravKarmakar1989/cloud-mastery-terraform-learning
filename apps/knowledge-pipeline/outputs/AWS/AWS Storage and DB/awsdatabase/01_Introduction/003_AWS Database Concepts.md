# AWS Database Concepts

## Pointwise No-Loss Summary

1. Lecture introduces foundational database concepts.
2. Core starting point is structured data and schema-driven modeling.
3. Lecture contrasts relational databases with non-relational (NoSQL) databases.

## Structured Data

1. Structured data is highly organized and stored in an orderly format.
2. It follows a schema.
3. Example shown uses book records with fixed attributes:
   - title,
   - author,
   - language,
   - publication year.

## Relational Database Basics

1. Relational databases store entities in rows and attributes in columns.
2. Each row represents one entity (example: one book).
3. Each column represents one attribute of that entity.
4. All rows must fit the same schema.

## Relational Engines Mentioned

1. Microsoft SQL.
2. Oracle.
3. MySQL.
4. PostgreSQL.
5. Aurora.
6. MariaDB.

## SQL and Table Relationships

1. SQL means Structured Query Language.
2. SQL is not Microsoft-only; it is a broader querying model for relational systems.
3. Relational systems can have multiple related tables.
4. Relationships are formed through keys (example discussed: foreign key to primary key).
5. SQL joins are used to query across related tables.

## Indexing Concept

1. Indexes improve query performance.
2. Primary index concepts are shown.
3. Secondary indexes can also be added.

## Relational vs Non-Relational Framing

1. RDS/Aurora are relational.
2. DynamoDB is non-relational (NoSQL).
3. NoSQL is explained as "not only SQL".

## Semi-Structured Data

1. Semi-structured data is organized but does not fit one strict schema.
2. Different records can have different attribute sets.
3. Example shown compares different product types:
   - laptop fields (like operating system),
   - book fields (like author).
4. This is a fit for document-style/non-relational design patterns.
5. DynamoDB is positioned for high-performance, low-latency, big-data style needs.

## Unstructured Data

1. Unstructured data is not tightly organized into schema-based rows/columns.
2. File-system-like storage is used as analogy.
3. S3-style object storage is referenced as a place where mixed objects may exist without strict schema.

## Key Takeaway

1. Choose relational when strong schema and table relationships are needed.
2. Choose NoSQL patterns for flexible/semi-structured models and scale/performance-oriented workloads.
