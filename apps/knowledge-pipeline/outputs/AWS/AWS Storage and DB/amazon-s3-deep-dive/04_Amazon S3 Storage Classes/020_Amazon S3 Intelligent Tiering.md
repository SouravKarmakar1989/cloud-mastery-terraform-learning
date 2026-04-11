# Amazon S3 Intelligent Tiering

## Pointwise No-Loss Summary

1. Intelligent-Tiering is designed for unknown or changing access patterns.
2. It automatically moves objects between internal access tiers based on observed usage.
3. Main objective is cost optimization while preserving performance when objects are actively used.

## Why Use It

1. If access frequency is uncertain over time, Intelligent-Tiering avoids manual class switching.
2. Data can stay in performance-optimized tier when hot, then shift to cheaper tiers when cold.
3. Retrieval charges are highlighted as not applied in the same way as some other classes (as presented in lesson).
4. Durability remains aligned with S3 11-nines model.

## Internal Intelligent-Tiering Levels Mentioned

1. Frequent Access tier.
2. Infrequent Access tier.
3. Archive Access tier.
4. Deep Archive Access tier.

## Behavior Model Explained

1. Frequently accessed data remains in higher-performance tier.
2. As access declines, data moves to lower-cost tiers.
3. When access resumes, data can move back toward higher-performance tier.

## Airline Example Used

1. Flight planning data starts as frequent-access while schedules are actively edited.
2. After publication, data may become infrequent-access.
3. Near departure/arrival operations, data can return to frequent-access due to booking/check-in activity.
4. Post-flight reporting completion, data can age into archive-level tiers.
5. Example emphasizes same data shifting tiers over time solely to match cost vs access behavior.

## Ideal Data Types Mentioned

1. User-generated data with changing relevance over time.
2. Data-lake content with variable query frequency.
3. Log files and other datasets with unpredictable access patterns.

## Outcome

1. Intelligent-Tiering is presented as adaptive, automation-friendly class for balancing performance and storage economics without constant manual lifecycle tuning.
