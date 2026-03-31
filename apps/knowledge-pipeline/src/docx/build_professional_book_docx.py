"""
Build a professional book-style DOCX from selected sections in a KB markdown file.

Design goals:
- Reconfigure transcript-derived knowledge into an enterprise learning book structure.
- Preserve source fidelity, including line-by-line extraction coverage.
- Provide cross-cloud architecture language (AWS/Azure/GCP) in concept-first style.
"""

from __future__ import annotations

import argparse
import re
from dataclasses import dataclass, field
from datetime import datetime
from pathlib import Path

from docx import Document


TARGET_ORDER = [
    "Real Material",
    "Line-by-Line Extraction",
    "Consolidation",
    "Deep Expansion",
    "Cross-Cloud Mapping (Concept-First)",
]


@dataclass
class Section:
    name: str
    source_heading: str
    lines: list[str] = field(default_factory=list)


@dataclass
class Module:
    name: str
    orientation: list[str] = field(default_factory=list)
    source_files: list[str] = field(default_factory=list)
    transcript_notes: list[str] = field(default_factory=list)
    architect_notes: list[str] = field(default_factory=list)
    synthesis: list[str] = field(default_factory=list)


def canonical_name(heading_text: str) -> str | None:
    h = heading_text.lower()
    if "real material" in h:
        return "Real Material"
    if "line-by-line extraction" in h:
        return "Line-by-Line Extraction"
    if "consolidation" in h:
        return "Consolidation"
    if "deep expansion" in h:
        return "Deep Expansion"
    if "cross-cloud mapping" in h and "concept-first" in h:
        return "Cross-Cloud Mapping (Concept-First)"
    return None


def split_target_sections(md_lines: list[str]) -> dict[str, Section]:
    headings: list[tuple[int, str]] = []
    for i, line in enumerate(md_lines):
        if line.startswith("## "):
            headings.append((i, line[3:].strip()))

    section_map: dict[str, Section] = {}
    for idx, (start_i, heading_text) in enumerate(headings):
        end_i = headings[idx + 1][0] if idx + 1 < len(headings) else len(md_lines)
        name = canonical_name(heading_text)
        if name is None:
            continue
        section_map[name] = Section(
            name=name,
            source_heading=heading_text,
            lines=md_lines[start_i + 1 : end_i],
        )

    return section_map


def add_book_preface(doc: Document, source_path: Path) -> None:
    doc.add_heading("AI Service Foundations - Professional Learning Book", level=0)
    doc.add_paragraph(f"Source: {source_path}")
    doc.add_paragraph(f"Generated: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    doc.add_paragraph(
        "This book is authored from transcript-derived knowledge and intentionally restructured for enterprise architecture learning."
    )

    doc.add_heading("Authoring Strategy", level=1)
    doc.add_paragraph(
        "The chapter is built with a source-first method that preserves extracted evidence while converting it into a professional learning flow."
    )
    for line in [
        "Real Material: convert module fragments into coherent architecture narrative and implementation intent.",
        "Line-by-Line Extraction: preserve extraction ledger as traceable evidence appendix for zero-loss review.",
        "Consolidation: transform concept/service/use-case lists into an indexed study control plane.",
        "Deep Expansion: elevate memorization into architecture decisions and operational trade-off thinking.",
        "Cross-Cloud Mapping (Concept-First): keep decision logic cloud-agnostic and implementation cloud-specific.",
    ]:
        doc.add_paragraph(line, style="List Bullet")

    doc.add_heading("How to Use This Book", level=1)
    for step in [
        "Read Part I first to build mental models and architecture vocabulary.",
        "Use Part II as a source fidelity ledger when you need transcript-grounded validation.",
        "Use Part III and Part IV for exam preparation and production design discussions.",
        "Use Part V before any multi-cloud architecture review or migration planning.",
    ]:
        doc.add_paragraph(step, style="List Number")


def parse_real_material_modules(lines: list[str]) -> list[Module]:
    modules: list[Module] = []
    current: Module | None = None
    active_subsection = ""

    for raw in lines:
        line = raw.strip()
        if not line:
            continue

        if line.startswith("#### Module:"):
            name = line.split(":", 1)[1].strip()
            current = Module(name=name)
            modules.append(current)
            active_subsection = "orientation"
            continue

        if current is None:
            continue

        if line.startswith("##### Source Transcript Details"):
            active_subsection = "source"
            continue
        if line.startswith("##### Transcript-Enriched Learning Notes"):
            active_subsection = "notes"
            continue
        if line.startswith("##### Polished Architect Notes"):
            active_subsection = "architect"
            continue
        if line.startswith("##### Architect Synthesis"):
            active_subsection = "synthesis"
            continue

        if line.startswith("- "):
            item = line[2:].strip()
            if active_subsection == "orientation":
                current.orientation.append(item)
            elif active_subsection == "source":
                if item.startswith("outputs/"):
                    current.source_files.append(item)
            elif active_subsection == "notes":
                current.transcript_notes.append(item)
            elif active_subsection == "architect":
                current.architect_notes.append(item)
            elif active_subsection == "synthesis":
                current.synthesis.append(item)

    return modules


def write_real_material_part(doc: Document, section: Section) -> None:
    doc.add_heading("Part I - Real Material Reconstructed", level=1)
    doc.add_paragraph(f"Source heading: {section.source_heading}")
    doc.add_paragraph(
        "This part reorders transcript-grounded module content into architect-friendly learning flow while preserving source evidence."
    )

    modules = parse_real_material_modules(section.lines)
    if not modules:
        doc.add_paragraph("No module blocks were parsed from Real Material section.")
        return

    for idx, module in enumerate(modules, start=1):
        doc.add_heading(f"Chapter {idx}: {module.name}", level=2)

        doc.add_heading("Architecture Intent", level=3)
        if module.orientation:
            for item in module.orientation:
                doc.add_paragraph(item, style="List Bullet")
        else:
            doc.add_paragraph(
                "Study this module as a system boundary decision: control plane, data path, reliability posture, and governance path."
            )

        doc.add_heading("Evidence from Transcript-Enriched Notes", level=3)
        if module.transcript_notes:
            for item in module.transcript_notes:
                doc.add_paragraph(item, style="List Bullet")
        else:
            doc.add_paragraph("No transcript-enriched notes were present for this module.")

        doc.add_heading("Architect Clarifications", level=3)
        if module.architect_notes:
            for item in module.architect_notes:
                doc.add_paragraph(item, style="List Bullet")
        else:
            doc.add_paragraph("No polished architect notes were present for this module.")

        doc.add_heading("Design Synthesis", level=3)
        if module.synthesis:
            for item in module.synthesis:
                doc.add_paragraph(item, style="List Bullet")
        else:
            doc.add_paragraph("No synthesis lines were present for this module.")

        doc.add_heading("Source Trace", level=3)
        if module.source_files:
            for path in module.source_files:
                doc.add_paragraph(path, style="List Bullet")
        else:
            doc.add_paragraph("No explicit source file list was captured for this module.")


def write_generic_markdown_as_book(doc: Document, title: str, lines: list[str]) -> None:
    doc.add_heading(title, level=1)

    in_code = False
    code_buffer: list[str] = []
    i = 0
    while i < len(lines):
        raw = lines[i].rstrip("\n")
        text = raw.strip()

        if text.startswith("```"):
            if in_code:
                doc.add_paragraph("\n".join(code_buffer), style="Intense Quote")
                code_buffer = []
                in_code = False
            else:
                in_code = True
            i += 1
            continue

        if in_code:
            code_buffer.append(raw)
            i += 1
            continue

        m = re.match(r"^(#{1,6})\s+(.*)$", text)
        if m:
            level = min(len(m.group(1)) + 1, 4)
            doc.add_heading(m.group(2).strip(), level=level)
            i += 1
            continue

        if text.startswith("|") and "|" in text:
            table_lines: list[str] = []
            while i < len(lines):
                candidate = lines[i].strip()
                if candidate.startswith("|") and "|" in candidate:
                    table_lines.append(candidate)
                    i += 1
                else:
                    break
            render_markdown_table_or_plain(doc, table_lines)
            continue

        if re.match(r"^[-*]\s+", text):
            doc.add_paragraph(re.sub(r"^[-*]\s+", "", text), style="List Bullet")
            i += 1
            continue

        if re.match(r"^\d+\.\s+", text):
            doc.add_paragraph(re.sub(r"^\d+\.\s+", "", text), style="List Number")
            i += 1
            continue

        if text:
            doc.add_paragraph(text)
        i += 1

    if in_code and code_buffer:
        doc.add_paragraph("\n".join(code_buffer), style="Intense Quote")


def parse_table_cells(row: str) -> list[str]:
    return [c.strip() for c in row.strip().strip("|").split("|")]


def is_separator_row(row: str) -> bool:
    cells = parse_table_cells(row)
    if not cells:
        return False
    for cell in cells:
        if not re.fullmatch(r":?-{3,}:?", cell):
            return False
    return True


def render_markdown_table_or_plain(doc: Document, table_lines: list[str]) -> None:
    if len(table_lines) >= 2 and is_separator_row(table_lines[1]):
        headers = parse_table_cells(table_lines[0])
        data_rows = [parse_table_cells(r) for r in table_lines[2:]]
        table = doc.add_table(rows=1 + len(data_rows), cols=len(headers))
        for c, h in enumerate(headers):
            table.cell(0, c).text = h
        for r, data in enumerate(data_rows, start=1):
            for c in range(len(headers)):
                table.cell(r, c).text = data[c] if c < len(data) else ""
        return

    for row in table_lines:
        doc.add_paragraph(row)


def write_cross_cloud_part(doc: Document, section: Section) -> None:
    doc.add_heading("Part V - Cross-Cloud Mapping (Concept-First)", level=1)
    doc.add_paragraph(f"Source heading: {section.source_heading}")
    doc.add_paragraph(
        "This part translates capabilities by intent, not by branding, so design reviews remain portable across AWS, Azure, and GCP."
    )

    write_generic_markdown_as_book(doc, "Capability Mapping Table and Notes", section.lines)

    doc.add_heading("Enterprise Decision Playbook", level=2)
    for rule in [
        "Start with operating model and risk posture, then pick managed AI services.",
        "Document failure behavior and governance controls together with service selection.",
        "Preserve equivalent intent across clouds even when product names differ.",
        "Treat retrieval, model serving, and guardrails as one architecture concern.",
    ]:
        doc.add_paragraph(rule, style="List Bullet")


def build_book(input_md: Path, output_docx: Path) -> None:
    md_lines = input_md.read_text(encoding="utf-8", errors="ignore").splitlines()
    sections = split_target_sections(md_lines)

    missing = [name for name in TARGET_ORDER if name not in sections]
    if missing:
        raise SystemExit("Missing required sections: " + ", ".join(missing))

    doc = Document()
    add_book_preface(doc, input_md)

    write_real_material_part(doc, sections["Real Material"])

    write_generic_markdown_as_book(
        doc,
        "Part II - Line-by-Line Extraction (Source Fidelity Ledger)",
        sections["Line-by-Line Extraction"].lines,
    )

    write_generic_markdown_as_book(
        doc,
        "Part III - Consolidation (Architect Study Index)",
        sections["Consolidation"].lines,
    )

    write_generic_markdown_as_book(
        doc,
        "Part IV - Deep Expansion (Architect Reasoning Layer)",
        sections["Deep Expansion"].lines,
    )

    write_cross_cloud_part(doc, sections["Cross-Cloud Mapping (Concept-First)"])

    output_docx.parent.mkdir(parents=True, exist_ok=True)
    doc.save(output_docx)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Build a professional book DOCX from KB markdown sections.")
    parser.add_argument("--input", required=True, help="Input markdown file path")
    parser.add_argument("--output", required=True, help="Output DOCX file path")
    return parser


def main() -> None:
    args = build_parser().parse_args()
    build_book(Path(args.input), Path(args.output))
    print(f"Created professional book DOCX: {args.output}")


if __name__ == "__main__":
    main()
