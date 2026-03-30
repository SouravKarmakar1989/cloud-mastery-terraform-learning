from __future__ import annotations

import argparse
import re
from datetime import datetime, timezone
from pathlib import Path

SCRIPT_ROOT = Path(__file__).resolve().parent


def parse_args() -> argparse.Namespace:
    parser = argparse.ArgumentParser(description="Build top-level master index across all knowledge base folders.")
    parser.add_argument(
        "--kb-root",
        default=str(SCRIPT_ROOT / "Knowledge Base"),
        help="Knowledge Base root folder",
    )
    parser.add_argument(
        "--out-file",
        default=str(SCRIPT_ROOT / "Knowledge Base" / "00_Master_Index.md"),
        help="Top-level master index markdown file path",
    )
    return parser.parse_args()


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8", errors="ignore")


def parse_total_lines(master_text: str) -> int:
    match = re.search(r"\| \*\*Total\*\* \| \*\*(\d+)\*\* \|", master_text)
    if match:
        return int(match.group(1))
    return 0


def parse_title(master_text: str, folder_name: str) -> str:
    for line in master_text.splitlines():
        if line.startswith("# "):
            title = line[2:].strip()
            title = re.sub(r"\s*[\-—–]\s*Master Index$", "", title)
            return title
    return folder_name


def parse_topic_line_count(topic_text: str) -> int:
    for line in topic_text.splitlines():
        if line.startswith("- Extracted non-empty transcript lines:"):
            value = line.split(":", 1)[1].strip()
            try:
                return int(value)
            except ValueError:
                return 0
    return 0


def gather_kb_data(kb_root: Path) -> list[dict[str, object]]:
    data = []
    for folder in sorted([p for p in kb_root.iterdir() if p.is_dir()]):
        master = folder / "00_Master_Index.md"
        if not master.exists():
            continue

        master_text = read_text(master)
        topic_files = sorted([p for p in folder.glob("*.md") if p.name != "00_Master_Index.md"])

        total_lines = parse_total_lines(master_text)
        if total_lines == 0 and topic_files:
            total_lines = sum(parse_topic_line_count(read_text(topic)) for topic in topic_files)

        data.append(
            {
                "folder_name": folder.name,
                "title": parse_title(master_text, folder.name),
                "folder_path": folder,
                "master_path": master,
                "topic_files": topic_files,
                "topic_count": len(topic_files),
                "total_lines": total_lines,
            }
        )
    return data


def build_markdown(kb_root: Path, data: list[dict[str, object]]) -> str:
    total_topics = sum(int(item["topic_count"]) for item in data)
    total_lines = sum(int(item["total_lines"]) for item in data)
    generated_at = datetime.now(timezone.utc).strftime("%Y-%m-%d %H:%M UTC")

    lines: list[str] = []
    lines.append("# Knowledge Base - Master Index")
    lines.append("")
    lines.append("Top-level index across all knowledge base folders in this repository.")
    lines.append("")
    lines.append("## Summary")
    lines.append(f"- Knowledge base folders: {len(data)}")
    lines.append(f"- Topic files: {total_topics}")
    lines.append(f"- Extracted transcript lines (from folder indexes): {total_lines}")
    lines.append(f"- Last generated: {generated_at}")
    lines.append("")
    lines.append("## Knowledge Base Folders")
    lines.append("| # | Knowledge Base | Folder | Topics | Extracted Lines | Folder Index |")
    lines.append("|---|---|---|---:|---:|---|")

    for idx, item in enumerate(data, start=1):
        master_rel = item["master_path"].relative_to(kb_root.parent).as_posix()
        lines.append(
            f"| {idx:02d} | {item['title']} | {item['folder_name']} | {item['topic_count']} | {item['total_lines']} | [{item['master_path'].name}]({master_rel.replace(' ', '%20')}) |"
        )

    lines.append("")
    lines.append("## Folder Topic Map")

    for item in data:
        lines.append("")
        lines.append(f"### {item['title']}")
        lines.append(f"- Folder: {item['folder_name']}")
        lines.append(f"- Topics: {item['topic_count']}")
        lines.append(f"- Extracted lines: {item['total_lines']}")
        topic_files: list[Path] = item["topic_files"]
        for topic in topic_files:
            topic_rel = topic.relative_to(kb_root.parent).as_posix()
            lines.append(f"- [{topic.name}]({topic_rel.replace(' ', '%20')})")

    lines.append("")
    lines.append("## Operations")
    lines.append("- Rebuild top-level index: python build_knowledge_base_master_index.py")
    lines.append("- Re-run integrity audit: python audit_knowledge_base_integrity.py")

    return "\n".join(lines) + "\n"


def main() -> None:
    args = parse_args()
    kb_root = Path(args.kb_root)
    out_file = Path(args.out_file)

    data = gather_kb_data(kb_root)
    markdown = build_markdown(kb_root, data)

    out_file.parent.mkdir(parents=True, exist_ok=True)
    out_file.write_text(markdown, encoding="utf-8")
    print(f"Wrote {out_file}")
    print(f"Indexed {len(data)} folders")


if __name__ == "__main__":
    main()
