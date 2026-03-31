---
description: "Master prompt for all KBs with three modes: delta, full exhaustive (all outputs vs all KBs), and module-wise partial checks; always update-first, create-only-if-needed."
name: "KB Auto-Update on New Transcripts"
argument-hint: "scan_mode=delta|full|module ; new_output_folder=<path> ; module_paths=<comma-separated module folders> ; strictness=high|medium|low ; create_mode=auto|never"
agent: "KB Router Update-First Enricher"
---

# KB Auto-Update on New Transcripts (All KBs)

Run this prompt immediately after downloading transcripts for a new course URL.
It supports:
- **delta scan**: latest/new folder-focused scan
- **full scan**: full-file exhaustive scan across **all transcripts in all folders under `outputs/`** matched against **all KBs under `Knowledge Base/`**
- **module scan**: partial check module-wise for selected output modules

In every mode: update existing KBs first; create a new KB only if no existing KB can own the topic.

By default, scans evaluate **technical transcript files only**. Course-admin and housekeeping lectures are excluded unless the user explicitly asks to include them.

## Quick Commands

- Latest/new folder strict scan:
   `/kb-auto-update-on-new-transcripts scan_mode=delta strictness=high`
- Full exhaustive scan across all outputs and all KBs:
   `/kb-auto-update-on-new-transcripts scan_mode=full strictness=high`
- Module-wise partial scan:
   `/kb-auto-update-on-new-transcripts scan_mode=module module_paths=outputs/aws-certified-cloudops-associate/05_Managing EC2 at Scale - Systems Manager (SSM),outputs/aws-certified-cloudops-associate/16_Monitoring, Auditing and Performance strictness=high`
- No-new-KB mode:
   `/kb-auto-update-on-new-transcripts scan_mode=full strictness=high create_mode=never`
- Target a specific freshly extracted folder:
   `/kb-auto-update-on-new-transcripts scan_mode=delta new_output_folder=outputs/aws-certified-cloudops-associate strictness=high`

---

## Step 0 — Argument Parsing

Parse the user's argument line:

| Argument | Format | Default |
|---|---|---|
| `scan_mode` | `delta` \| `full` \| `module` | `delta` |
| `new_output_folder` | workspace-relative path(s), comma-separated | Last modified folder under `outputs/` |
| `module_paths` | workspace-relative module folders, comma-separated | none |
| `create_mode` | `auto` \| `never` | `auto` |
| `strictness` | `high` \| `medium` \| `low` | `medium` |

Mode behavior:
- `scan_mode=delta`: use `new_output_folder`; if omitted auto-detect latest output folder.
- `scan_mode=full`: ignore `new_output_folder` and scan every `.txt` under `outputs/**`.
- `scan_mode=module`: scan only `module_paths`; if omitted, prompt user to provide at least one module path.

If `scan_mode=delta` and `new_output_folder` is not provided, discover it automatically:
- List all folders under `outputs/`
- Select the one with the most recently modified files
- Confirm the selection before proceeding

### Strictness Definitions
- `high`: any mention of a service, concept, or sub-feature not present verbatim in the KB is a gap
- `medium`: gaps are items clearly missing or covered only with low-signal raw transcript lines (no synthesised bullets)
- `low`: gaps are only items with zero KB coverage at all

### Technical Transcript Eligibility Filter
Ignore low-value housekeeping files by default when deciding whether KBs are "up to date".

Exclude files or folders matching patterns such as:
- introduction / important course information / exam preparation / final section / congratulations / wrap-up
- course introduction / course presentation / about your instructor / important message / do not skip
- exam walkthrough / certification paths / save 50% / checkpoint / congratulations
- section cleanup / cleanup
- generated helper artifacts stored under `outputs/` root (for example reports or helper scripts)

"Up to date" means: all **technical** transcript files in scope are owned or referenced by an existing KB, with missing technical concepts either patched into an existing KB or routed to a newly created KB when no owner exists.

---

## Decision Rule (Mandatory)

1. First try to update existing KBs.
2. If the topic partially belongs to multiple KBs, update each relevant KB with cross-referral notes.
3. Only create a new KB when no existing KB family can reasonably own the topic cluster.

If `create_mode=never`, report unowned concepts but do not create new KB files.

Additional mandatory rule for `scan_mode=full`:
- Perform a full-file ownership pass by comparing every **technical** transcript file path in `outputs/**` against all KB transcript references in `Knowledge Base/**/*.md`.
- Report global coverage %, absolute missing count, and module-wise coverage stats before applying enrichments.

---

## Step 1 — Discover New Transcript Files

1. Resolve scan scope from `scan_mode`.
2. List every `.txt` file in scope recursively.
3. Filter out housekeeping/non-technical transcript files using the eligibility filter unless the user explicitly asks to include them.
4. Group by module (recommended key: `<course>/<section>`).
5. Print the full file list so the user can see what is being processed.

### Step 1A — Full Exhaustive Ownership Scan (`scan_mode=full`)
1. Read all KB markdown files under `Knowledge Base/**/*.md`.
2. Extract all referenced transcript paths (for example `### File: outputs/...txt` and referral bullets).
3. Compare with full **technical** transcript inventory from `outputs/**/*.txt`.
4. Produce:
   - global counts: total, referenced, missing, coverage %
   - module-wise table: total, covered, missing, coverage %
   - top missing path samples

---

## Step 2 — Line-by-Line Transcript Scan

For every transcript file in scope:

1. **Read the full content** of the file.
2. Extract every distinct **service name**, **feature name**, **concept**, and **operational fact** mentioned.
   - Be granular: treat sub-features as separate items (e.g., "S3 VPC Gateway Endpoint" and "S3 VPC Interface Endpoint" are two items, not one).
3. Normalise synonyms (e.g., "Multi-Region Access Point" = "MRAP").
4. Build a running **Concept Inventory** — deduplicated list of all items found across all files.

---

## Step 3 — Global KB Routing + Coverage Check

For each item in the Concept Inventory:

1. Check every relevant KB family under `Knowledge Base/` for the item.
2. Assign a coverage label:
   - ✅ **Covered** — synthesised bullet(s) exist with the concept explained clearly
   - ⚠️ **Partial** — only raw transcript lines exist, no synthesised architect notes
   - ❌ **Missing** — zero matches in the KB

3. Route each missing/partial item with one of these labels:
- `owned-existing` (single KB owner)
- `split-existing` (belongs across multiple KBs)
- `unowned-candidate` (no valid existing KB owner)

4. Apply update-first policy:
- For `owned-existing` and `split-existing`: patch existing KB files.
- For `unowned-candidate`: run second-pass check across all KBs; if still unowned and `create_mode=auto`, create a new KB family.

5. Use this ownership guidance:

| Topic domain | KB file |
|---|---|
| S3 foundations, bucket policies, versioning, encryption, storage classes | `01_S3_Foundations.md` |
| Lifecycle, replication, events, access points, batch ops, inventory, multipart | `02_S3_Advanced_Data_Management.md` |
| EBS, EFS, FSx, hybrid file, block storage | `03_Block_File_Hybrid_Storage.md` |
| Object Lock, Glacier Vault Lock, Macie, KMS for storage, archival | `04_Data_Protection_Archival.md` |
| DataSync, Storage Gateway, Transfer Family, Snow Family | `05_Storage_Transfer_Operations.md` |
| S3 pricing, Transfer Acceleration, Storage Lens, cost optimisations | `06_Storage_Cost_Performance.md` |
| AI/ML workflows and model-serving architecture | AWS AI Knowledge Base |
| Compute/runtime and instance behavior | AWS Compute Knowledge Base |
| Cost governance, budgets, optimization controls | AWS Cost Control Knowledge Base |
| ETL, pipelines, lakes, stream/batch data platforms | AWS Data Engineering Knowledge Base |
| Relational/NoSQL/data-store platform architecture | AWS Database Knowledge Base |
| Backup/restore/BCDR and resilience patterns | AWS Disaster Recovery Knowledge Base |
| Migration tooling, discovery, and cutover patterns | AWS Migration Knowledge Base |
| VPC, routing, private connectivity, edge networking | AWS Networking Knowledge Base |
| Monitoring, logging, tracing, SLO operations | AWS Observability Knowledge Base |
| IAM, encryption, threat detection, compliance controls | AWS Security Knowledge Base |
| Object/block/file storage and transfer | AWS Storage Knowledge Base |

---

## Step 4 — Update Existing KBs First

For every ❌ Missing or ⚠️ Partial item:

1. Write a concise enrichment block:
   - Lead with the concept/service name as a `###` heading (or bullet if inside an existing section)
   - Include only concrete facts from the transcript (no speculation)
   - Add exam-relevant distinctions, limits, costs, or failure patterns if present in the transcript
   - Keep the addition under 15 bullets unless the concept is genuinely large

2. Insert the block into the correct existing KB file first:
   - Place it in the **CloudOps / SysOps Exam Enrichments** section if one exists, or
   - Create a clearly labelled `## New Transcript Additions — <course name>` section just before `## Step 1 - Line-by-Line Extraction`

3. Update the relevant KB master index file(s) and top-level `Knowledge Base/00_Master_Index.md`:
   - Add any genuinely **new** service/tool names to the reverse index
   - Append the target KB filename to existing entries when the service now also appears there

---

## Step 5 — Create New KB Only If Needed

If (and only if) no existing KB owns the concept cluster:
1. Create `Knowledge Base/<New Domain> Knowledge Base/`
2. Create starter files:
   - `00_Master_Index.md`
   - `01_Foundations.md`
   - `02_Advanced_Operations.md`
3. Seed with source ownership and a line-by-line extraction section marker.
4. Add first synthesis notes backed by transcript evidence.
5. Register the new KB family in `Knowledge Base/00_Master_Index.md`.

---

## Step 6 — Quality Gate

Before finishing, verify:
- [ ] No concept was added that was already fully covered (no duplicates introduced)
- [ ] Every addition cites a transcript file path or line as evidence
- [ ] No section was completely rewritten — only targeted additions were made
- [ ] Existing KBs were attempted first for every concept
- [ ] New KB was created only when update-first checks failed
- [ ] Master index updated only for genuinely new service coverage
- [ ] File style (bullet depth, heading levels) consistent with existing KB files

---

## Output Format (Required)

Return exactly six sections:

### 1. Scan Mode and Scope
- Mode used: `delta` / `full` / `module`
- Input folders/modules resolved

### 2. Transcript Files Processed
- List of all `.txt` files scanned, grouped by section folder

### 3. Concept Inventory
- Full deduplicated list of services/concepts/features extracted

### 4. Coverage Report
| Concept / Service | Coverage | KB File | Notes |
|---|---|---|---|
| ... | ✅/⚠️/❌ | ... | ... |

If `scan_mode=full`, prepend a **Full Exhaustive Ownership Summary** block in this section with:
- Total transcripts, referenced transcripts, missing transcripts, coverage %
- Module-wise partial table (module-level coverage)

### 5. Changes Applied
- For each KB file changed: exact section added/updated and why
- If no changes were needed, state clearly: "All concepts already covered."

### 6. Residual Gaps (Deferred)
- Items not added and the reason (e.g., belongs to non-storage KB, insufficient transcript signal, already tracked as cross-referral)
