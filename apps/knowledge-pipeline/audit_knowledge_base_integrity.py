from __future__ import annotations

import argparse
import json
import re
import sys
from collections import Counter, defaultdict
from pathlib import Path
from typing import Any

SCRIPT_ROOT = Path(__file__).resolve().parent


SPLIT_RE = re.compile(r"(?<=[.!?])\s+(?=[A-Z0-9\[])")


def split_units(text: str) -> list[str]:
    text = re.sub(r"\s+", " ", text.strip())
    if not text:
        return []
    return [re.sub(r"\s+", " ", part.strip()) for part in SPLIT_RE.split(text) if part.strip()]


def collect_kb_topic_files(kb_root: Path) -> list[Path]:
    return sorted(path for path in kb_root.rglob("*.md") if path.name != "00_Master_Index.md")


def collect_required_sources(repo_root: Path, required_source_root: str) -> set[str]:
    source_root = repo_root / required_source_root.replace("/", "\\")
    if not source_root.exists():
        return set()
    return {
        path.relative_to(repo_root).as_posix()
        for path in source_root.rglob("*.txt")
    }


def audit_file(kb_file: Path, repo_root: Path) -> tuple[dict[str, int], list[dict[str, object]], set[str]]:
    lines = kb_file.read_text(encoding="utf-8", errors="ignore").splitlines()

    source_to_kb_lines: dict[str, list[str]] = defaultdict(list)
    current_source: str | None = None

    for line in lines:
        if line.startswith("### File: "):
            source = line[len("### File: ") :].strip()
            current_source = source if source.startswith("outputs/") else None
            continue
        if line.startswith("- Key Insights: ") and current_source:
            source_to_kb_lines[current_source].append(line[len("- Key Insights: ") :].strip())

    file_summary = {
        "source_links_checked": 0,
        "source_missing_on_disk": 0,
        "sources_with_issues": 0,
        "transcript_units_checked": 0,
        "kb_key_insights_checked": 0,
    }
    file_issues: list[dict[str, object]] = []
    sources_seen: set[str] = set()

    for source_rel, kb_lines in source_to_kb_lines.items():
        sources_seen.add(source_rel)
        file_summary["source_links_checked"] += 1
        source_path = repo_root / source_rel.replace("/", "\\")

        if not source_path.exists():
            file_summary["source_missing_on_disk"] += 1
            file_issues.append(
                {
                    "type": "source_missing",
                    "kb_file": str(kb_file.relative_to(repo_root)).replace("\\", "/"),
                    "source": source_rel,
                }
            )
            continue

        transcript_units = split_units(source_path.read_text(encoding="utf-8", errors="ignore"))
        kb_units = [re.sub(r"\s+", " ", item.strip()) for item in kb_lines if item.strip()]

        file_summary["transcript_units_checked"] += len(transcript_units)
        file_summary["kb_key_insights_checked"] += len(kb_units)

        t_counter = Counter(transcript_units)
        k_counter = Counter(kb_units)

        missing_counter = t_counter - k_counter
        extra_counter = k_counter - t_counter
        missing_count = sum(missing_counter.values())
        extra_count = sum(extra_counter.values())

        if missing_count or extra_count:
            file_summary["sources_with_issues"] += 1
            file_issues.append(
                {
                    "type": "content_mismatch",
                    "kb_file": str(kb_file.relative_to(repo_root)).replace("\\", "/"),
                    "source": source_rel,
                    "transcript_units": len(transcript_units),
                    "kb_units": len(kb_units),
                    "missing_count": missing_count,
                    "extra_count": extra_count,
                    "sample_missing": list(missing_counter.elements())[:5],
                    "sample_extra": list(extra_counter.elements())[:5],
                }
            )

    return file_summary, file_issues, sources_seen


def run_audit(repo_root: Path, kb_root: Path, required_source_root: str | None = None) -> dict[str, Any]:
    kb_files = collect_kb_topic_files(kb_root)
    summary = {
        "kb_files_checked": len(kb_files),
        "source_links_checked": 0,
        "source_missing_on_disk": 0,
        "sources_with_issues": 0,
        "kb_files_with_issues": 0,
        "total_transcript_units_checked": 0,
        "total_kb_key_insights_checked": 0,
    }
    if required_source_root:
        summary.update(
            {
                "required_source_total": 0,
                "required_source_covered": 0,
                "required_source_missing": 0,
                "outside_required_source_root": 0,
            }
        )
    issues: list[dict[str, object]] = []
    linked_sources: set[str] = set()

    for kb_file in kb_files:
        file_summary, file_issues, file_sources = audit_file(kb_file, repo_root)
        summary["source_links_checked"] += file_summary["source_links_checked"]
        summary["source_missing_on_disk"] += file_summary["source_missing_on_disk"]
        summary["sources_with_issues"] += file_summary["sources_with_issues"]
        summary["total_transcript_units_checked"] += file_summary["transcript_units_checked"]
        summary["total_kb_key_insights_checked"] += file_summary["kb_key_insights_checked"]
        linked_sources.update(file_sources)

        if file_issues:
            summary["kb_files_with_issues"] += 1
            issues.extend(file_issues)

    if required_source_root:
        required_sources = collect_required_sources(repo_root, required_source_root)
        missing_required_sources = sorted(required_sources - linked_sources)
        outside_required_sources = sorted(
            source for source in linked_sources if not source.startswith(required_source_root.rstrip("/") + "/")
        )

        summary["required_source_total"] = len(required_sources)
        summary["required_source_covered"] = len(required_sources & linked_sources)
        summary["required_source_missing"] = len(missing_required_sources)
        summary["outside_required_source_root"] = len(outside_required_sources)

        for source in missing_required_sources:
            issues.append(
                {
                    "type": "required_source_missing",
                    "required_source_root": required_source_root,
                    "source": source,
                }
            )

        for source in outside_required_sources:
            issues.append(
                {
                    "type": "source_outside_required_root",
                    "required_source_root": required_source_root,
                    "source": source,
                }
            )

    return {
        "summary": summary,
        "issues_count": len(issues),
        "issues": issues,
    }


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Audit line-level integrity between KB Key Insights and source transcripts.")
    parser.add_argument(
        "--repo-root",
        default=str(SCRIPT_ROOT),
        help="Repository root path",
    )
    parser.add_argument(
        "--kb-root",
        default=str(SCRIPT_ROOT / "Knowledge Base"),
        help="Knowledge Base root path",
    )
    parser.add_argument(
        "--report",
        default=str(SCRIPT_ROOT / "cache" / "kb_line_integrity_report.json"),
        help="Path for JSON report output",
    )
    parser.add_argument(
        "--required-source-root",
        default=None,
        help="Optional transcript root (relative to repo root, e.g. outputs/AWS AI) that must be fully covered by KB source links.",
    )
    parser.add_argument(
        "--fail-on-issues",
        action="store_true",
        help="Exit with code 1 if any issue is found",
    )
    return parser.parse_args()


def main() -> int:
    args = parse_args()
    repo_root = Path(args.repo_root)
    kb_root = Path(args.kb_root)
    report_path = Path(args.report)

    report: dict[str, Any] = run_audit(
        repo_root=repo_root,
        kb_root=kb_root,
        required_source_root=args.required_source_root,
    )
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2, ensure_ascii=False), encoding="utf-8")

    print(json.dumps({
        "summary": report["summary"],
        "issues_count": report["issues_count"],
        "report_path": str(report_path),
    }, indent=2))

    if args.fail_on_issues and report.get("issues_count", 0) > 0:
        return 1
    return 0


if __name__ == "__main__":
    sys.exit(main())
