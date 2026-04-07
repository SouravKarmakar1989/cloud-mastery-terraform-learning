from __future__ import annotations

import argparse
import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Iterable, List

COURSES = [
    "learn-kubernetes",
    "certified-kubernetes-application-developer",
    "certified-kubernetes-administrator-with-practice-tests",
]

TYPE_TAGS = [
    "Concept",
    "Command",
    "YAML/Configuration",
    "Architecture",
    "Troubleshooting",
    "Warning/Pitfall",
    "Exam Tip",
    "Best Practice",
    "Comparison",
    "Implementation Step",
    "Operational Insight",
]

COMMAND_PREFIXES = (
    "kubectl",
    "k ",
    "kubeadm",
    "kubelet",
    "kube-apiserver",
    "etcdctl",
    "helm",
    "docker",
    "containerd",
    "crictl",
    "minikube",
    "systemctl",
    "journalctl",
    "openssl",
    "curl",
    "cat ",
    "grep ",
    "awk ",
    "sed ",
    "vi ",
    "nano ",
)

YAML_KEY_HINTS = {
    "apiVersion",
    "kind",
    "metadata",
    "spec",
    "status",
    "data",
    "stringData",
    "labels",
    "annotations",
    "containers",
    "initContainers",
    "volumes",
    "volumeMounts",
    "env",
    "ports",
    "selector",
    "template",
    "matchLabels",
    "resources",
    "limits",
    "requests",
}


@dataclass
class Entry:
    entry_type: str
    course: str
    module: str
    lecture: str
    file_name: str
    topic: str
    line_start: int
    line_end: int
    content: List[str]
    notes: List[str]


def is_command_line(text: str) -> bool:
    t = text.strip()
    if not t:
        return False
    if t.startswith("$"):
        return True
    if t.startswith("#") and any(p in t for p in ("kubectl", "kubeadm", "helm", "docker", "minikube")):
        return True
    lower = t.lower()
    return any(lower.startswith(prefix) for prefix in COMMAND_PREFIXES)


def looks_like_yaml_line(text: str) -> bool:
    stripped = text.strip()
    if not stripped:
        return False
    if stripped.startswith("---") or stripped.startswith("..."):
        return True
    if re.match(r"^-\s+[A-Za-z0-9_.-]+:\s*.*$", stripped):
        return True
    m = re.match(r"^([A-Za-z_][A-Za-z0-9_.-]*)\s*:\s*.*$", stripped)
    if m:
        key = m.group(1)
        if key in YAML_KEY_HINTS:
            return True
        if text.startswith(" ") or text.startswith("\t"):
            return True
    return False


def classify_text(lines: List[str]) -> str:
    joined = " ".join(l.strip() for l in lines).lower()
    if any(is_command_line(l) for l in lines):
        return "Command"
    if all(looks_like_yaml_line(l) for l in lines):
        return "YAML/Configuration"
    if any(w in joined for w in ("warning", "pitfall", "do not", "don't", "deprecated", "caution")):
        return "Warning/Pitfall"
    if any(w in joined for w in ("troubleshoot", "issue", "error", "fails", "failure", "fix", "debug")):
        return "Troubleshooting"
    if any(w in joined for w in ("best practice", "recommended", "should", "avoid")):
        return "Best Practice"
    if any(w in joined for w in ("exam", "cka", "ckad", "certification", "tip")):
        return "Exam Tip"
    if any(w in joined for w in ("vs", "versus", "difference", "compare", "comparison")):
        return "Comparison"
    if any(w in joined for w in ("architecture", "api server", "scheduler", "controller manager", "etcd", "kubelet", "kube-proxy")):
        return "Architecture"
    if any(w in joined for w in ("step", "first", "then", "next", "create", "deploy", "configure", "apply")):
        return "Implementation Step"
    if any(w in joined for w in ("runtime", "internally", "behavior", "operational", "in production")):
        return "Operational Insight"
    return "Concept"


def normalize_for_repeat(lines: Iterable[str]) -> str:
    txt = "\n".join(l.strip() for l in lines if l.strip())
    txt = re.sub(r"\s+", " ", txt.strip().lower())
    return txt


def infer_topic(file_name: str) -> str:
    stem = Path(file_name).stem
    stem = re.sub(r"^\d+[_\-\s]*", "", stem)
    return stem.strip() or Path(file_name).stem


def split_prose_units(text: str) -> List[str]:
    stripped = text.strip()
    if not stripped:
        return []
    # Transcript files often store full lecture paragraphs on one physical line.
    parts = re.split(r"(?<=[.!?])\s+(?=[A-Z0-9])", stripped)
    units = [p.strip() for p in parts if p.strip()]
    return units or [stripped]


def parse_entries_for_file(course: str, file_path: Path) -> List[Entry]:
    module = file_path.parent.name
    file_name = file_path.name
    lecture = Path(file_name).stem
    topic = infer_topic(file_name)

    raw_lines = file_path.read_text(encoding="utf-8", errors="replace").splitlines()
    entries: List[Entry] = []

    i = 0
    while i < len(raw_lines):
        line = raw_lines[i]
        if not line.strip():
            i += 1
            continue

        start = i + 1

        if is_command_line(line):
            block = [line]
            i += 1
            while i < len(raw_lines) and raw_lines[i].strip() and (
                is_command_line(raw_lines[i]) or raw_lines[i].startswith(" ") or raw_lines[i].startswith("\t")
            ):
                block.append(raw_lines[i])
                i += 1
            entries.append(
                Entry(
                    entry_type="Command",
                    course=course,
                    module=module,
                    lecture=lecture,
                    file_name=file_name,
                    topic=topic,
                    line_start=start,
                    line_end=start + len(block) - 1,
                    content=block,
                    notes=[],
                )
            )
            continue

        if looks_like_yaml_line(line):
            block = [line]
            i += 1
            while i < len(raw_lines) and raw_lines[i].strip() and (
                looks_like_yaml_line(raw_lines[i])
                or raw_lines[i].startswith(" ")
                or raw_lines[i].startswith("\t")
                or raw_lines[i].strip().startswith("#")
            ):
                block.append(raw_lines[i])
                i += 1
            entries.append(
                Entry(
                    entry_type="YAML/Configuration",
                    course=course,
                    module=module,
                    lecture=lecture,
                    file_name=file_name,
                    topic=topic,
                    line_start=start,
                    line_end=start + len(block) - 1,
                    content=block,
                    notes=["Preserved YAML/config structure as presented in transcript."],
                )
            )
            continue

        units = split_prose_units(line)
        for unit in units:
            notes: List[str] = []
            if len(units) > 1:
                notes.append("Physical transcript line contained multiple sentences; preserved as sequential sentence-level entries.")
            entries.append(
                Entry(
                    entry_type=classify_text([unit]),
                    course=course,
                    module=module,
                    lecture=lecture,
                    file_name=file_name,
                    topic=topic,
                    line_start=start,
                    line_end=start,
                    content=[unit],
                    notes=notes,
                )
            )
        i += 1

    return entries


def command_notes(command_lines: List[str]) -> List[str]:
    notes: List[str] = []
    for line in command_lines:
        tokens = line.strip().split()
        if not tokens:
            continue
        flags = [t for t in tokens if t.startswith("-")]
        if flags:
            notes.append("Flags/options detected: " + ", ".join(flags))
    if not notes:
        notes.append("Command preserved exactly as transcript evidence.")
    return notes


def render_entry(entry: Entry, idx: int, repeated_in: List[str]) -> str:
    out: List[str] = []
    out.append(f"## Entry {idx}")
    out.append(f"Type: {entry.entry_type}  ")

    if entry.entry_type == "Command":
        out.append("")
        out.append("Command:")
        out.append("```bash")
        out.extend(entry.content)
        out.append("```")
        out.append("")
        out.append("Explanation:")
        for n in command_notes(entry.content):
            out.append(f"- {n}")
    elif entry.entry_type == "YAML/Configuration":
        out.append("")
        out.append("Content:")
        out.append("```yaml")
        out.extend(entry.content)
        out.append("```")
    else:
        out.append("")
        out.append("Content:")
        out.extend(entry.content)

    out.append("")
    out.append("Source:")
    out.append(f"- Course: {entry.course}")
    out.append(f"- Module: {entry.module}")
    out.append(f"- Lecture: {entry.lecture}")
    out.append(f"- File: {entry.file_name}")
    out.append(f"- Topic: {entry.topic}")
    out.append(f"- Line Context: Lines {entry.line_start}-{entry.line_end} from transcript")

    out.append("")
    out.append("Notes:")
    for note in entry.notes:
        out.append(f"- {note}")
    if repeated_in:
        out.append("- Repeated In:")
        for c in repeated_in:
            out.append(f"  - {c}")
    if not entry.notes and not repeated_in:
        out.append("- No additional nuance beyond transcript evidence.")

    out.append("\n---\n")
    return "\n".join(out)


def gather_transcript_files(outputs_root: Path) -> List[Path]:
    files: List[Path] = []
    for course in COURSES:
        base = outputs_root / course
        if not base.exists():
            continue
        for path in sorted(base.rglob("*.txt")):
            files.append(path)
    return files


def write_extraction(
    outputs_root: Path,
    extraction_root: Path,
) -> tuple[int, int]:
    files = gather_transcript_files(outputs_root)
    all_entries: dict[Path, List[Entry]] = {}
    repeats: defaultdict[str, set[str]] = defaultdict(set)

    for file_path in files:
        course = file_path.parts[-3]
        entries = parse_entries_for_file(course, file_path)
        all_entries[file_path] = entries
        for e in entries:
            key = normalize_for_repeat(e.content)
            if key:
                repeats[key].add(e.course)

    written_files = 0
    written_entries = 0

    for file_path, entries in all_entries.items():
        course = file_path.parts[-3]
        module = file_path.parts[-2]
        lecture = file_path.stem

        rel = file_path.relative_to(outputs_root)
        out_path = extraction_root / rel.with_suffix(".extraction.md")
        out_path.parent.mkdir(parents=True, exist_ok=True)

        header = [
            f"# Extraction: {course} / {module} / {lecture}",
            "",
            "---",
            "",
        ]

        body: List[str] = []
        for idx, entry in enumerate(entries, 1):
            key = normalize_for_repeat(entry.content)
            repeated_in = sorted(repeats[key]) if len(repeats[key]) > 1 else []
            body.append(render_entry(entry, idx, repeated_in))
            written_entries += 1

        out_path.write_text("\n".join(header + body), encoding="utf-8")
        written_files += 1

    return written_files, written_entries


def main() -> None:
    parser = argparse.ArgumentParser(description="Zero-loss Kubernetes transcript extractor")
    parser.add_argument(
        "--outputs-root",
        default="apps/knowledge-pipeline/outputs",
        help="Root folder containing course transcript outputs",
    )
    parser.add_argument(
        "--extraction-root",
        default="apps/knowledge-pipeline/outputs/zero-loss-k8s-extraction",
        help="Root folder where per-file extraction markdown is written",
    )
    args = parser.parse_args()

    repo_root = Path(__file__).resolve().parents[2]
    outputs_root = (repo_root / args.outputs_root).resolve()
    extraction_root = (repo_root / args.extraction_root).resolve()

    written_files, written_entries = write_extraction(outputs_root, extraction_root)

    print(f"Processed transcript files: {written_files}")
    print(f"Total extracted entries: {written_entries}")
    print(f"Extraction output root: {extraction_root}")


if __name__ == "__main__":
    main()
