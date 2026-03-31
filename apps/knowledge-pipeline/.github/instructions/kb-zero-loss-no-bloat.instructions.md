---
description: "Use when writing or updating any knowledge base markdown domain files. Enforces zero-loss extraction quality while preventing duplicate bloat."
name: "KB Zero-Loss No-Bloat Standards"
applyTo: "Knowledge Base/**/*.md"
---
# KB Writing Standards (All Domains)

## Core Principle
Preserve source knowledge without losing important meaning, while preventing repetitive or low-signal duplication.

## Required Rules
- Keep transcript-backed facts intact; do not replace them with unsupported paraphrases.
- Prefer concise synthesis over repeating similar lines across multiple sections.
- Add new content only when it introduces new service behavior, design implication, or operational trade-off.
- Keep ownership boundaries clear: primary topic owns deep detail, other domains use referrals.
- Avoid large rewrites when targeted additions are sufficient.

## Duplicate Control
- Do not repeat identical insight bullets within the same file.
- If multiple transcript lines express the same idea, consolidate into one canonical insight.
- Keep direct quote-style lines minimal; prioritize distilled architect notes.
- Before adding a section, check whether equivalent coverage already exists in the same file.

## Evidence and Traceability
- Every non-trivial addition must be traceable to transcript evidence.
- Preserve service and concept names exactly when accuracy matters.
- When coverage is partial, state constraints explicitly instead of overclaiming.

## Index and Cross-File Hygiene
- Update master/reverse indexes only when genuinely new concept/service coverage is added.
- Do not inflate index entries with near-synonym duplicates.
- Maintain consistent naming for services and concepts across files.

## Quality Bar Before Finalizing
- No obvious duplicate bullets or duplicated sections.
- New additions are high-signal and domain-relevant.
- Tone remains architecture-focused, not transcript-dump heavy.
- File structure remains consistent with existing KB format.
