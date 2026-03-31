from __future__ import annotations

import re
from pathlib import Path
from collections import defaultdict

ROOT = Path(__file__).resolve().parents[2]
KB_DIR = ROOT / "outputs" / "AWS Security Knowledge Base"
MASTER = KB_DIR / "00_Master_Index.md"

TOPIC_FILES = [
    KB_DIR / "01_IAM_Core.md",
    KB_DIR / "02_IAM_Advanced.md",
    KB_DIR / "03_Authentication_Federation.md",
    KB_DIR / "04_Directory_Organizations.md",
    KB_DIR / "05_KMS_Cryptography.md",
    KB_DIR / "06_Secrets_Certificates.md",
    KB_DIR / "07_S3_Security.md",
    KB_DIR / "08_Detection_Threat.md",
    KB_DIR / "09_Logging_Monitoring.md",
    KB_DIR / "10_Network_Security.md",
    KB_DIR / "11_VPC_Connectivity_Security.md",
    KB_DIR / "12_Incident_Response.md",
    KB_DIR / "13_Governance_Compliance.md",
    KB_DIR / "14_Data_Protection_Storage.md",
    KB_DIR / "15_Service_Security.md",
]

GENERIC_CONCEPT_PATTERNS = [
    r"\boperational context\b",
    r"\bdomain operational context\b",
]

GENERIC_SERVICE_VALUES = {
    "(none explicit)",
}


def norm(s: str) -> str:
    return re.sub(r"\s+", " ", s.strip().lower())


def unique_preserve(items: list[str]) -> list[str]:
    seen = set()
    out = []
    for it in items:
        key = norm(it)
        if not key or key in seen:
            continue
        seen.add(key)
        out.append(it.strip())
    return out


def is_generic_concept(value: str) -> bool:
    text = value.strip().lower()
    if not text:
        return True
    if "context" in text and ("operational" in text or "domain" in text):
        return True
    for pat in GENERIC_CONCEPT_PATTERNS:
        if re.search(pat, text):
            return True
    return False


def is_generic_service(value: str) -> bool:
    text = value.strip().lower()
    if not text:
        return True
    if text in GENERIC_SERVICE_VALUES:
        return True
    return False


def extract_section_bullets(lines: list[str], heading: str) -> list[str]:
    start = None
    for i, line in enumerate(lines):
        if line.strip() == heading:
            start = i + 1
            break
    if start is None:
        return []

    bullets = []
    for j in range(start, len(lines)):
        s = lines[j].rstrip("\n")
        if s.startswith("### ") and j != start:
            break
        if s.startswith("## ") and j != start:
            break
        if s.startswith("- "):
            bullets.append(s[2:].strip())
    return bullets


def replace_or_append_dedup_snapshot(content: str, concepts: list[str], services: list[str], features: list[str], use_cases: list[str], constraints: list[str], patterns: list[str]) -> str:
    start_marker = "## Deduped Consolidation Snapshot"
    end_marker = "## Deduped Consolidation Snapshot End"

    block = []
    block.append(start_marker)
    block.append("")
    block.append("This additive section keeps original extraction untouched and provides duplicate-clean views for faster review.")
    block.append("")
    block.append("### Concepts (Deduped)")
    block.extend([f"- {x}" for x in concepts])
    block.append("")
    block.append("### Services (Deduped)")
    block.extend([f"- {x}" for x in services])
    block.append("")
    block.append("### Features (Deduped)")
    block.extend([f"- {x}" for x in features])
    block.append("")
    block.append("### Use Cases (Deduped)")
    block.extend([f"- {x}" for x in use_cases[:200]])
    block.append("")
    block.append("### Constraints / Limitations (Deduped)")
    block.extend([f"- {x}" for x in constraints[:200]])
    block.append("")
    block.append("### Patterns / Architectures (Deduped)")
    block.extend([f"- {x}" for x in patterns[:200]])
    block.append("")
    block.append(end_marker)
    new_block = "\n".join(block)

    if start_marker in content and end_marker in content:
        pattern = re.compile(re.escape(start_marker) + r"[\s\S]*?" + re.escape(end_marker), flags=re.MULTILINE)
        return pattern.sub(new_block, content)

    if not content.endswith("\n"):
        content += "\n"
    return content + "\n" + new_block + "\n"


def main() -> None:
    concept_to_files = defaultdict(set)
    service_to_files = defaultdict(set)
    per_file_stats = []

    for fp in TOPIC_FILES:
        if not fp.exists():
            continue
        text = fp.read_text(encoding="utf-8", errors="ignore")
        lines = text.splitlines()

        concepts = unique_preserve(extract_section_bullets(lines, "### 1. Concepts List"))
        services = unique_preserve(extract_section_bullets(lines, "### 2. Services List"))
        features = unique_preserve(extract_section_bullets(lines, "### 3. Features List"))
        use_cases = unique_preserve(extract_section_bullets(lines, "### 4. Use Cases"))
        constraints = unique_preserve(extract_section_bullets(lines, "### 5. Constraints / Limitations"))
        patterns = unique_preserve(extract_section_bullets(lines, "### 6. Patterns / Architectures"))

        indexable_concepts = [c for c in concepts if not is_generic_concept(c)]
        indexable_services = [s for s in services if not is_generic_service(s)]

        for c in indexable_concepts:
            concept_to_files[c].add(fp.name)
        for s in indexable_services:
            service_to_files[s].add(fp.name)

        updated = replace_or_append_dedup_snapshot(text, concepts, services, features, use_cases, constraints, patterns)
        fp.write_text(updated, encoding="utf-8")

        per_file_stats.append((fp.name, len(concepts), len(services), len(features), len(use_cases), len(constraints), len(patterns)))

    if MASTER.exists():
        master_text = MASTER.read_text(encoding="utf-8", errors="ignore")

        start_marker = "## Reverse Index (Auto-Generated)"
        end_marker = "## Reverse Index (Auto-Generated) End"

        block = []
        block.append(start_marker)
        block.append("")
        block.append("Generated from each file's consolidated lists and refreshed automatically.")
        block.append("")

        block.append("### Concept -> Files")
        for concept in sorted(concept_to_files.keys(), key=lambda s: s.lower()):
            files = ", ".join(sorted(concept_to_files[concept]))
            block.append(f"- {concept}: {files}")
        block.append("")

        block.append("### Service -> Files")
        for service in sorted(service_to_files.keys(), key=lambda s: s.lower()):
            files = ", ".join(sorted(service_to_files[service]))
            block.append(f"- {service}: {files}")
        block.append("")

        block.append("### Dedup Snapshot Stats")
        block.append("| File | Concepts | Services | Features | Use Cases | Constraints | Patterns |")
        block.append("|---|---:|---:|---:|---:|---:|---:|")
        for row in sorted(per_file_stats):
            block.append(f"| {row[0]} | {row[1]} | {row[2]} | {row[3]} | {row[4]} | {row[5]} | {row[6]} |")
        block.append("")

        block.append(end_marker)
        new_block = "\n".join(block)

        # Normalize malformed historical blocks (e.g., duplicate starts or missing end).
        while start_marker in master_text:
            start_idx = master_text.find(start_marker)
            end_idx = master_text.find(end_marker, start_idx)
            if end_idx == -1:
                master_text = master_text[:start_idx].rstrip() + "\n"
                break
            end_idx = end_idx + len(end_marker)
            master_text = (master_text[:start_idx].rstrip() + "\n\n" + master_text[end_idx:].lstrip())

        if not master_text.endswith("\n"):
            master_text += "\n"
        master_text = master_text + "\n" + new_block + "\n"

        MASTER.write_text(master_text, encoding="utf-8")


if __name__ == "__main__":
    main()
