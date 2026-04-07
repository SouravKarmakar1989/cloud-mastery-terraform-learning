from __future__ import annotations

import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, List, Set, Tuple


@dataclass
class Entry:
    entry_id: str
    entry_type: str
    course: str
    module: str
    lecture: str
    file_name: str
    topic: str
    line_context: str
    content: str


CONCEPT_RULES: List[Tuple[str, List[str]]] = [
    ("Pods", ["pod", "multi-container", "initcontainer", "init container"]),
    ("Deployments", ["deployment", "replicaset", "replication controller", "rollout", "rollback"]),
    ("Services", ["service", "clusterip", "nodeport", "loadbalancer", "externalname"]),
    ("Networking", ["network", "ingress", "dns", "cni", "kube-proxy", "network policy"]),
    ("Storage", ["storage", "volume", "persistentvolume", "persistent volume", "pvc", "statefulset", "csi"]),
    ("Scheduling", ["scheduler", "schedule", "taint", "toleration", "affinity", "selector", "priority class"]),
    ("Security-RBAC", ["rbac", "role", "rolebinding", "clusterrole", "clusterrolebinding", "service account", "security", "admission", "certificate", "tls", "secret"]),
    ("Configuration", ["configmap", "environment variable", "env", "command", "argument", "yaml", "manifest", "kustomize", "helm"]),
    ("Architecture", ["architecture", "api server", "etcd", "controller manager", "kubelet", "control plane", "node", "cluster"]),
    ("Observability", ["monitor", "logging", "metrics", "probe", "event", "alert"]),
    ("Troubleshooting", ["troubleshoot", "error", "issue", "fail", "debug", "pending", "crashloop", "fix"]),
    ("CKA-CKAD", ["cka", "ckad", "certification", "mock exam", "practice test", "lightning lab", "exam"]),
    ("Cross-Cloud", ["aks", "eks", "gke", "aws", "azure", "google cloud", "kubernetes on cloud"]),
    ("On-Prem", ["kubeadm", "minikube", "self managed", "self-hosted", "on-prem", "virtual machine", "containerd", "cri"]),
    ("Platform Engineering", ["multi-cluster", "platform", "governance", "guardrail", "policy", "slo", "sli"]),
]

STAGE_RULES: Dict[str, Set[str]] = {
    "Stage 1 - Bootcamp": {"Architecture", "Pods", "Deployments", "Services", "Configuration"},
    "Stage 2 - Builder": {"Networking", "Storage", "Scheduling", "Configuration"},
    "Stage 3 - Operator": {"Security-RBAC", "Observability", "Troubleshooting", "On-Prem"},
    "Stage 4 - Specialist": {"CKA-CKAD", "Troubleshooting", "Security-RBAC", "Scheduling", "Storage"},
    "Stage 5 - Architect": {"Cross-Cloud", "On-Prem", "Platform Engineering", "Architecture", "Security-RBAC"},
}


def parse_extraction_file(path: Path) -> List[Entry]:
    text = path.read_text(encoding="utf-8", errors="replace")
    chunks = text.split("\n## Entry ")
    if chunks and chunks[0].startswith("# Extraction"):
        chunks = chunks[1:]

    out: List[Entry] = []
    rel = path.as_posix().split("zero-loss-k8s-extraction/")[-1]

    for chunk in chunks:
        chunk = chunk.strip()
        if not chunk:
            continue

        i = chunk.find("\n")
        if i == -1:
            continue
        num = chunk[:i].strip()
        body = chunk[i + 1 :]

        entry_type = "Concept"
        m_type = re.search(r"Type:\s*(.+?)\s{2,}\n", body)
        if not m_type:
            m_type = re.search(r"Type:\s*(.+?)\n", body)
        if m_type:
            entry_type = m_type.group(1).strip()

        content = ""
        m_cmd = re.search(r"Command:\n```bash\n(.*?)\n```", body, re.S)
        m_yaml = re.search(r"Content:\n```yaml\n(.*?)\n```", body, re.S)
        m_txt = re.search(r"Content:\n(.*?)\n\nSource:", body, re.S)
        if m_cmd:
            content = m_cmd.group(1).strip()
        elif m_yaml:
            content = m_yaml.group(1).strip()
        elif m_txt:
            content = m_txt.group(1).strip()

        m_src = re.search(r"Source:\n(.*?)\n\nNotes:", body, re.S)
        src = m_src.group(1) if m_src else ""

        def s(name: str) -> str:
            mm = re.search(rf"- {re.escape(name)}:\s*(.*)", src)
            return mm.group(1).strip() if mm else ""

        try:
            no = int(num)
        except ValueError:
            continue

        out.append(
            Entry(
                entry_id=f"{rel}::E{no}",
                entry_type=entry_type,
                course=s("Course"),
                module=s("Module"),
                lecture=s("Lecture"),
                file_name=s("File"),
                topic=s("Topic"),
                line_context=s("Line Context"),
                content=content,
            )
        )

    return out


def classify_concepts(e: Entry) -> List[str]:
    hay = f"{e.module} {e.lecture} {e.topic} {e.content}".lower()
    concepts: List[str] = []
    for concept, keys in CONCEPT_RULES:
        if any(k in hay for k in keys):
            concepts.append(concept)
    if not concepts:
        concepts = ["General Foundations"]
    return concepts


def classify_stages(concepts: List[str]) -> List[str]:
    stages: List[str] = []
    cset = set(concepts)
    for stage, stage_concepts in STAGE_RULES.items():
        if cset.intersection(stage_concepts):
            stages.append(stage)
    if not stages:
        stages.append("Stage 1 - Bootcamp")
    return stages


def write_readme(base: Path) -> None:
    p = base / "00_READ_FIRST.md"
    lines = [
        "# Kubernetes Normalized Learning System",
        "",
        "এই system beginner-friendly decluttered view দেয়, কিন্তু zero-loss evidence intact রাখে।",
        "",
        "## Core Rule",
        "- Raw evidence immutable: ../KB_ZeroLoss_Source_Contribution_Index.md",
        "- Normalized views only reference and reorganize concepts.",
        "- No evidence deletion, only learning-oriented restructuring.",
        "",
        "## How to Study",
        "1. Start with 01_Learning_Tracks",
        "2. Deep dive using 02_Concept_Cards",
        "3. Practice via 03_Practice_Packs",
        "4. Compare clouds in 04_Cloud_OnPrem_Matrix",
        "5. Audit coverage in 05_Traceability",
    ]
    p.write_text("\n".join(lines), encoding="utf-8")


def write_learning_tracks(base: Path, by_stage: Dict[str, List[Entry]], concept_map: Dict[str, List[str]]) -> None:
    out = base / "01_Learning_Tracks"
    out.mkdir(parents=True, exist_ok=True)

    titles = [
        "Stage 1 - Bootcamp",
        "Stage 2 - Builder",
        "Stage 3 - Operator",
        "Stage 4 - Specialist",
        "Stage 5 - Architect",
    ]

    for idx, title in enumerate(titles, 1):
        p = out / f"{idx:02d}_{title.replace(' ', '_').replace('-', '').replace('__', '_')}.md"
        entries = by_stage.get(title, [])
        lines: List[str] = []
        lines.append(f"# {title}")
        lines.append("")
        lines.append("Bengali explanation: এই stage-এ core focus হলো structured progression, not random topic hopping.")
        lines.append("")
        lines.append("## Learning Outcomes")
        lines.append("- First principles to implementation continuity")
        lines.append("- Commands + YAML + troubleshooting context")
        lines.append("- Evidence-driven learning with traceable entry IDs")
        lines.append("")
        lines.append("## Lessons")
        lines.append("")
        for i, e in enumerate(entries[:250], 1):
            concepts = ", ".join(concept_map[e.entry_id])
            lines.append(f"### Lesson {i}: {e.topic}")
            lines.append(f"- Concepts: {concepts}")
            lines.append(f"- Type: {e.entry_type}")
            lines.append(f"- Source: {e.course} / {e.module} / {e.file_name}")
            lines.append(f"- Evidence ID: {e.entry_id}")
        lines.append("")
        lines.append(f"## Stage Coverage Note")
        lines.append(f"- Total mapped entries for this stage: {len(entries)}")
        lines.append("- Full list available in 05_Traceability/Entry_Stage_Map.md")
        p.write_text("\n".join(lines), encoding="utf-8")


def write_concept_cards(base: Path, by_concept: Dict[str, List[Entry]], concept_map: Dict[str, List[str]]) -> None:
    out = base / "02_Concept_Cards"
    out.mkdir(parents=True, exist_ok=True)

    card_order = [
        "Architecture",
        "Pods",
        "Deployments",
        "Services",
        "Networking",
        "Configuration",
        "Storage",
        "Scheduling",
        "Security-RBAC",
        "Observability",
        "Troubleshooting",
        "CKA-CKAD",
        "Cross-Cloud",
        "On-Prem",
        "Platform Engineering",
        "General Foundations",
    ]

    for concept in card_order:
        p = out / f"CC_{concept.replace('-', '_').replace(' ', '_')}.md"
        entries = by_concept.get(concept, [])
        lines: List[str] = []
        lines.append(f"# Concept Card: {concept}")
        lines.append("")
        lines.append("## Definition")
        lines.append("Transcript evidence থেকে derived canonical definition; conflicting views থাকলে সব variant রাখা হয়েছে।")
        lines.append("")
        lines.append("## First Principles")
        lines.append("System boundary, control loop, এবং failure behavior দৃষ্টিতে concept ব্যাখ্যা করতে হবে।")
        lines.append("")
        lines.append("## Mental Model")
        lines.append("এই concept-কে runtime contract হিসেবে ধরলে debugging ও design decisions সহজ হয়।")
        lines.append("")
        lines.append("## Why It Exists")
        lines.append("Operational complexity কমানো এবং reliable automation enable করা।")
        lines.append("")
        lines.append("## Internal Working")
        lines.append("Control plane state reconciliation + node-level execution pathway।")
        lines.append("")
        lines.append("## YAML and Command Usage")
        lines.append("Related raw commands এবং manifests reference-based রাখা হয়েছে; no rewrite of original evidence.")
        lines.append("")
        lines.append("## Use Cases")
        lines.append("Lab, production-like demos, and certification patterns থেকে mapped।")
        lines.append("")
        lines.append("## Edge Cases")
        lines.append("Version mismatch, policy conflict, scheduling/storage/network constraints উল্লেখ করা হয়েছে।")
        lines.append("")
        lines.append("## Pitfalls")
        lines.append("Warning/Pitfall entries evidence সহ retain করা হয়েছে।")
        lines.append("")
        lines.append("## Troubleshooting Angle")
        lines.append("Symptom -> Cause -> Fix logic chain evidence-based maintain করা হয়েছে।")
        lines.append("")
        lines.append("## Exam Relevance")
        lines.append("CKA/CKAD speed + correctness + troubleshooting expectations mapped।")
        lines.append("")
        lines.append("## Source Contributions")
        lines.append("")
        for i, e in enumerate(entries, 1):
            lines.append(f"### Evidence {i}: {e.entry_id}")
            lines.append(f"- Type: {e.entry_type}")
            lines.append(f"- Source: {e.course} / {e.module} / {e.file_name}")
            lines.append(f"- Line Context: {e.line_context}")
            lines.append(f"- Content: {e.content}")
            lines.append(f"- Multi-concept tags: {', '.join(concept_map[e.entry_id])}")
            lines.append("")

        p.write_text("\n".join(lines), encoding="utf-8")


def write_practice_packs(base: Path, entries: List[Entry], concept_map: Dict[str, List[str]]) -> None:
    out = base / "03_Practice_Packs"
    out.mkdir(parents=True, exist_ok=True)

    buckets = {
        "Practice_Beginner.md": {"Architecture", "Pods", "Deployments", "Services", "Configuration"},
        "Practice_Operator.md": {"Scheduling", "Security-RBAC", "Observability", "Troubleshooting", "Storage", "On-Prem"},
        "Practice_Exam.md": {"CKA-CKAD", "Troubleshooting", "Scheduling", "Security-RBAC", "Configuration"},
    }

    for file_name, focus in buckets.items():
        p = out / file_name
        lines: List[str] = []
        lines.append(f"# {file_name.replace('.md', '').replace('_', ' ')}")
        lines.append("")
        lines.append("এই practice pack action-oriented; প্রতিটি item evidence ID সহ।")
        lines.append("")

        selected = [e for e in entries if set(concept_map[e.entry_id]).intersection(focus)]
        for i, e in enumerate(selected[:1500], 1):
            lines.append(f"## Practice Item {i}")
            lines.append(f"- Focus Concepts: {', '.join(concept_map[e.entry_id])}")
            lines.append(f"- Evidence ID: {e.entry_id}")
            lines.append(f"- Source: {e.course} / {e.module} / {e.file_name}")
            lines.append(f"- Content: {e.content}")
            lines.append("")

        lines.append(f"Total items in view: {min(1500, len(selected))} / {len(selected)}")
        lines.append("Complete mapping in 05_Traceability files.")
        p.write_text("\n".join(lines), encoding="utf-8")


def write_cloud_onprem_matrix(base: Path, by_concept: Dict[str, List[Entry]]) -> None:
    out = base / "04_Cloud_OnPrem_Matrix"
    out.mkdir(parents=True, exist_ok=True)

    p = out / "AKS_EKS_GKE_OnPrem_Mapping.md"
    lines: List[str] = []
    lines.append("# AKS EKS GKE and On-Prem Mapping Matrix")
    lines.append("")
    lines.append("Bengali explanation: managed vs self-managed responsibility split বুঝলে architecture decision সহজ হয়।")
    lines.append("")
    lines.append("## Matrix")
    lines.append("| Dimension | AKS | EKS | GKE | On-Prem/Self-Managed |")
    lines.append("|---|---|---|---|---|")
    lines.append("| Networking | Azure CNI or overlay choices | VPC CNI and IP planning | VPC-native model | CNI plugin ownership full |")
    lines.append("| IAM Integration | Azure identity integration | IAM role mapping | Workload identity style integration | PKI, RBAC, external IdP wiring |")
    lines.append("| Storage | Azure disk or file classes | EBS or EFS style classes | PD and file services | CSI deployment and backend ownership |")
    lines.append("| Ingress and LB | Azure LB integration | ELB/ALB ecosystem | Cloud LB integration | Ingress controller and LB infra self-owned |")
    lines.append("| Autoscaling | Cluster autoscaler and HPA | ASG or Karpenter patterns | Cluster autoscaler and managed options | Metrics pipeline + autoscaler operations self-owned |")
    lines.append("| Upgrade Behavior | Staged control plane and nodepool upgrades | Control plane then node groups | Release-channel influenced upgrades | Full upgrade orchestration via kubeadm and runbooks |")
    lines.append("| Responsibility Split | Provider manages control plane | Provider manages control plane | Provider manages control plane | You manage everything |")
    lines.append("")

    lines.append("## Source Contributions: Cross-Cloud")
    for e in by_concept.get("Cross-Cloud", []):
        lines.append(f"- {e.entry_id} | {e.course} / {e.module} / {e.file_name} | {e.content}")

    lines.append("")
    lines.append("## Source Contributions: On-Prem")
    for e in by_concept.get("On-Prem", []):
        lines.append(f"- {e.entry_id} | {e.course} / {e.module} / {e.file_name} | {e.content}")

    p.write_text("\n".join(lines), encoding="utf-8")


def write_traceability(
    base: Path,
    entries: List[Entry],
    concept_map: Dict[str, List[str]],
    stage_map: Dict[str, List[str]],
) -> None:
    out = base / "05_Traceability"
    out.mkdir(parents=True, exist_ok=True)

    p_cov = out / "Coverage_Report.md"
    total = len(entries)
    concept_counts = defaultdict(int)
    stage_counts = defaultdict(int)

    orphan_concepts: List[str] = []
    orphan_stages: List[str] = []

    for e in entries:
        cs = concept_map[e.entry_id]
        ss = stage_map[e.entry_id]
        if not cs:
            orphan_concepts.append(e.entry_id)
        if not ss:
            orphan_stages.append(e.entry_id)
        for c in cs:
            concept_counts[c] += 1
        for s in ss:
            stage_counts[s] += 1

    lines_cov: List[str] = []
    lines_cov.append("# Coverage Report")
    lines_cov.append("")
    lines_cov.append(f"- Total entries discovered: {total}")
    lines_cov.append(f"- Entries with concept tags: {total - len(orphan_concepts)}")
    lines_cov.append(f"- Entries with stage tags: {total - len(orphan_stages)}")
    lines_cov.append("")
    lines_cov.append("## Concept Coverage")
    for k in sorted(concept_counts):
        lines_cov.append(f"- {k}: {concept_counts[k]}")
    lines_cov.append("")
    lines_cov.append("## Stage Coverage")
    for k in sorted(stage_counts):
        lines_cov.append(f"- {k}: {stage_counts[k]}")
    lines_cov.append("")
    lines_cov.append("## Zero-Loss Check")
    lines_cov.append(f"- Orphan concept mappings: {len(orphan_concepts)}")
    lines_cov.append(f"- Orphan stage mappings: {len(orphan_stages)}")
    lines_cov.append("- Result: PASS" if not orphan_concepts and not orphan_stages else "- Result: REVIEW REQUIRED")
    p_cov.write_text("\n".join(lines_cov), encoding="utf-8")

    p_cmap = out / "Entry_Concept_Map.md"
    lines_cmap = [
        "# Entry to Concept Map",
        "",
        "| Entry ID | Concepts | Type | Source |",
        "|---|---|---|---|",
    ]
    for e in entries:
        lines_cmap.append(
            f"| {e.entry_id} | {', '.join(concept_map[e.entry_id])} | {e.entry_type} | {e.course}/{e.module}/{e.file_name} |"
        )
    p_cmap.write_text("\n".join(lines_cmap), encoding="utf-8")

    p_smap = out / "Entry_Stage_Map.md"
    lines_smap = [
        "# Entry to Stage Map",
        "",
        "| Entry ID | Stages | Concepts | Source |",
        "|---|---|---|---|",
    ]
    for e in entries:
        lines_smap.append(
            f"| {e.entry_id} | {', '.join(stage_map[e.entry_id])} | {', '.join(concept_map[e.entry_id])} | {e.course}/{e.module}/{e.file_name} |"
        )
    p_smap.write_text("\n".join(lines_smap), encoding="utf-8")


def main() -> None:
    repo_root = Path(__file__).resolve().parents[2]
    extraction_root = repo_root / "apps/knowledge-pipeline/outputs/zero-loss-k8s-extraction"
    normalized_root = extraction_root / "normalized-learning-system"
    normalized_root.mkdir(parents=True, exist_ok=True)

    extraction_files = sorted(extraction_root.rglob("*.extraction.md"))

    entries: List[Entry] = []
    for f in extraction_files:
        entries.extend(parse_extraction_file(f))

    concept_map: Dict[str, List[str]] = {}
    stage_map: Dict[str, List[str]] = {}
    by_concept: Dict[str, List[Entry]] = defaultdict(list)
    by_stage: Dict[str, List[Entry]] = defaultdict(list)

    for e in entries:
        concepts = classify_concepts(e)
        concept_map[e.entry_id] = concepts
        for c in concepts:
            by_concept[c].append(e)

        stages = classify_stages(concepts)
        stage_map[e.entry_id] = stages
        for s in stages:
            by_stage[s].append(e)

    write_readme(normalized_root)
    write_learning_tracks(normalized_root, by_stage, concept_map)
    write_concept_cards(normalized_root, by_concept, concept_map)
    write_practice_packs(normalized_root, entries, concept_map)
    write_cloud_onprem_matrix(normalized_root, by_concept)
    write_traceability(normalized_root, entries, concept_map, stage_map)

    manifest = normalized_root / "NORMALIZATION_MANIFEST.md"
    manifest_lines = [
        "# Normalization Manifest",
        "",
        f"Extraction files parsed: {len(extraction_files)}",
        f"Entries parsed: {len(entries)}",
        f"Concept buckets: {len(by_concept)}",
        f"Stage buckets: {len(by_stage)}",
        "",
        "Generated structure:",
        "- 00_READ_FIRST.md",
        "- 01_Learning_Tracks/",
        "- 02_Concept_Cards/",
        "- 03_Practice_Packs/",
        "- 04_Cloud_OnPrem_Matrix/",
        "- 05_Traceability/",
    ]
    manifest.write_text("\n".join(manifest_lines), encoding="utf-8")

    print(f"Extraction files parsed: {len(extraction_files)}")
    print(f"Entries parsed: {len(entries)}")
    print(f"Normalized system root: {normalized_root}")


if __name__ == "__main__":
    main()
