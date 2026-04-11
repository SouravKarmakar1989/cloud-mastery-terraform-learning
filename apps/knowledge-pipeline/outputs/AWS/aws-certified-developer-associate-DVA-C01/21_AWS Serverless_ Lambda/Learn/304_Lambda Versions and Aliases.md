# Lambda Versions and Aliases

## Pointwise No-Loss Summary

1. Lambda supports immutable published versions and mutable aliases.
2. $LATEST is editable working state.
3. Published versions lock code and configuration.

## Versions

1. Publish action creates numbered immutable version (v1, v2, ...).
2. Immutable means code/config cannot be changed after publish.
3. Each version has its own ARN.
4. Versions provide release checkpoints over time.

## Aliases

1. Alias is a mutable pointer to one or more Lambda versions.
2. Common alias naming pattern:
   - dev,
   - test,
   - prod.
3. Aliases provide stable invoke endpoint while backend version target can change.
4. Alias has its own ARN.

## Traffic Shifting / Canary via Alias Weights

1. Alias can route weighted traffic between versions.
2. Example pattern:
   - most traffic to current stable version,
   - small percentage to candidate version.
3. Enables progressive rollout and validation before full cutover.

## Important Rule

1. Alias points to versions (cannot reference another alias).

## Operational Benefit

1. Triggers/clients can keep invoking stable alias ARN while release teams shift backend version safely.

## Overall Takeaway

1. Versions provide immutable release artifacts; aliases provide controlled routing and deployment flexibility.
