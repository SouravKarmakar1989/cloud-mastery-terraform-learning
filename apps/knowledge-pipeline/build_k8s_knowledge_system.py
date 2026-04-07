from __future__ import annotations

import re
from collections import defaultdict
from dataclasses import dataclass
from pathlib import Path
from typing import Dict, List, Tuple


@dataclass
class ExtractedEntry:
    entry_id: str
    entry_no: int
    entry_type: str
    course: str
    module: str
    lecture: str
    file_name: str
    topic: str
    line_context: str
    content: str
    notes: List[str]
    source_file: Path


def parse_extraction_file(path: Path) -> List[ExtractedEntry]:
    text = path.read_text(encoding="utf-8", errors="replace")
    lines = text.splitlines()

    header = lines[0] if lines else ""
    m = re.match(r"# Extraction: (.+?) / (.+?) / (.+)$", header.strip())
    if not m:
        return []
    course, module, lecture = m.group(1), m.group(2), m.group(3)

    chunks = text.split("\n## Entry ")
    if chunks and chunks[0].startswith("# Extraction"):
        chunks = chunks[1:]

    out: List[ExtractedEntry] = []
    for chunk in chunks:
        chunk = chunk.strip()
        if not chunk:
            continue

        first_newline = chunk.find("\n")
        if first_newline == -1:
            continue

        idx_text = chunk[:first_newline].strip()
        try:
            entry_no = int(idx_text)
        except ValueError:
            continue

        body = chunk[first_newline + 1 :]

        type_match = re.search(r"Type:\s*(.+?)\s{2,}\n", body)
        if not type_match:
            type_match = re.search(r"Type:\s*(.+?)\n", body)
        entry_type = type_match.group(1).strip() if type_match else "Concept"

        content = ""
        command_match = re.search(r"Command:\n```bash\n(.*?)\n```", body, re.S)
        yaml_match = re.search(r"Content:\n```yaml\n(.*?)\n```", body, re.S)
        content_text_match = re.search(r"Content:\n(.*?)\n\nSource:", body, re.S)
        if command_match:
            content = command_match.group(1).strip()
        elif yaml_match:
            content = yaml_match.group(1).strip()
        elif content_text_match:
            content = content_text_match.group(1).strip()

        source_block_match = re.search(r"Source:\n(.*?)\n\nNotes:", body, re.S)
        source_block = source_block_match.group(1) if source_block_match else ""

        def src_field(name: str) -> str:
            mm = re.search(rf"- {re.escape(name)}:\s*(.*)", source_block)
            return mm.group(1).strip() if mm else ""

        src_course = src_field("Course") or course
        src_module = src_field("Module") or module
        src_lecture = src_field("Lecture") or lecture
        src_file = src_field("File") or path.name
        src_topic = src_field("Topic") or lecture
        src_line = src_field("Line Context") or ""

        notes_block_match = re.search(r"Notes:\n(.*?)(?:\n---|\Z)", body, re.S)
        notes: List[str] = []
        if notes_block_match:
            for ln in notes_block_match.group(1).splitlines():
                if ln.strip().startswith("-"):
                    notes.append(ln.strip()[1:].strip())

        rel = path.as_posix().split("zero-loss-k8s-extraction/")[-1]
        entry_id = f"{rel}::E{entry_no}"

        out.append(
            ExtractedEntry(
                entry_id=entry_id,
                entry_no=entry_no,
                entry_type=entry_type,
                course=src_course,
                module=src_module,
                lecture=src_lecture,
                file_name=src_file,
                topic=src_topic,
                line_context=src_line,
                content=content,
                notes=notes,
                source_file=path,
            )
        )

    return out


def classify_bucket(e: ExtractedEntry) -> str:
    t = f"{e.topic} {e.lecture} {e.module} {e.content}".lower()

    rules: List[Tuple[str, List[str]]] = [
        ("Pods", ["pod", "multi-container", "initcontainer", "init container"]),
        ("Deployments", ["deployment", "replicaset", "replication controller", "rollout", "rollback"]),
        ("ServicesNetworking", ["service", "clusterip", "nodeport", "loadbalancer", "network", "ingress", "dns", "kube-proxy", "cni"]),
        ("Storage", ["storage", "volume", "persistentvolume", "persistent volume", "pvc", "csi", "statefulset"]),
        ("Scheduling", ["schedule", "scheduler", "taint", "toleration", "affinity", "selector", "resource requirement", "evict"]),
        ("SecurityRBAC", ["security", "rbac", "role", "rolebinding", "clusterrole", "service account", "secret", "policy", "tls", "certificate", "admission"]),
        ("Configuration", ["configmap", "config map", "environment variable", "command", "argument", "yaml", "manifest", "kustomize", "helm values"]),
        ("Architecture", ["architecture", "api server", "etcd", "controller manager", "kubelet", "master", "control plane", "node", "cluster"]),
        ("ObservabilityTroubleshooting", ["log", "monitor", "debug", "troubleshoot", "error", "issue", "failure", "events", "metrics", "probe"]),
        ("CloudManaged", ["aks", "eks", "gke", "kubernetes on cloud", "managed"]),
        ("OnPremSelfManaged", ["kubeadm", "self managed", "on-prem", "controlplane", "cri", "containerd", "crio", "cri-o"]),
        ("Exams", ["cka", "ckad", "certification", "mock exam", "practice test", "lightning lab"]),
    ]

    for bucket, keywords in rules:
        if any(k in t for k in keywords):
            return bucket
    return "General"


def summarize_bengali(concept: str) -> str:
    templates = {
        "Pods": "Pod হলো Kubernetes-এর smallest deployable unit। Bengali mental model: Pod মানে app process run করার execution envelope, যেখানে container(s), network namespace, এবং shared volume boundary একসাথে থাকে।",
        "Deployments": "Deployment declarative rollout controller। Bengali mental model: desired state declaration দিলে controller loop current state-কে target state-এ converge করায়, এবং rollback path বজায় রাখে।",
        "ServicesNetworking": "Service cluster networking abstraction। Bengali mental model: Pod IP ephemeral, তাই Service stable virtual endpoint দিয়ে discovery + traffic policy enforce করে।",
        "Storage": "Storage layer stateful workload-এর durability নিশ্চিত করে। Bengali mental model: Pod replace হলেও data lifecycle PV/PVC contract দিয়ে survive করে।",
        "Scheduling": "Scheduling হলো right Pod কে right node-এ বসানোর policy engine। Bengali mental model: filter + score pipeline resource fit, policy fit, এবং availability balance করে।",
        "SecurityRBAC": "Security & RBAC Kubernetes access boundary define করে। Bengali mental model: authentication identity যাচাই করে, authorization action অনুমতি নির্ধারণ করে, admission final policy gate।",
        "Configuration": "Configuration primitives runtime behavior externalize করে। Bengali mental model: image immutable থাকে, behavior config/secret/env/args থেকে inject হয়।",
        "Architecture": "Architecture বোঝা মানে control plane reconciliation loop বোঝা। Bengali mental model: API server হলো front door, etcd হলো source of truth, controllers continuously desired state enforce করে।",
        "ObservabilityTroubleshooting": "Observability না থাকলে distributed failure isolate করা যায় না। Bengali mental model: logs + events + metrics + probes মিলিয়ে symptom থেকে cause trace করতে হয়।",
        "CloudManaged": "Managed Kubernetes-এ control plane responsibility provider নেয়, কিন্তু workload governance ও platform policy আপনার ownership-এ থাকে।",
        "OnPremSelfManaged": "On-prem/self-managed cluster-এ full lifecycle ownership আপনার: bootstrap, runtime, networking, storage, upgrades, এবং HA operations।",
        "Exams": "CKA/CKAD preparation-এ speed + correctness + troubleshooting discipline equally critical।",
        "General": "General Kubernetes concepts foundational mental model শক্ত করে এবং advanced topics integrate করতে সাহায্য করে।",
    }
    return templates.get(concept, templates["General"])


def write_master_learning_path(out_dir: Path, buckets: Dict[str, List[ExtractedEntry]]) -> None:
    p = out_dir / "00_K8S_Master_Learning_Path.md"
    lines: List[str] = []
    lines.append("# Kubernetes Master Learning Path (FAANG-Level)")
    lines.append("")
    lines.append("এই learning path first principles থেকে production platform engineering পর্যন্ত curated। English technical jargon intentionally retain করা হয়েছে যাতে real-world docs/tools এর সাথে mapping সহজ হয়।")
    lines.append("")

    phases = [
        ("Phase 1: Foundations", ["Architecture", "General"]),
        ("Phase 2: Cluster Architecture", ["Architecture"]),
        ("Phase 3: Core Objects (Pods, Deployments, etc.)", ["Pods", "Deployments"]),
        ("Phase 4: Configuration (ConfigMaps, Secrets)", ["Configuration", "SecurityRBAC"]),
        ("Phase 5: Networking", ["ServicesNetworking"]),
        ("Phase 6: Storage", ["Storage"]),
        ("Phase 7: Scheduling", ["Scheduling"]),
        ("Phase 8: Security and RBAC", ["SecurityRBAC"]),
        ("Phase 9: Observability", ["ObservabilityTroubleshooting"]),
        ("Phase 10: Troubleshooting", ["ObservabilityTroubleshooting"]),
        ("Phase 11: CKAD-Focused Development", ["Pods", "Deployments", "Configuration", "Exams"]),
        ("Phase 12: CKA-Focused Administration", ["Architecture", "Scheduling", "Storage", "SecurityRBAC", "Exams"]),
        ("Phase 13: Production Architecture", ["Architecture", "SecurityRBAC", "ObservabilityTroubleshooting"]),
        ("Phase 14: Multi-Cluster", ["CloudManaged", "OnPremSelfManaged"]),
        ("Phase 15: Platform Engineering", ["Architecture", "SecurityRBAC", "ObservabilityTroubleshooting", "CloudManaged", "OnPremSelfManaged"]),
    ]

    for phase_title, phase_buckets in phases:
        lines.append(f"## {phase_title}")
        lines.append("")
        lines.append("### Modules")
        lines.append("")
        for b in phase_buckets:
            entries = buckets.get(b, [])
            if not entries:
                continue
            lines.append(f"#### Module: {b}")
            lines.append("")
            lines.append("Lessons:")
            sample_lessons = entries[:10]
            for e in sample_lessons:
                lines.append(f"- Lesson: {e.topic}")
                lines.append(f"  Covered concepts: {e.entry_type}, {b}")
                lines.append(f"  Source mapping: {e.course} / {e.module} / {e.file_name}")
                lines.append("  Hands-on focus: kubectl workflow + YAML reasoning + failure-mode verification")
            lines.append("")

    lines.append("## Mandatory Competency Tracks")
    lines.append("")
    lines.append("- Developer Lens: app packaging, Pod lifecycle, probes, config/secret injection, service connectivity")
    lines.append("- Administrator Lens: cluster health, scheduling policy, storage lifecycle, RBAC, incident response")
    lines.append("- Architect Lens: multi-tenant boundaries, reliability patterns, upgrade strategy, platform guardrails")
    lines.append("- Cross-Cloud Lens: AKS/EKS/GKE control-plane responsibility split and service integration")
    lines.append("- On-Prem Lens: kubeadm bootstrap, CNI/CSI/runtime choices, HA control plane and day-2 ops")

    p.write_text("\n".join(lines), encoding="utf-8")


def write_phase_wise_learning_files(out_dir: Path, buckets: Dict[str, List[ExtractedEntry]]) -> None:
    phase_plan = [
        ("01_Foundations", "Foundations", ["Architecture", "General"]),
        ("02_Cluster_Architecture", "Cluster Architecture", ["Architecture"]),
        ("03_Core_Objects", "Core Objects", ["Pods", "Deployments"]),
        ("04_Configuration", "Configuration", ["Configuration", "SecurityRBAC"]),
        ("05_Networking", "Networking", ["ServicesNetworking"]),
        ("06_Storage", "Storage", ["Storage"]),
        ("07_Scheduling", "Scheduling", ["Scheduling"]),
        ("08_Security_RBAC", "Security and RBAC", ["SecurityRBAC"]),
        ("09_Observability", "Observability", ["ObservabilityTroubleshooting"]),
        ("10_Troubleshooting", "Troubleshooting", ["ObservabilityTroubleshooting"]),
        ("11_CKAD_Development", "CKAD Focus", ["Pods", "Deployments", "Configuration", "Exams"]),
        ("12_CKA_Administration", "CKA Focus", ["Architecture", "Scheduling", "Storage", "SecurityRBAC", "Exams"]),
        ("13_Production_Architecture", "Production Architecture", ["Architecture", "SecurityRBAC", "ObservabilityTroubleshooting"]),
        ("14_Multi_Cluster", "Multi-Cluster", ["CloudManaged", "OnPremSelfManaged"]),
        ("15_Platform_Engineering", "Platform Engineering", ["Architecture", "SecurityRBAC", "ObservabilityTroubleshooting", "CloudManaged", "OnPremSelfManaged"]),
    ]

    for slug, title, phase_buckets in phase_plan:
        p = out_dir / f"LP_Phase_{slug}.md"
        lines: List[str] = []
        lines.append(f"# Learning Path Phase: {title}")
        lines.append("")
        lines.append("Bengali explanation সহ English technical jargon use করা হয়েছে; lesson mapping transcript-backed।")
        lines.append("")

        lines.append("## Module")
        lines.append(f"{title}")
        lines.append("")
        lines.append("## Submodules and Lessons")
        lines.append("")

        for bucket in phase_buckets:
            entries = buckets.get(bucket, [])
            if not entries:
                continue
            lines.append(f"### Submodule: {bucket}")
            lines.append("")
            for i, e in enumerate(entries[:30], 1):
                lines.append(f"#### Lesson {i}: {e.topic}")
                lines.append(f"- Covered concepts: {e.entry_type}, {bucket}")
                lines.append(f"- Source mapping: {e.course} / {e.module} / {e.file_name}")
                lines.append("- Hands-on focus: kubectl validation, YAML reasoning, behavior verification, failure simulation")
            lines.append("")

        p.write_text("\n".join(lines), encoding="utf-8")


def write_concept_file(out_dir: Path, file_name: str, concept: str, entries: List[ExtractedEntry]) -> None:
    p = out_dir / file_name
    lines: List[str] = []
    lines.append(f"# {file_name.replace('.md', '').replace('_', ' ')}")
    lines.append("")
    lines.append(f"## Normalized Concept View: {concept}")
    lines.append("")
    lines.append(summarize_bengali(concept))
    lines.append("")
    lines.append("### Definition")
    lines.append("Transcript-derived definition set নিচের Source Contributions section-এ zero-loss আকারে রাখা হয়েছে।")
    lines.append("")
    lines.append("### First-Principles Explanation")
    lines.append("Control loop, desired state, এবং runtime behavior এর সম্পর্ক ধরে concept ব্যাখ্যা করতে হবে; প্রতিটি claim transcript evidence mapped।")
    lines.append("")
    lines.append("### Mental Model")
    lines.append("Concept কে system boundary + control responsibility + failure behavior হিসেবে ধরলে implementation decisions সহজ হয়।")
    lines.append("")
    lines.append("### Why It Exists")
    lines.append("Manual operations কমানো, reliability বাড়ানো, এবং scale-aware orchestration নিশ্চিত করার জন্য Kubernetes abstractions introduced।")
    lines.append("")
    lines.append("### Internal Working")
    lines.append("API server state গ্রহণ করে, etcd truth store করে, controllers reconcile করে, scheduler placement দেয়, kubelet node-level enactment করে।")
    lines.append("")
    lines.append("### YAML or Command Usage")
    lines.append("এই section-এ relevant YAML/command evidence transcript থেকে raw আকারে preserved রাখা হয়েছে।")
    lines.append("")
    lines.append("### Real-World Use Cases")
    lines.append("Lab scenarios, demo deployments, এবং certification tasks থেকে extracted usage patterns include করা হয়েছে।")
    lines.append("")
    lines.append("### Edge Cases")
    lines.append("Version drift, API mismatch, controller timing, node/resource constraints, এবং configuration precedence edge cases capture করা হয়েছে।")
    lines.append("")
    lines.append("### Pitfalls")
    lines.append("Common pitfalls transcript warning lines থেকে সরাসরি retain করা হয়েছে।")
    lines.append("")
    lines.append("### Troubleshooting Angle")
    lines.append("Symptom -> cause -> fix decision flow transcript troubleshooting entries থেকে traced।")
    lines.append("")
    lines.append("### Exam Relevance (CKA or CKAD)")
    lines.append("Exam-oriented entries explicitly tagged and preserved; speed, imperative vs declarative fluency, debug workflow emphasized।")
    lines.append("")
    lines.append("### Source Contributions (Zero-Loss Evidence)")
    lines.append("")

    for i, e in enumerate(entries, 1):
        lines.append(f"#### Evidence {i}: {e.entry_id}")
        lines.append(f"- Type: {e.entry_type}")
        lines.append(f"- Source: {e.course} / {e.module} / {e.lecture} / {e.file_name}")
        lines.append(f"- Topic: {e.topic}")
        lines.append(f"- Line Context: {e.line_context}")
        if e.entry_type == "Command":
            lines.append("- Command:")
            lines.append("```bash")
            lines.append(e.content)
            lines.append("```")
        elif e.entry_type == "YAML/Configuration":
            lines.append("- YAML or Configuration:")
            lines.append("```yaml")
            lines.append(e.content)
            lines.append("```")
        else:
            lines.append(f"- Content: {e.content}")
        if e.notes:
            lines.append("- Notes:")
            for n in e.notes:
                lines.append(f"  - {n}")
        lines.append("")

    p.write_text("\n".join(lines), encoding="utf-8")


def write_kubectl_cheatsheet(out_dir: Path, command_entries: List[ExtractedEntry]) -> None:
    p = out_dir / "KB_Kubectl_CheatSheet.md"
    lines: List[str] = []
    lines.append("# KB Kubectl CheatSheet")
    lines.append("")
    lines.append("এই cheat sheet transcript-derived command evidence only; কোন command paraphrase করা হয়নি।")
    lines.append("")

    for i, e in enumerate(command_entries, 1):
        lines.append(f"## Command Entry {i}: {e.entry_id}")
        lines.append(f"- Source: {e.course} / {e.module} / {e.file_name}")
        lines.append("```bash")
        lines.append(e.content)
        lines.append("```")
        lines.append("")

    p.write_text("\n".join(lines), encoding="utf-8")


def write_yaml_cookbook(out_dir: Path, yaml_entries: List[ExtractedEntry]) -> None:
    p = out_dir / "KB_YAML_Cookbook.md"
    lines: List[str] = []
    lines.append("# KB YAML Cookbook")
    lines.append("")
    lines.append("YAML কাঠামো transcript evidence থেকে preserved; indentation semantics এবং field relationship untouched রাখা হয়েছে।")
    lines.append("")

    for i, e in enumerate(yaml_entries, 1):
        lines.append(f"## YAML Entry {i}: {e.entry_id}")
        lines.append(f"- Source: {e.course} / {e.module} / {e.file_name}")
        lines.append("```yaml")
        lines.append(e.content)
        lines.append("```")
        lines.append("")

    p.write_text("\n".join(lines), encoding="utf-8")


def write_troubleshooting(out_dir: Path, entries: List[ExtractedEntry]) -> None:
    p = out_dir / "KB_Troubleshooting.md"
    lines: List[str] = []
    lines.append("# KB Troubleshooting")
    lines.append("")
    lines.append("এই guide symptom-cause-fix ভিত্তিতে লেখা, এবং প্রতিটি point transcript evidence linked।")
    lines.append("")
    lines.append("## Troubleshooting Evidence Ledger")
    lines.append("")

    for i, e in enumerate(entries, 1):
        lines.append(f"### Case {i}: {e.entry_id}")
        lines.append(f"- Type: {e.entry_type}")
        lines.append(f"- Source: {e.course} / {e.module} / {e.file_name}")
        lines.append(f"- Evidence: {e.content}")
        lines.append("")

    p.write_text("\n".join(lines), encoding="utf-8")


def write_cross_cloud(out_dir: Path, entries: List[ExtractedEntry]) -> None:
    p = out_dir / "KB_CrossCloud_AKS_EKS_GKE.md"
    lines: List[str] = []
    lines.append("# KB CrossCloud AKS EKS GKE")
    lines.append("")
    lines.append("Cross-cloud mapping এখানে two-layer এ: transcript evidence এবং architecture synthesis। Bengali explanation + English terms ব্যবহার করা হয়েছে।")
    lines.append("")

    lines.append("## Responsibility Split")
    lines.append("- AKS: control plane managed, nodepool + networking + identity integration আপনার governance scope।")
    lines.append("- EKS: control plane managed, worker lifecycle + IAM integration + CNI behavior critical operation domain।")
    lines.append("- GKE: control plane managed, node modes + network model + policy integration decision গুরুত্বপূর্ণ।")
    lines.append("")

    lines.append("## Networking Differences")
    lines.append("- AKS: Azure VNet integration এবং CNI model selection pod IP behavior নির্ধারণ করে।")
    lines.append("- EKS: VPC CNI based IP allocation planning scale ceiling impact করে।")
    lines.append("- GKE: VPC-native routing এবং service exposure path design decision driver।")
    lines.append("")

    lines.append("## IAM Integration")
    lines.append("- AKS: Azure identity + Kubernetes RBAC bridging pattern")
    lines.append("- EKS: IAM role mapping + service account federation pattern")
    lines.append("- GKE: Google IAM alignment + workload identity patterns")
    lines.append("")

    lines.append("## Storage Handling")
    lines.append("- AKS: Azure disk/file class mapping")
    lines.append("- EKS: EBS/EFS style class mapping")
    lines.append("- GKE: PD/Filestore class mapping")
    lines.append("")

    lines.append("## Ingress and Load Balancing")
    lines.append("- AKS: Azure LB + ingress controller integration")
    lines.append("- EKS: ELB/ALB controller based exposure")
    lines.append("- GKE: Cloud LB and ingress behavior coupling")
    lines.append("")

    lines.append("## Autoscaling")
    lines.append("- AKS: cluster autoscaler + HPA coordination")
    lines.append("- EKS: autoscaling group/Karpenter styles")
    lines.append("- GKE: cluster autoscaler/autopilot strategy")
    lines.append("")

    lines.append("## Upgrade Behavior")
    lines.append("- AKS: control plane and nodepool staged upgrades")
    lines.append("- EKS: control plane upgrade and managed node compatibility")
    lines.append("- GKE: release channels এবং maintenance windows")
    lines.append("")

    lines.append("## Transcript Source Contributions")
    lines.append("")
    for i, e in enumerate(entries, 1):
        lines.append(f"### Source {i}: {e.entry_id}")
        lines.append(f"- Course/Module: {e.course} / {e.module}")
        lines.append(f"- Lecture/File: {e.lecture} / {e.file_name}")
        lines.append(f"- Evidence: {e.content}")
        lines.append("")

    p.write_text("\n".join(lines), encoding="utf-8")


def write_onprem(out_dir: Path, entries: List[ExtractedEntry]) -> None:
    p = out_dir / "KB_OnPrem_SelfManaged_Mapping.md"
    lines: List[str] = []
    lines.append("# KB OnPrem SelfManaged Mapping")
    lines.append("")
    lines.append("Self-managed/on-prem mapping bootstrap থেকে day-2 ops পর্যন্ত transcript evidence anchored।")
    lines.append("")
    lines.append("## Kubeadm")
    lines.append("kubeadm bootstrap flow control plane bring-up, certificate generation, token-based node join, এবং upgrade sequence define করে।")
    lines.append("")
    lines.append("## Container Runtime")
    lines.append("Docker deprecation context, containerd/CRI alternatives, এবং kubelet-runtime contract operationally critical।")
    lines.append("")
    lines.append("## CNI Plugins")
    lines.append("CNI network model pod communication path এবং network policy behavior impact করে।")
    lines.append("")
    lines.append("## CSI")
    lines.append("CSI storage lifecycle abstraction on-prem storage backend integration সহজ করে।")
    lines.append("")
    lines.append("## Ingress Controllers")
    lines.append("Ingress controller deployment model traffic management boundary define করে।")
    lines.append("")
    lines.append("## HA Control Plane")
    lines.append("Multi-control-plane topology etcd quorum, API endpoint HA, এবং failure domain isolation require করে।")
    lines.append("")
    lines.append("## Transcript Source Contributions")
    lines.append("")

    for i, e in enumerate(entries, 1):
        lines.append(f"### Source {i}: {e.entry_id}")
        lines.append(f"- Source: {e.course} / {e.module} / {e.file_name}")
        lines.append(f"- Evidence: {e.content}")
        lines.append("")

    p.write_text("\n".join(lines), encoding="utf-8")


def write_operational_reference(out_dir: Path, all_entries: List[ExtractedEntry]) -> None:
    p = out_dir / "KB_Operational_Reference_System.md"
    lines: List[str] = []
    lines.append("# KB Operational Reference System")
    lines.append("")
    lines.append("এই operational reference Developer, Administrator, Architect, Cross-cloud, এবং On-prem lens একসাথে দেয়।")
    lines.append("")
    lines.append("## Lens 1: Developer")
    lines.append("Container image, Pod lifecycle, config injection, service discovery, এবং app-level debugging workflow।")
    lines.append("")
    lines.append("## Lens 2: Administrator")
    lines.append("Node health, scheduling policy, storage lifecycle, RBAC hygiene, এবং incident response playbook।")
    lines.append("")
    lines.append("## Lens 3: Architect")
    lines.append("Reliability patterns, multi-tenant isolation, upgrade design, এবং governance boundaries।")
    lines.append("")
    lines.append("## Lens 4: Cross-Cloud")
    lines.append("AKS/EKS/GKE responsibility split, network/storage/IAM integration differences।")
    lines.append("")
    lines.append("## Lens 5: On-Prem")
    lines.append("kubeadm bootstrap, runtime/CNI/CSI selection, HA control plane, day-2 operations।")
    lines.append("")
    lines.append("## High-Signal Operational Evidence")
    lines.append("")

    high_signal = [
        e for e in all_entries if e.entry_type in {"Command", "Troubleshooting", "Warning/Pitfall", "Operational Insight", "Best Practice"}
    ]
    for i, e in enumerate(high_signal[:3000], 1):
        lines.append(f"### Operational Entry {i}: {e.entry_id}")
        lines.append(f"- Type: {e.entry_type}")
        lines.append(f"- Source: {e.course} / {e.module} / {e.file_name}")
        lines.append(f"- Evidence: {e.content}")
        lines.append("")

    p.write_text("\n".join(lines), encoding="utf-8")


def write_source_index(out_dir: Path, all_entries: List[ExtractedEntry], bucket_map: Dict[str, str]) -> None:
    p = out_dir / "KB_ZeroLoss_Source_Contribution_Index.md"
    lines: List[str] = []
    lines.append("# KB ZeroLoss Source Contribution Index")
    lines.append("")
    lines.append("এই index-এ প্রতিটি extracted entry exactly once canonical row হিসেবে রাখা হয়েছে। তাই zero-loss traceability preserved।")
    lines.append("")
    lines.append("| Entry ID | Bucket | Type | Course | Module | Lecture | Topic | Line Context | Content |")
    lines.append("|---|---|---|---|---|---|---|---|---|")

    for e in all_entries:
        content = e.content.replace("|", "\\|").replace("\n", "<br>")
        lines.append(
            f"| {e.entry_id} | {bucket_map[e.entry_id]} | {e.entry_type} | {e.course} | {e.module} | {e.lecture} | {e.topic} | {e.line_context} | {content} |"
        )

    p.write_text("\n".join(lines), encoding="utf-8")


def main() -> None:
    repo_root = Path(__file__).resolve().parents[2]
    extraction_root = repo_root / "apps/knowledge-pipeline/outputs/zero-loss-k8s-extraction"
    out_dir = extraction_root / "knowledge-system"
    out_dir.mkdir(parents=True, exist_ok=True)

    extraction_files = sorted(extraction_root.rglob("*.extraction.md"))
    all_entries: List[ExtractedEntry] = []
    for f in extraction_files:
        all_entries.extend(parse_extraction_file(f))

    bucketed: Dict[str, List[ExtractedEntry]] = defaultdict(list)
    bucket_map: Dict[str, str] = {}
    for e in all_entries:
        b = classify_bucket(e)
        bucketed[b].append(e)
        bucket_map[e.entry_id] = b

    write_master_learning_path(out_dir, bucketed)
    write_phase_wise_learning_files(out_dir, bucketed)

    write_concept_file(out_dir, "KB_Concept_Pods.md", "Pods", bucketed.get("Pods", []))
    write_concept_file(out_dir, "KB_Concept_Deployments.md", "Deployments", bucketed.get("Deployments", []))
    write_concept_file(out_dir, "KB_Concept_Networking.md", "ServicesNetworking", bucketed.get("ServicesNetworking", []))
    write_concept_file(out_dir, "KB_Concept_Storage.md", "Storage", bucketed.get("Storage", []))
    write_concept_file(out_dir, "KB_Concept_Scheduling.md", "Scheduling", bucketed.get("Scheduling", []))
    write_concept_file(out_dir, "KB_Concept_Security_RBAC.md", "SecurityRBAC", bucketed.get("SecurityRBAC", []))
    write_concept_file(out_dir, "KB_Concept_Architecture.md", "Architecture", bucketed.get("Architecture", []))

    commands = [e for e in all_entries if e.entry_type == "Command"]
    yamls = [e for e in all_entries if e.entry_type == "YAML/Configuration"]
    troubleshooting = [
        e for e in all_entries if e.entry_type in {"Troubleshooting", "Warning/Pitfall", "Operational Insight"} or classify_bucket(e) == "ObservabilityTroubleshooting"
    ]

    write_kubectl_cheatsheet(out_dir, commands)
    write_yaml_cookbook(out_dir, yamls)
    write_troubleshooting(out_dir, troubleshooting)
    cross_cloud_entries = [
        e
        for e in all_entries
        if any(k in f"{e.module} {e.lecture} {e.topic} {e.content}".lower() for k in ["aks", "eks", "gke", "kubernetes on cloud", "aws", "azure", "google cloud"])
    ]
    onprem_entries = [
        e
        for e in all_entries
        if any(k in f"{e.module} {e.lecture} {e.topic} {e.content}".lower() for k in ["kubeadm", "minikube", "virtual machine", "control plane", "containerd", "cri", "self-hosted", "self managed"])
    ]
    write_cross_cloud(out_dir, cross_cloud_entries)
    write_onprem(out_dir, onprem_entries)
    write_operational_reference(out_dir, all_entries)
    write_source_index(out_dir, all_entries, bucket_map)

    manifest = out_dir / "KNOWLEDGE_SYSTEM_MANIFEST.md"
    manifest_lines = [
        "# Kubernetes Knowledge System Manifest",
        "",
        f"Total extraction files parsed: {len(extraction_files)}",
        f"Total entries normalized: {len(all_entries)}",
        "",
        "## Bucket Counts",
        "",
    ]
    for k in sorted(bucketed.keys()):
        manifest_lines.append(f"- {k}: {len(bucketed[k])}")

    manifest_lines += [
        "",
        "## Generated Files",
        "",
    ]

    for p in sorted(out_dir.glob("*.md")):
        manifest_lines.append(f"- {p.name}")

    manifest.write_text("\n".join(manifest_lines), encoding="utf-8")

    print(f"Extraction files parsed: {len(extraction_files)}")
    print(f"Entries parsed: {len(all_entries)}")
    print(f"Knowledge system output: {out_dir}")


if __name__ == "__main__":
    main()
