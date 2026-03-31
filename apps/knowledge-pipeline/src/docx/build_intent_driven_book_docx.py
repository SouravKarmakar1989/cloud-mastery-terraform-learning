"""
Build an intent-driven professional DOCX from a transcript-derived KB markdown file.

Method:
1) Parse line-by-line extraction records.
2) Infer learning intent clusters from concepts, services, and key insights.
3) Author a readable book structure around those intents.
"""

from __future__ import annotations

import argparse
import re
from collections import Counter, defaultdict
from dataclasses import dataclass
from datetime import datetime
from pathlib import Path

from docx import Document


@dataclass
class LineRecord:
    source_file: str
    line_number: int
    concepts: list[str]
    services: list[str]
    key_insight: str
    hidden_meaning: str


INTENT_RULES: dict[str, tuple[list[str], list[str]]] = {
    "Service Selection and Capability Fit": (
        [
            "Managed AI Service Selection",
            "AI Operational Context",
        ],
        ["service", "rekognition", "textract", "comprehend", "choose", "selection"],
    ),
    "Model Lifecycle and MLOps": (
        [
            "Model Development Lifecycle",
            "MLOps and Operationalization",
        ],
        ["train", "pipeline", "deploy", "monitor", "drift", "model"],
    ),
    "Inference and Serving Architecture": (
        [
            "Inference and Serving",
            "Generative AI Architecture",
        ],
        ["inference", "endpoint", "latency", "throughput", "serve", "retrieval"],
    ),
    "Governance, Risk, and Responsible AI": (
        [
            "AI Governance and Safety",
        ],
        ["responsible", "governance", "policy", "risk", "security", "safety"],
    ),
}


def canonical_section_name(heading: str) -> str | None:
    h = heading.lower()
    if "real material" in h:
        return "real"
    if "line-by-line extraction" in h:
        return "line"
    if "consolidation" in h:
        return "consolidation"
    if "deep expansion" in h:
        return "deep"
    if "cross-cloud mapping" in h and "concept-first" in h:
        return "cross"
    return None


def split_sections(md_lines: list[str]) -> dict[str, list[str]]:
    heads: list[tuple[int, str]] = []
    for i, line in enumerate(md_lines):
        if line.startswith("## "):
            heads.append((i, line[3:].strip()))

    out: dict[str, list[str]] = {}
    for idx, (start_i, heading) in enumerate(heads):
        end_i = heads[idx + 1][0] if idx + 1 < len(heads) else len(md_lines)
        c = canonical_section_name(heading)
        if c is not None:
            out[c] = md_lines[start_i + 1 : end_i]
    return out


def parse_csv_like_field(value: str) -> list[str]:
    value = value.strip()
    if not value or value.lower() == "(none explicit)":
        return []
    parts = [p.strip() for p in value.split(",")]
    return [p for p in parts if p]


def parse_line_records(line_section: list[str]) -> list[LineRecord]:
    records: list[LineRecord] = []

    current_file = ""
    current_line_no = 0
    concepts: list[str] = []
    services: list[str] = []
    key_insight = ""
    hidden = ""

    def flush() -> None:
        if current_file and current_line_no and key_insight:
            records.append(
                LineRecord(
                    source_file=current_file,
                    line_number=current_line_no,
                    concepts=concepts[:],
                    services=services[:],
                    key_insight=key_insight,
                    hidden_meaning=hidden,
                )
            )

    for raw in line_section:
        line = raw.strip()
        if not line:
            continue

        if line.startswith("### File:"):
            current_file = line.split(":", 1)[1].strip()
            continue

        m_line = re.match(r"^Line\s+(\d+):$", line)
        if m_line:
            flush()
            current_line_no = int(m_line.group(1))
            concepts = []
            services = []
            key_insight = ""
            hidden = ""
            continue

        if line.startswith("- Concepts:"):
            concepts = parse_csv_like_field(line.split(":", 1)[1])
            continue

        if line.startswith("- Services:"):
            services = parse_csv_like_field(line.split(":", 1)[1])
            continue

        if line.startswith("- Key Insights:"):
            key_insight = line.split(":", 1)[1].strip()
            continue

        if line.startswith("- Hidden/Implicit Meaning:"):
            hidden = line.split(":", 1)[1].strip()
            continue

    flush()
    return records


def classify_intent(rec: LineRecord) -> str:
    text = " ".join([
        " ".join(rec.concepts),
        " ".join(rec.services),
        rec.key_insight,
        rec.hidden_meaning,
    ]).lower()

    scores: dict[str, int] = {}
    for intent_name, (concept_keys, keyword_keys) in INTENT_RULES.items():
        score = 0
        for c in concept_keys:
            if c.lower() in text:
                score += 4
        for kw in keyword_keys:
            if kw.lower() in text:
                score += 1
        scores[intent_name] = score

    best = max(scores, key=scores.get)
    if scores[best] == 0:
        return "Foundation and Context Building"
    return best


def concise_sentence(text: str, max_words: int = 24) -> str:
    words = text.strip().split()
    if len(words) <= max_words:
        return text.strip()
    return " ".join(words[:max_words]).rstrip(".,;:") + "..."


def infer_intent_summary(records: list[LineRecord]) -> dict[str, dict[str, object]]:
    buckets: dict[str, list[LineRecord]] = defaultdict(list)
    for rec in records:
        buckets[classify_intent(rec)].append(rec)

    result: dict[str, dict[str, object]] = {}
    for intent, recs in buckets.items():
        concept_counter = Counter()
        service_counter = Counter()
        hidden_counter = Counter()

        for rec in recs:
            concept_counter.update(rec.concepts)
            service_counter.update(rec.services)
            if rec.hidden_meaning:
                hidden_counter.update([rec.hidden_meaning])

        evidence = [
            f"{r.source_file}:{r.line_number} - {concise_sentence(r.key_insight)}"
            for r in recs[:12]
        ]

        result[intent] = {
            "count": len(recs),
            "top_concepts": [x for x, _ in concept_counter.most_common(6)],
            "top_services": [x for x, _ in service_counter.most_common(8)],
            "hidden_signals": [x for x, _ in hidden_counter.most_common(4)],
            "evidence": evidence,
        }

    return dict(sorted(result.items(), key=lambda kv: kv[1]["count"], reverse=True))


def parse_markdown_list_items(section_lines: list[str], marker: str) -> list[str]:
    found = False
    items: list[str] = []
    for raw in section_lines:
        line = raw.strip()
        if line.startswith(marker):
            found = True
            continue
        if found and line.startswith("### ") and not line.startswith(marker):
            break
        if found and line.startswith("- "):
            items.append(line[2:].strip())
    return items


def write_doc(
    output_path: Path,
    source_path: Path,
    records: list[LineRecord],
    intent_summary: dict[str, dict[str, object]],
    consolidation: list[str],
    deep_expansion: list[str],
    cross_cloud_lines: list[str],
) -> None:
    doc = Document()

    doc.add_heading("AI Service Foundations - Intent-Driven Professional Book", level=0)
    doc.add_paragraph(f"Source file: {source_path}")
    doc.add_paragraph(f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    doc.add_paragraph(
        "Authoring mode: intent extracted from line-level transcript evidence, then restructured for architecture learning."
    )

    doc.add_heading("Part 0 - Extraction Method", level=1)
    doc.add_paragraph("This chapter was built in two stages:")
    doc.add_paragraph("Stage 1: Parse every line-level extraction record and classify its learning intent.", style="List Number")
    doc.add_paragraph("Stage 2: Recompose those intents into architecture chapters with evidence-backed guidance.", style="List Number")
    doc.add_paragraph(f"Line records processed: {len(records)}")

    doc.add_heading("Part 1 - Intent Map from Line-by-Line Evidence", level=1)
    for intent, info in intent_summary.items():
        doc.add_heading(intent, level=2)
        doc.add_paragraph(f"Evidence volume: {info['count']} line records")

        top_concepts = info["top_concepts"]
        if top_concepts:
            doc.add_paragraph("Dominant concepts:")
            for c in top_concepts:
                doc.add_paragraph(c, style="List Bullet")

        top_services = info["top_services"]
        if top_services:
            doc.add_paragraph("Service concentration:")
            for s in top_services:
                doc.add_paragraph(s, style="List Bullet")

        hidden_signals = info["hidden_signals"]
        if hidden_signals:
            doc.add_paragraph("Implicit architecture signals:")
            for h in hidden_signals:
                doc.add_paragraph(h, style="List Bullet")

        doc.add_paragraph("Representative transcript evidence:")
        for ev in info["evidence"]:
            doc.add_paragraph(ev, style="List Bullet")

    doc.add_heading("Part 2 - Readable Learning Narrative", level=1)
    doc.add_paragraph(
        "This section reorders the raw line evidence into a professional mental model for enterprise AI architecture decisions."
    )

    for intent, info in intent_summary.items():
        doc.add_heading(f"Chapter: {intent}", level=2)
        doc.add_paragraph(
            "Why this matters: This intent changes production topology, ownership boundaries, risk controls, and cost behavior."
        )
        if info["top_concepts"]:
            doc.add_paragraph("What to internalize first:")
            for concept in info["top_concepts"][:4]:
                doc.add_paragraph(
                    f"Treat {concept} as a design control rather than a feature checklist.",
                    style="List Bullet",
                )

        if info["top_services"]:
            doc.add_paragraph("Service-level reading path:")
            for service in info["top_services"][:6]:
                doc.add_paragraph(
                    f"Understand {service} by control plane, request/data path, failure mode, and governance boundary.",
                    style="List Bullet",
                )

        doc.add_paragraph("Applied architect prompts:")
        for q in [
            "What breaks first under scale, and where is the circuit breaker?",
            "Which team owns model quality, runtime behavior, and policy enforcement?",
            "How is rollback handled for model, prompt, and data changes?",
        ]:
            doc.add_paragraph(q, style="List Number")

    doc.add_heading("Part 3 - Consolidated Study Control Plane", level=1)
    if consolidation:
        for item in consolidation:
            doc.add_paragraph(item, style="List Bullet")
    else:
        doc.add_paragraph("No consolidation list could be parsed.")

    doc.add_heading("Part 4 - Deep Expansion to System Design", level=1)
    if deep_expansion:
        for item in deep_expansion:
            doc.add_paragraph(item, style="List Bullet")
    else:
        doc.add_paragraph("No deep expansion list could be parsed.")

    doc.add_heading("Part 5 - Cross-Cloud Mapping (Concept-First)", level=1)
    for raw in cross_cloud_lines:
        line = raw.strip()
        if line.startswith("|") and "|" in line:
            doc.add_paragraph(line)
        elif line.startswith("- "):
            doc.add_paragraph(line[2:].strip(), style="List Bullet")
        elif line.startswith("### "):
            doc.add_heading(line[4:].strip(), level=2)
        elif line:
            doc.add_paragraph(line)

    doc.add_heading("Appendix - Source Fidelity Snapshot", level=1)
    doc.add_paragraph(
        "The full line-by-line extraction remains in the source markdown. This appendix includes a compact evidence sample per intent to preserve traceability without reducing readability."
    )

    for intent, info in intent_summary.items():
        doc.add_heading(intent, level=2)
        for ev in info["evidence"][:6]:
            doc.add_paragraph(ev, style="List Bullet")

    output_path.parent.mkdir(parents=True, exist_ok=True)
    doc.save(output_path)


def main() -> None:
    parser = argparse.ArgumentParser(description="Build an intent-driven professional book DOCX.")
    parser.add_argument("--input", required=True, help="Input markdown path")
    parser.add_argument("--output", required=True, help="Output docx path")
    args = parser.parse_args()

    source_path = Path(args.input)
    lines = source_path.read_text(encoding="utf-8", errors="ignore").splitlines()
    sections = split_sections(lines)

    required = ["line", "consolidation", "deep", "cross"]
    missing = [name for name in required if name not in sections]
    if missing:
        raise SystemExit("Missing required sections in markdown: " + ", ".join(missing))

    records = parse_line_records(sections["line"])
    if not records:
        raise SystemExit("No line-by-line records were parsed.")

    intent_summary = infer_intent_summary(records)

    consolidation_items: list[str] = []
    for marker in [
        "### 1. Concepts List",
        "### 2. Services List",
        "### 3. Features List",
        "### 4. Use Cases",
        "### 5. Constraints / Limitations",
        "### 6. Patterns / Architectures",
    ]:
        entries = parse_markdown_list_items(sections["consolidation"], marker)
        if entries:
            consolidation_items.append(marker.replace("### ", ""))
            consolidation_items.extend(entries[:80])

    deep_items: list[str] = []
    for marker in ["### Core Services in This Topic", "### Architect-Level Concept Expansion"]:
        entries = parse_markdown_list_items(sections["deep"], marker)
        if entries:
            deep_items.append(marker.replace("### ", ""))
            deep_items.extend(entries[:120])

    write_doc(
        output_path=Path(args.output),
        source_path=source_path,
        records=records,
        intent_summary=intent_summary,
        consolidation=consolidation_items,
        deep_expansion=deep_items,
        cross_cloud_lines=sections["cross"],
    )

    print(f"Created intent-driven book DOCX: {args.output}")


if __name__ == "__main__":
    main()
