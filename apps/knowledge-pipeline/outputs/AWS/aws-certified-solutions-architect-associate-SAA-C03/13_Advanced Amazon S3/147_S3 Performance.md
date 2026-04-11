# S3 Performance

## Pointwise No-Loss Summary

1. S3 baseline performance is very high by default and auto-scales.
2. Typical first-byte latency noted around 100-200 ms.
3. Request-rate guidance presented as per-prefix limits:
   - 3,500 PUT/COPY/POST/DELETE requests per second per prefix,
   - 5,500 GET/HEAD requests per second per prefix.
4. There is no limit to number of prefixes in a bucket.

## Prefix Clarification

1. Prefix means key path between bucket root and file name.
2. Different folder-like key paths represent different prefixes.
3. Throughput scales by distributing traffic across prefixes.
4. Example given: spreading reads across four prefixes can reach 22,000 GET/HEAD requests per second.

## Upload Optimization

1. Multi-part upload is recommended for files over 100 MB.
2. Multi-part upload is required for files over 5 GB.
3. Files are split into parts and uploaded in parallel.
4. S3 reassembles parts into final object.
5. Benefit: faster transfer and better bandwidth utilization.

## Transfer Acceleration

1. S3 Transfer Acceleration speeds uploads/downloads using edge locations.
2. Client uploads to nearby edge location over public internet.
3. Data then traverses AWS private backbone to target S3 region.
4. Reduces long-distance public-internet segment.
5. Compatible with multi-part upload.

## Download Optimization

1. S3 byte-range fetches request specific byte intervals of an object.
2. Allows parallel GETs for faster downloads.
3. Improves resilience by retrying smaller failed ranges.
4. Can retrieve only partial data (for example, header bytes) when full object is unnecessary.

## Outcome

1. Lecture covers S3 scaling model and practical acceleration techniques for high-throughput upload/download scenarios.
