# Knowledge Pipeline

This application domain handles transcript extraction and knowledge-base generation.
It is now part of the same repository as your Terraform platform.

## Purpose

- Extract transcripts from Udemy courses you are enrolled in.
- Build structured domain knowledge bases from transcript outputs.
- Audit line-level integrity and produce master indexes.
- Hand off generated artifacts to your cloud deployment workflows.

## Folder Layout

- `extract_transcripts.py`: transcript ingestion from Udemy APIs.
- `build_domain_knowledge_bases.py`: domain KB generation.
- `build_knowledge_base_master_index.py`: top-level KB index generation.
- `audit_knowledge_base_integrity.py`: quality and source-coverage audit.
- `outputs/`: transcript outputs per course.
- `Knowledge Base/`: generated KB content.
- `cache/`: runtime caches and reports.
- `playwright-profile/`: local browser profile for Udemy login session.

## Setup

1. Install dependencies.

```bash
python -m pip install -r apps/knowledge-pipeline/requirements.txt
```

2. Perform first-time Udemy login profile capture.

```bash
cd apps/knowledge-pipeline
python extract_transcripts.py --login
```

## Common Commands

List sections:

```bash
cd apps/knowledge-pipeline
python extract_transcripts.py --url "https://www.udemy.com/course/<slug>/" --list-sections
```

Extract all sections:

```bash
cd apps/knowledge-pipeline
python extract_transcripts.py --url "https://www.udemy.com/course/<slug>/" --all
```

Extract a specific section:

```bash
cd apps/knowledge-pipeline
python extract_transcripts.py --url "https://www.udemy.com/course/<slug>/" --section 2
```

Build KB:

```bash
cd apps/knowledge-pipeline
python build_domain_knowledge_bases.py
python build_knowledge_base_master_index.py
```

Audit KB integrity:

```bash
cd apps/knowledge-pipeline
python audit_knowledge_base_integrity.py --fail-on-issues
```

## Root Makefile Shortcuts

From repository root:

- `make kb-install`
- `make kb-login`
- `make kb-list URL=https://www.udemy.com/course/<slug>/`
- `make kb-extract-all URL=https://www.udemy.com/course/<slug>/ [OUT_DIR=name]`
- `make kb-extract-section URL=https://www.udemy.com/course/<slug>/ SECTION=2 [OUT_DIR=name]`
- `make kb-build`
- `make kb-audit`

## Notes

- Use only content from courses you are licensed to access.
- Do not commit `.env` or browser profile data.
- Defaults are now portable and no longer tied to one local machine path.
