# Lambda Container Images

## Pointwise No-Loss Summary

1. Lambda supports deployment as container images stored in ECR.
2. Image size support goes up to large limits (lecture highlights up to 10 GB).
3. Not every Docker image is valid; base image must implement Lambda Runtime API.

## Why Container Images for Lambda

1. Package code, dependencies, and supporting assets in a single image workflow.
2. Useful for complex or heavy dependency sets.
3. Aligns with container-centric CI/CD practices used across services.

## Runtime Requirement

1. Base image must implement Lambda Runtime API.
2. AWS provides language-specific base images (examples: Python, Node.js, Java, .NET, Go, Ruby).
3. Custom base images are possible if Runtime API is implemented.

## Local Testing Note

1. Lambda Runtime Interface Emulator can be used for local containerized Lambda testing workflows.

## Example Image Build Flow

1. Start from AWS Lambda base image.
2. Copy app code/dependency descriptors.
3. Install dependencies.
4. Define handler command.
5. Push resulting image to ECR and configure Lambda to use it.

## Best Practices Mentioned

1. Prefer AWS-provided base images (Amazon Linux 2 lineage and Lambda caching benefits).
2. Use multi-stage Docker builds to reduce final image size.
3. Order Docker layers from stable to frequently changing components for build/cache efficiency.
4. Reuse repositories/layer strategy to reduce duplicate large-layer storage overhead in ECR.

## Key Use Case

1. Large-function packaging scenarios where zip/layer approach is less convenient.

## Overall Takeaway

1. Lambda container images provide flexibility and unified container delivery, while still requiring Lambda-compatible runtime semantics.
