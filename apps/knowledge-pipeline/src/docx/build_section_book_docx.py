"""
Build a book-style DOCX from selected sections of a KB markdown file.

Target sections:
- Real Material
- Line-by-Line Extraction
- Consolidation
- Deep Expansion
- Cross-Cloud Mapping (Concept-First)
"""

from __future__ import annotations

import argparse
import re
from dataclasses import dataclass
from datetime import datetime
from pathlib import Path

from docx import Document


SECTION_ORDER = [
    "Real Material",
    "Line-by-Line Extraction",
    "Consolidation",
    "Deep Expansion",
    "Cross-Cloud Mapping (Concept-First)",
]


@dataclass
class SectionBlock:
    canonical_name: str
    source_heading: str
    body_lines: list[str]


def canonicalize_section_name(heading_text: str) -> str | None:
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


def find_section_blocks(lines: list[str]) -> list[SectionBlock]:
    heading_positions: list[tuple[int, str]] = []
    for idx, line in enumerate(lines):
        if line.startswith("## "):
            heading_positions.append((idx, line[3:].strip()))

    blocks: list[SectionBlock] = []
    for i, (start_idx, heading_text) in enumerate(heading_positions):
        end_idx = heading_positions[i + 1][0] if i + 1 < len(heading_positions) else len(lines)
        canonical_name = canonicalize_section_name(heading_text)
        if canonical_name is None:
            continue

        body_start = start_idx + 1
        body_lines = lines[body_start:end_idx]
        blocks.append(
            SectionBlock(
                canonical_name=canonical_name,
                source_heading=heading_text,
                body_lines=body_lines,
            )
        )

    blocks_by_name = {block.canonical_name: block for block in blocks}
    ordered_blocks: list[SectionBlock] = []
    for section_name in SECTION_ORDER:
        if section_name in blocks_by_name:
            ordered_blocks.append(blocks_by_name[section_name])
    return ordered_blocks


def add_book_blueprint(doc: Document) -> None:
    doc.add_heading("Book-Writing Blueprint", level=1)
    doc.add_paragraph(
        "This book chapter is composed with a source-first method: preserve transcript evidence, "
        "then layer architect interpretation, then normalize to cross-cloud decisions."
    )
    doc.add_paragraph(
        "Section strategy:",
        style="List Bullet",
    )
    doc.add_paragraph(
        "Real Material: Convert module flow into a learning narrative with architecture intent and operational context.",
        style="List Bullet",
    )
    doc.add_paragraph(
        "Line-by-Line Extraction: Preserve every extracted line as a traceable evidence ledger to keep zero-loss coverage.",
        style="List Bullet",
    )
    doc.add_paragraph(
        "Consolidation: Distill concepts, services, constraints, use-cases, and patterns into reusable study indices.",
        style="List Bullet",
    )
    doc.add_paragraph(
        "Deep Expansion: Expand each concept from feature knowledge to architecture trade-off thinking.",
        style="List Bullet",
    )
    doc.add_paragraph(
        "Cross-Cloud Mapping (Concept-First): Keep implementation vendor-specific but decision logic cloud-agnostic.",
        style="List Bullet",
    )


def flush_code_block(doc: Document, code_lines: list[str]) -> None:
    if not code_lines:
        return
    doc.add_paragraph("\n".join(code_lines), style="Intense Quote")
    code_lines.clear()


def parse_markdown_table_row(line: str) -> list[str]:
    stripped = line.strip().strip("|")
    return [cell.strip() for cell in stripped.split("|")]


def is_table_separator_row(line: str) -> bool:
    cells = parse_markdown_table_row(line)
    if not cells:
        return False
    for cell in cells:
        if not cell:
            return False
        if not re.fullmatch(r":?-{3,}:?", cell):
            return False
    return True


def render_markdown_lines(doc: Document, lines: list[str]) -> None:
    in_code_block = False
    code_buffer: list[str] = []

    i = 0
    while i < len(lines):
        raw = lines[i].rstrip("\n")
        stripped = raw.strip()

        if stripped.startswith("```"):
            if in_code_block:
                flush_code_block(doc, code_buffer)
                in_code_block = False
            else:
                in_code_block = True
            i += 1
            continue

        if in_code_block:
            code_buffer.append(raw)
            i += 1
            continue

        if stripped.startswith("|") and "|" in stripped:
            table_lines: list[str] = []
            while i < len(lines):
                candidate = lines[i].strip()
                if candidate.startswith("|") and "|" in candidate:
                    table_lines.append(candidate)
                    i += 1
                else:
                    break

            if len(table_lines) >= 2 and is_table_separator_row(table_lines[1]):
                header = parse_markdown_table_row(table_lines[0])
                rows = [parse_markdown_table_row(row) for row in table_lines[2:]]
                table = doc.add_table(rows=1 + len(rows), cols=len(header))
                for c, val in enumerate(header):
                    table.cell(0, c).text = val
                for r, row in enumerate(rows, start=1):
                    for c in range(len(header)):
                        table.cell(r, c).text = row[c] if c < len(row) else ""
                continue

            for line in table_lines:
                doc.add_paragraph(line)
            continue

        heading_match = re.match(r"^(#{1,6})\s+(.*)$", stripped)
        if heading_match:
            level = min(len(heading_match.group(1)) + 1, 4)
            doc.add_heading(heading_match.group(2).strip(), level=level)
            i += 1
            continue

        if re.match(r"^[-*]\s+", stripped):
            doc.add_paragraph(re.sub(r"^[-*]\s+", "", stripped), style="List Bullet")
            i += 1
            continue

        if re.match(r"^\d+\.\s+", stripped):
            doc.add_paragraph(re.sub(r"^\d+\.\s+", "", stripped), style="List Number")
            i += 1
            continue

        if stripped:
            doc.add_paragraph(stripped)
        else:
            doc.add_paragraph("")
        i += 1

    if in_code_block:
        flush_code_block(doc, code_buffer)


def build_doc(input_path: Path, output_path: Path) -> None:
    lines = input_path.read_text(encoding="utf-8", errors="ignore").splitlines()
    sections = find_section_blocks(lines)

    if not sections:
        raise SystemExit("No target sections found in input markdown.")

    doc = Document()
    doc.add_heading("AWS AI Service Foundations - One-Stop Learning Book", level=0)
    doc.add_paragraph(f"Source file: {input_path}")
    doc.add_paragraph(f"Generated on: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    doc.add_paragraph(
        "Mode: source-honoring, line-preserving transformation from transcript-derived markdown to chapter format."
    )

    add_book_blueprint(doc)

    for idx, block in enumerate(sections, start=1):
        doc.add_heading(f"Part {idx}: {block.canonical_name}", level=1)
        doc.add_paragraph(f"Source section heading: {block.source_heading}")
        render_markdown_lines(doc, block.body_lines)

    output_path.parent.mkdir(parents=True, exist_ok=True)
    doc.save(output_path)


def build_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(description="Generate a book DOCX from selected KB markdown sections.")
    parser.add_argument("--input", required=True, help="Path to input markdown file")
    parser.add_argument("--output", required=True, help="Path to output DOCX file")
    return parser


def main() -> None:
    args = build_parser().parse_args()
    build_doc(input_path=Path(args.input), output_path=Path(args.output))
    print(f"Created book DOCX: {args.output}")


if __name__ == "__main__":
    main()
