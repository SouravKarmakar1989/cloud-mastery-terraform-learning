# Lambda Best Practices

## Pointwise No-Loss Summary

1. Lecture closes section with practical Lambda implementation guidance.
2. Main focus is performance efficiency, configuration hygiene, and operational safety.

## Initialization and Handler Design

1. Move heavy initialization work outside handler.
2. Examples include:
   - database connection setup,
   - AWS SDK/client initialization,
   - loading dependencies/datasets.
3. Goal is to reduce per-invocation handler runtime.

## Configuration Management

1. Use environment variables for values that change by environment.
2. Examples include DB connection strings and S3 bucket names.
3. Avoid hardcoding these values in source code.
4. For sensitive values, use encrypted environment-variable approach with KMS.

## Package Optimization

1. Keep deployment package minimal to runtime necessities.
2. If function becomes too large/complex, split responsibilities.
3. Reuse common dependencies through Lambda layers when appropriate.
4. Stay aware of package-size limits.

## Safety Warning

1. Avoid recursive self-invocation patterns (Lambda calling itself repeatedly).
2. Recursive loops can create runaway cost and operational failures.

## Overall Takeaway

1. Good Lambda design combines lean handlers, externalized config, minimal packages, and safe invocation patterns.
