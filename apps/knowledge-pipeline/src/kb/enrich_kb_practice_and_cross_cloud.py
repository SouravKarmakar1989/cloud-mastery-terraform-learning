"""
Enhance KB topic files with:
1) Kid-friendly hands-on practice sections derived from transcript signals.
2) Cross-cloud thinking sections (AWS/Azure/GCP) for cloud-agnostic learning.

The script is idempotent: it replaces content between enhancement markers.
"""

from __future__ import annotations

import argparse
import json
import re
from dataclasses import dataclass
from pathlib import Path

KB_ROOT_DEFAULT = Path("Knowledge Base")
BEGIN_MARKER = "<!-- BEGIN PRACTICE_ENHANCEMENTS -->"
END_MARKER = "<!-- END PRACTICE_ENHANCEMENTS -->"

ACTIVITY_HINTS = [
    ("Identity and Access", ["iam", "role", "policy", "user", "group", "auth", "federation", "sso"]),
    ("Storage and Data", ["s3", "bucket", "storage", "blob", "object", "backup", "snapshot"]),
    ("Compute and Runtime", ["ec2", "instance", "vm", "lambda", "container", "eks", "ecs", "kubernetes"]),
    ("Networking", ["vpc", "subnet", "route", "dns", "load balancer", "firewall", "gateway"]),
    ("Database", ["rds", "dynamodb", "database", "sql", "postgres", "mysql", "redis", "cache"]),
    ("Observability", ["cloudwatch", "monitor", "log", "metric", "alarm", "trace", "x-ray"]),
    ("AI and ML", ["sagemaker", "bedrock", "rekognition", "textract", "comprehend", "model", "inference"]),
    ("Migration and DR", ["migration", "mgn", "dms", "dr", "backup", "restore", "cutover"]),
    ("Cost and Governance", ["cost", "budget", "finops", "advisor", "tag", "governance", "compliance"]),
]

KEYWORD_RE = re.compile(
    r"\b(hands?\s*-?\s*on|demo|lab|console|portal|click|create|configure|deploy|launch|setup|walkthrough)\b",
    flags=re.IGNORECASE,
)

SERVICE_PLAYBOOKS = [
    {
        "name": "IAM",
        "keywords": ["iam", "role", "policy", "identity center", "federation"],
        "console_path": "AWS Console -> IAM",
        "create_action": "Create a test user or role with least privilege",
        "verify_action": "Sign in or simulate policy permissions",
        "cleanup_action": "Delete the test user/role and inline policies",
        "azure_equivalent": "Microsoft Entra ID + RBAC",
        "gcp_equivalent": "Cloud IAM",
    },
    {
        "name": "Amazon S3",
        "keywords": ["s3", "bucket", "object storage"],
        "console_path": "AWS Console -> S3 -> Buckets",
        "create_action": "Create a bucket and upload one sample file",
        "verify_action": "Open object metadata and test download",
        "cleanup_action": "Delete objects and delete bucket",
        "azure_equivalent": "Azure Blob Storage",
        "gcp_equivalent": "Cloud Storage",
    },
    {
        "name": "Amazon EC2",
        "keywords": ["ec2", "instance", "ami"],
        "console_path": "AWS Console -> EC2 -> Instances",
        "create_action": "Launch one small instance with default VPC",
        "verify_action": "Check instance running state and system status checks",
        "cleanup_action": "Terminate instance and remove extra volumes",
        "azure_equivalent": "Azure Virtual Machines",
        "gcp_equivalent": "Compute Engine",
    },
    {
        "name": "AWS Lambda",
        "keywords": ["lambda", "serverless", "function"],
        "console_path": "AWS Console -> Lambda -> Functions",
        "create_action": "Create a hello-world function from blueprint",
        "verify_action": "Run a test event and inspect CloudWatch logs",
        "cleanup_action": "Delete function and related log group if needed",
        "azure_equivalent": "Azure Functions",
        "gcp_equivalent": "Cloud Functions or Cloud Run",
    },
    {
        "name": "Amazon RDS",
        "keywords": ["rds", "relational", "mysql", "postgres", "database"],
        "console_path": "AWS Console -> RDS -> Databases",
        "create_action": "Create a small dev database instance",
        "verify_action": "Check endpoint, connect test, and run one query",
        "cleanup_action": "Delete DB instance and snapshots not needed",
        "azure_equivalent": "Azure SQL Database",
        "gcp_equivalent": "Cloud SQL",
    },
    {
        "name": "Amazon DynamoDB",
        "keywords": ["dynamodb", "nosql", "partition key"],
        "console_path": "AWS Console -> DynamoDB -> Tables",
        "create_action": "Create a table with partition key and add one item",
        "verify_action": "Query the item using the partition key",
        "cleanup_action": "Delete test table",
        "azure_equivalent": "Azure Cosmos DB",
        "gcp_equivalent": "Firestore",
    },
    {
        "name": "Amazon VPC",
        "keywords": ["vpc", "subnet", "route table", "nat", "igw"],
        "console_path": "AWS Console -> VPC",
        "create_action": "Create a VPC with one public and one private subnet",
        "verify_action": "Validate route table associations",
        "cleanup_action": "Delete test subnets and VPC components",
        "azure_equivalent": "Azure Virtual Network",
        "gcp_equivalent": "VPC Network",
    },
    {
        "name": "Elastic Load Balancing",
        "keywords": ["load balancer", "alb", "nlb", "elb"],
        "console_path": "AWS Console -> EC2 -> Load Balancers",
        "create_action": "Create an application load balancer with one target group",
        "verify_action": "Check target health and ALB DNS response",
        "cleanup_action": "Delete ALB, listeners, and target group",
        "azure_equivalent": "Azure Load Balancer or Application Gateway",
        "gcp_equivalent": "Cloud Load Balancing",
    },
    {
        "name": "Amazon CloudWatch",
        "keywords": ["cloudwatch", "metric", "alarm", "logs", "x-ray", "trace"],
        "console_path": "AWS Console -> CloudWatch",
        "create_action": "Create one dashboard and one alarm",
        "verify_action": "Trigger alarm condition and inspect alarm history",
        "cleanup_action": "Delete dashboard and alarm",
        "azure_equivalent": "Azure Monitor",
        "gcp_equivalent": "Cloud Monitoring",
    },
    {
        "name": "Amazon SageMaker",
        "keywords": ["sagemaker", "model", "training", "inference"],
        "console_path": "AWS Console -> SageMaker",
        "create_action": "Open Studio and run one sample notebook step",
        "verify_action": "Confirm notebook output and generated artifact",
        "cleanup_action": "Stop kernels and delete temporary artifacts",
        "azure_equivalent": "Azure Machine Learning",
        "gcp_equivalent": "Vertex AI",
    },
    {
        "name": "Amazon Bedrock",
        "keywords": ["bedrock", "foundation model", "prompt"],
        "console_path": "AWS Console -> Bedrock",
        "create_action": "Open model playground and run one prompt test",
        "verify_action": "Compare two prompt variations and output quality",
        "cleanup_action": "Delete temporary prompts/artifacts if saved",
        "azure_equivalent": "Azure OpenAI",
        "gcp_equivalent": "Vertex AI Generative AI",
    },
    {
        "name": "AWS Migration Hub",
        "keywords": ["migration hub", "migrationhub"],
        "console_path": "AWS Console -> Migration Hub",
        "create_action": "Create an application and map migration tasks",
        "verify_action": "Check migration progress and discovered resources",
        "cleanup_action": "Remove test migration groups and trackers",
        "azure_equivalent": "Azure Migrate (project dashboard)",
        "gcp_equivalent": "Migration Center",
    },
    {
        "name": "AWS Application Discovery Service",
        "keywords": ["application discovery", "discovery service", "discovery"],
        "console_path": "AWS Console -> Application Discovery Service",
        "create_action": "Configure discovery agentless or agent-based collection",
        "verify_action": "Review discovered server inventory and dependency data",
        "cleanup_action": "Stop discovery collectors and remove test imports",
        "azure_equivalent": "Azure Migrate Discovery and Assessment",
        "gcp_equivalent": "Migration Center Discovery",
    },
    {
        "name": "AWS DMS",
        "keywords": ["dms", "database migration"],
        "console_path": "AWS Console -> DMS",
        "create_action": "Create source and target endpoints and one migration task",
        "verify_action": "Validate task status and replicated rows",
        "cleanup_action": "Delete migration task and endpoints",
        "azure_equivalent": "Azure Database Migration Service",
        "gcp_equivalent": "Database Migration Service",
    },
    {
        "name": "AWS MGN",
        "keywords": ["mgn", "application migration", "cutover"],
        "console_path": "AWS Console -> Application Migration Service",
        "create_action": "Register source server and configure launch settings",
        "verify_action": "Run test launch and verify application health",
        "cleanup_action": "Stop replication and remove source configuration",
        "azure_equivalent": "Azure Migrate",
        "gcp_equivalent": "Migrate to Virtual Machines",
    },
]

SERVICE_BY_NAME = {str(s["name"]): s for s in SERVICE_PLAYBOOKS}

FAMILY_SERVICE_PRIORITY: dict[str, list[str]] = {
    "compute": ["Amazon EC2", "Amazon VPC", "Elastic Load Balancing", "AWS Lambda"],
    "storage": ["Amazon S3", "Amazon RDS", "Amazon DynamoDB", "AWS DMS"],
    "database": ["Amazon RDS", "Amazon DynamoDB", "AWS DMS", "Amazon S3"],
    "data engineering": ["Amazon S3", "Amazon DynamoDB", "Amazon EC2", "Amazon CloudWatch"],
    "ai": ["Amazon SageMaker", "Amazon Bedrock", "Amazon S3", "IAM"],
    "observability": ["Amazon CloudWatch", "Amazon EC2", "AWS Lambda", "Amazon VPC"],
    "cost control": ["Amazon EC2", "Amazon S3", "Amazon RDS", "Amazon CloudWatch"],
    "disaster recovery": ["AWS DMS", "AWS MGN", "Amazon RDS", "Amazon S3"],
    "migration": ["AWS MGN", "AWS DMS", "AWS Migration Hub", "AWS Application Discovery Service"],
    "networking": ["Amazon VPC", "Elastic Load Balancing", "Amazon EC2", "Amazon CloudWatch"],
    "security": ["IAM", "Amazon S3", "Amazon VPC", "Amazon CloudWatch"],
}


@dataclass
class EnrichmentStats:
    scanned: int = 0
    updated: int = 0
    skipped: int = 0


def read_text(path: Path) -> str:
    return path.read_text(encoding="utf-8")


def write_text(path: Path, content: str) -> None:
    path.write_text(content, encoding="utf-8")


def is_topic_kb_file(path: Path) -> bool:
    if path.name == "00_Master_Index.md":
        return False
    if "visuals" in [p.lower() for p in path.parts]:
        return False
    return bool(re.match(r"^\d{2}_.+\.md$", path.name))


def extract_scope_topic(content: str, fallback: str) -> str:
    m = re.search(r"^- Topic:\s*(.+)$", content, flags=re.MULTILINE)
    if m:
        return m.group(1).strip()
    return fallback.replace("_", " ").replace(".md", "")


def strip_existing_enhancements(content: str) -> str:
    if BEGIN_MARKER in content and END_MARKER in content:
        return re.sub(
            rf"{re.escape(BEGIN_MARKER)}[\s\S]*?{re.escape(END_MARKER)}\n?",
            "",
            content,
            count=1,
        )
    return content


def strip_visual_assets_section(content: str) -> str:
    # Remove stale visual artifact references when visuals folders are cleaned up.
    return re.sub(r"\n## Visual Assets\n[\s\S]*?(?=\n## |\Z)", "\n", content, flags=re.MULTILINE)


def infer_kb_family(path: Path) -> str:
    folder = path.parent.name.lower()
    for family in FAMILY_SERVICE_PRIORITY:
        if family in folder:
            return family
    return ""


def extract_candidate_lines(content: str, limit: int = 16) -> list[str]:
    lines: list[str] = []
    for raw in content.splitlines():
        line = raw.strip()
        if not line:
            continue
        if line.startswith(("## ", "### ", "<!--", "Signal ")):
            continue
        if line.startswith("- outputs/"):
            continue
        if line.startswith("Line "):
            continue
        if "BEGIN PRACTICE_ENHANCEMENTS" in line or "END PRACTICE_ENHANCEMENTS" in line:
            continue
        if KEYWORD_RE.search(line):
            lines.append(re.sub(r"^[-*]\s*", "", line))
    unique: list[str] = []
    seen: set[str] = set()
    for line in lines:
        canon = line.lower()
        if canon not in seen:
            seen.add(canon)
            unique.append(line)
        if len(unique) >= limit:
            break
    return unique


def infer_activity_buckets(content: str, max_items: int = 4) -> list[str]:
    text = content.lower()
    picked: list[str] = []
    for label, keys in ACTIVITY_HINTS:
        if any(k in text for k in keys):
            picked.append(label)
        if len(picked) >= max_items:
            break
    if not picked:
        picked = ["Core Cloud Basics", "Security Basics", "Monitoring Basics"]
    return picked


def detect_service_playbooks(
    content: str,
    family: str,
    max_items: int = 4,
) -> list[dict[str, str | list[str]]]:
    text = content.lower()
    scored_by_name: dict[str, int] = {}
    for playbook in SERVICE_PLAYBOOKS:
        keywords = playbook["keywords"]
        hits = 0
        for kw in keywords:
            # Word-boundary-ish matching keeps score stable for short tokens.
            pattern = re.compile(rf"(?<![a-z0-9]){re.escape(kw)}(?![a-z0-9])")
            hits += len(pattern.findall(text))
        if hits > 0:
            scored_by_name[str(playbook["name"])] = hits

    selected: list[dict[str, str | list[str]]] = []
    selected_names: set[str] = set()

    preferred = FAMILY_SERVICE_PRIORITY.get(family, [])

    # 1) Force domain-specific service set first.
    preferred_ranked = sorted(
        preferred,
        key=lambda name: scored_by_name.get(name, 0),
        reverse=True,
    )
    for name in preferred_ranked:
        playbook = SERVICE_BY_NAME.get(name)
        if playbook is None:
            continue
        if scored_by_name.get(name, 0) > 0:
            selected.append(playbook)
            selected_names.add(name)
        if len(selected) >= max_items:
            return selected

    # If preferred services were not explicitly mentioned enough, still keep family-specific labs.
    for name in preferred_ranked:
        if name in selected_names:
            continue
        playbook = SERVICE_BY_NAME.get(name)
        if playbook is None:
            continue
        selected.append(playbook)
        selected_names.add(name)
        if len(selected) >= max_items:
            return selected

    # 2) Fill remaining slots with strongest detected non-preferred services.
    ranked_other_names = sorted(scored_by_name.keys(), key=lambda n: scored_by_name[n], reverse=True)
    for name in ranked_other_names:
        if name in selected_names:
            continue
        playbook = SERVICE_BY_NAME.get(name)
        if playbook is None:
            continue
        selected.append(playbook)
        selected_names.add(name)
        if len(selected) >= max_items:
            break

    return selected


def build_hands_on_section(
    topic: str,
    candidate_lines: list[str],
    buckets: list[str],
    service_playbooks: list[dict[str, str | list[str]]],
) -> str:
    lines: list[str] = []
    lines.append("## Hands-On Practice (Kid-Friendly Step-by-Step)")
    lines.append("")
    lines.append("### Safety First")
    lines.append("- Use a sandbox account only.")
    lines.append("- Set a budget alert before creating resources.")
    lines.append("- Delete resources after practice to avoid surprise cost.")
    lines.append("")

    if candidate_lines:
        lines.append("### Hands-On Signals Found In This KB")
        for i, item in enumerate(candidate_lines[:10], start=1):
            lines.append(f"- Signal {i}: {item}")
        lines.append("")
    else:
        lines.append("### Hands-On Signals Found In This KB")
        lines.append("- No explicit lab sentence was detected, so the practice below is inferred from the topic scope.")
        lines.append("")

    if service_playbooks:
        lines.append("### Service-Specific Lab Paths")
        for i, playbook in enumerate(service_playbooks, start=1):
            name = str(playbook["name"])
            path = str(playbook["console_path"])
            create_action = str(playbook["create_action"])
            verify_action = str(playbook["verify_action"])
            cleanup_action = str(playbook["cleanup_action"])
            azure_eq = str(playbook["azure_equivalent"])
            gcp_eq = str(playbook["gcp_equivalent"])

            lines.append(f"### Activity {i}: {name} Lab for {topic}")
            lines.append(f"- AWS console path: {path}")
            lines.append(f"- Azure equivalent: {azure_eq}")
            lines.append(f"- GCP equivalent: {gcp_eq}")
            lines.append("- Time: 12-20 minutes")
            lines.append("1. Sign in to AWS console and set region.")
            lines.append(f"2. Navigate: {path}.")
            lines.append(f"3. Build: {create_action}.")
            lines.append("4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.")
            lines.append("5. Save and wait for status Ready or Active.")
            lines.append(f"6. Verify: {verify_action}.")
            lines.append("7. Write one observation: what worked, what failed, what changed.")
            lines.append(f"8. Cleanup: {cleanup_action}.")
            lines.append("")
    else:
        for i, bucket in enumerate(buckets, start=1):
            lines.append(f"### Activity {i}: {bucket} for {topic}")
            lines.append("- Goal: Build one small thing and verify it works.")
            lines.append("- Time: 10-20 minutes.")
            lines.append("- Prerequisite: Logged into cloud console/portal with learner account.")
            lines.append("1. Open the cloud console home page and switch to the intended region.")
            lines.append("2. Search for the target service in the top search bar.")
            lines.append("3. Click Create and keep defaults first, then change only one setting at a time.")
            lines.append("4. Add tags: Project=Learning, Topic=KBPractice, Owner=Student.")
            lines.append("5. Save and wait for status to become Ready/Active.")
            lines.append("6. Run one simple test (upload data, send request, or open endpoint).")
            lines.append("7. Check logs/metrics and capture one screenshot or note as evidence.")
            lines.append("8. Clean up: delete created resources and confirm billing-safe state.")
            lines.append("")

    lines.append("### Quick Troubleshooting")
    lines.append("- Access denied: verify role permissions or ask admin for least-privilege lab policy.")
    lines.append("- Resource limit reached: pick another region or request quota increase.")
    lines.append("- Unexpected charges: stop/delete resources and review cost explorer immediately.")
    lines.append("")
    return "\n".join(lines).rstrip() + "\n"


def detect_capabilities(content: str) -> list[tuple[str, str, str, str]]:
    text = content.lower()
    table: list[tuple[str, str, str, str]] = []

    def add(row: tuple[str, str, str, str]) -> None:
        if row not in table:
            table.append(row)

    if any(k in text for k in ["iam", "role", "policy", "auth", "federation", "identity"]):
        add(("Identity", "IAM / IAM Identity Center", "Microsoft Entra ID + RBAC", "Cloud IAM"))
    if any(k in text for k in ["s3", "storage", "bucket", "blob", "object", "backup"]):
        add(("Object Storage", "Amazon S3", "Azure Blob Storage", "Cloud Storage"))
    if any(k in text for k in ["ec2", "vm", "instance", "compute", "autoscaling"]):
        add(("Virtual Machines", "Amazon EC2", "Azure Virtual Machines", "Compute Engine"))
    if any(k in text for k in ["lambda", "serverless", "function"]):
        add(("Serverless Functions", "AWS Lambda", "Azure Functions", "Cloud Functions / Cloud Run"))
    if any(k in text for k in ["eks", "ecs", "kubernetes", "container"]):
        add(("Containers", "Amazon EKS / ECS", "AKS", "GKE / Cloud Run"))
    if any(k in text for k in ["rds", "dynamodb", "database", "sql", "nosql", "redis", "cache"]):
        add(("Databases", "RDS / DynamoDB / ElastiCache", "Azure SQL / Cosmos DB / Azure Cache", "Cloud SQL / Firestore / Memorystore"))
    if any(k in text for k in ["vpc", "subnet", "dns", "route", "load balancer", "gateway"]):
        add(("Networking", "VPC / Route 53 / ELB", "VNet / DNS / Load Balancer", "VPC / Cloud DNS / Cloud Load Balancing"))
    if any(k in text for k in ["cloudwatch", "monitor", "log", "metric", "alarm", "trace"]):
        add(("Observability", "CloudWatch / X-Ray / CloudTrail", "Azure Monitor / App Insights / Activity Log", "Cloud Monitoring / Cloud Logging / Cloud Trace"))
    if any(k in text for k in ["sagemaker", "bedrock", "rekognition", "textract", "comprehend", "ml", "ai", "model"]):
        add(("AI/ML", "SageMaker / Bedrock / AI services", "Azure ML / Azure OpenAI / AI services", "Vertex AI / GenAI services"))
    if any(k in text for k in ["migration", "mgn", "dms", "dr", "restore", "rto", "rpo"]):
        add(("Migration/DR", "MGN / DMS / Backup", "Azure Migrate / DMS / Backup", "Migrate to VMs / Database Migration / Backup and DR"))
    if any(k in text for k in ["cost", "budget", "savings", "finops"]):
        add(("Cost Management", "Cost Explorer / Budgets", "Cost Management + Billing", "Cloud Billing + Budgets"))

    if not table:
        table = [
            ("Compute", "Amazon EC2", "Azure Virtual Machines", "Compute Engine"),
            ("Storage", "Amazon S3", "Azure Blob Storage", "Cloud Storage"),
            ("Monitoring", "Amazon CloudWatch", "Azure Monitor", "Cloud Monitoring"),
        ]

    return table[:8]


def build_cross_cloud_section(
    topic: str,
    capability_rows: list[tuple[str, str, str, str]],
    service_playbooks: list[dict[str, str | list[str]]],
) -> str:
    lines: list[str] = []
    lines.append("## Cross-Cloud Thinking Mode")
    lines.append("")
    lines.append(f"Use this lens to study {topic} in a cloud-agnostic way: focus on capability first, provider name second.")
    lines.append("")
    lines.append("### Capability Mapping (AWS / Azure / GCP)")
    lines.append("| Capability | AWS | Azure | GCP |")
    lines.append("|---|---|---|---|")
    for cap, aws, azure, gcp in capability_rows:
        lines.append(f"| {cap} | {aws} | {azure} | {gcp} |")
    lines.append("")
    if service_playbooks:
        lines.append("### Same Lab Across 3 Clouds")
        lines.append("| Lab Theme | AWS | Azure | GCP |")
        lines.append("|---|---|---|---|")
        for playbook in service_playbooks:
            lines.append(
                "| "
                + str(playbook["name"])
                + " | "
                + str(playbook["name"])
                + " | "
                + str(playbook["azure_equivalent"])
                + " | "
                + str(playbook["gcp_equivalent"])
                + " |"
            )
        lines.append("")

    lines.append("### How To Think Cross-Cloud")
    lines.append("1. Start with workload requirement: latency, throughput, security, and compliance.")
    lines.append("2. Map requirement to capability family (identity, network, compute, data, observability).")
    lines.append("3. Compare service behavior, not branding: limits, scaling model, and failure modes.")
    lines.append("4. Keep a portable architecture note: what is generic vs provider-specific.")
    lines.append("5. Test same mini-lab in at least 2 clouds and write down differences.")
    lines.append("")
    lines.append("### Child-Friendly Practice Challenge")
    lines.append("- Pick one simple task (for example: upload one file, run one function, read one metric).")
    lines.append("- Do the same task in AWS, Azure, and GCP.")
    lines.append("- Fill this mini template:")
    lines.append("  - What was the same?")
    lines.append("  - What had a different name?")
    lines.append("  - What felt easier/harder and why?")
    lines.append("")
    return "\n".join(lines).rstrip() + "\n"


def build_enhancement_block(content: str, topic: str, family: str) -> str:
    base_content = strip_existing_enhancements(content)
    candidate_lines = extract_candidate_lines(base_content)
    buckets = infer_activity_buckets(base_content)
    capabilities = detect_capabilities(base_content)
    service_playbooks = detect_service_playbooks(base_content, family=family)

    hands_on = build_hands_on_section(topic, candidate_lines, buckets, service_playbooks)
    cross_cloud = build_cross_cloud_section(topic, capabilities, service_playbooks)

    return (
        f"{BEGIN_MARKER}\n\n"
        f"{hands_on}\n"
        f"{cross_cloud}\n"
        f"{END_MARKER}\n"
    )


def upsert_enhancement(content: str, block: str) -> str:
    if BEGIN_MARKER in content and END_MARKER in content:
        return re.sub(
            rf"{re.escape(BEGIN_MARKER)}[\s\S]*?{re.escape(END_MARKER)}\n?",
            block,
            content,
            count=1,
        )

    insertion_points = [
        "\n## Cross-Domain Referrals",
        "\n## Step 1 - Line-by-Line Extraction",
    ]
    for marker in insertion_points:
        pos = content.find(marker)
        if pos != -1:
            return content[:pos].rstrip() + "\n\n" + block + "\n" + content[pos:].lstrip("\n")

    return content.rstrip() + "\n\n" + block + "\n"


def find_target_files(kb_root: Path) -> list[Path]:
    all_md = sorted(kb_root.rglob("*.md"))
    return [p for p in all_md if is_topic_kb_file(p)]


def run(kb_root: Path, dry_run: bool = False) -> dict[str, object]:
    stats = EnrichmentStats()
    updated_files: list[str] = []

    for path in find_target_files(kb_root):
        stats.scanned += 1
        original = read_text(path)
        family = infer_kb_family(path)
        cleaned = strip_visual_assets_section(original)
        topic = extract_scope_topic(cleaned, path.stem)
        block = build_enhancement_block(cleaned, topic, family)
        updated = upsert_enhancement(cleaned, block)

        if updated == original:
            stats.skipped += 1
            continue

        if not dry_run:
            write_text(path, updated)
        stats.updated += 1
        updated_files.append(str(path).replace("\\", "/"))

    return {
        "kb_root": str(kb_root).replace("\\", "/"),
        "scanned": stats.scanned,
        "updated": stats.updated,
        "skipped": stats.skipped,
        "updated_files": updated_files,
    }


def build_parser() -> argparse.ArgumentParser:
    p = argparse.ArgumentParser(
        description="Enrich KB topic markdown files with hands-on and cross-cloud teaching sections."
    )
    p.add_argument("--kb-root", default=str(KB_ROOT_DEFAULT), help="Knowledge Base root path.")
    p.add_argument("--dry-run", action="store_true", help="Preview only; do not write files.")
    p.add_argument("--report", default="cache/kb_enrichment_report.json", help="Where to write JSON report.")
    return p


def main() -> None:
    args = build_parser().parse_args()
    kb_root = Path(args.kb_root)
    if not kb_root.exists():
        raise SystemExit(f"KB root not found: {kb_root}")

    report = run(kb_root=kb_root, dry_run=args.dry_run)

    report_path = Path(args.report)
    report_path.parent.mkdir(parents=True, exist_ok=True)
    report_path.write_text(json.dumps(report, indent=2), encoding="utf-8")

    print(json.dumps(report, indent=2))
    print(f"Report written: {report_path}")


if __name__ == "__main__":
    main()
