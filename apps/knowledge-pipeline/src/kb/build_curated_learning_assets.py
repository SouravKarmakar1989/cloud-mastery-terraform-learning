from __future__ import annotations

import re
from dataclasses import dataclass
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
AWS_KB_ROOT = ROOT / "Knowledge Base" / "AWS"


@dataclass(frozen=True)
class TopicPlan:
    concept_domain: str
    decisions: tuple[str, ...]
    concepts: tuple[tuple[str, tuple[str, str]], ...]
    labs: tuple[tuple[str, str, tuple[str, ...]], ...]
    troubleshooting: tuple[tuple[str, str, str], ...]
    mapping_rows: tuple[tuple[str, str, str, str], ...]


STORAGE_MAPPING = (
    ("Object storage baseline", "Amazon S3", "Azure Blob Storage", "Cloud Storage"),
    ("Lifecycle and replication controls", "S3 lifecycle plus replication", "Lifecycle management plus object replication", "Lifecycle management plus bucket replication"),
    ("Block storage for compute", "EBS", "Managed Disks", "Persistent Disk"),
    ("Shared file storage", "EFS and FSx", "Azure Files and Azure NetApp Files", "Filestore and NetApp Volumes"),
    ("Hybrid transfer and edge mobility", "DataSync, Storage Gateway, Transfer Family, Snow Family", "Data Box, Azure File Sync, SFTP patterns", "Transfer Service, Transfer Appliance, Storage Transfer patterns"),
)


DATABASE_MAPPING = (
    ("Managed relational core", "RDS and Aurora", "Azure SQL plus managed PostgreSQL/MySQL", "Cloud SQL and AlloyDB"),
    ("Key-value NoSQL", "DynamoDB", "Cosmos DB", "Firestore and Bigtable"),
    ("Managed cache tier", "ElastiCache and MemoryDB", "Azure Cache for Redis", "Memorystore"),
    ("Specialized data engines", "DocumentDB, Neptune, Keyspaces, Timestream", "Cosmos APIs and Azure Data Explorer", "Partner engines plus native time-series and wide-column services"),
    ("Operational migration and selection", "DMS, backups, replicas, proxies", "Database Migration Service and platform operations", "Database Migration Service and managed database operations"),
)


NETWORK_MAPPING = {
    "01_VPC_Core": (
        ("Private virtual network boundary", "VPC", "Virtual Network", "VPC Network"),
        ("Address segmentation", "Subnets and route tables", "Subnets and route tables", "Subnets and routes"),
        ("Outbound internet pattern", "IGW plus NAT Gateway", "Internet plus NAT Gateway", "Cloud NAT plus internet gateway path"),
        ("Instance network identity", "ENI and Elastic IP", "NIC and Public IP", "NIC and external IP"),
        ("Traffic boundary enforcement", "Security Groups and NACLs", "NSG and subnet rules", "Firewall rules and policy controls"),
    ),
    "02_VPC_Connectivity": (
        ("Private VPC-to-VPC link", "Peering and PrivateLink", "VNet peering and Private Link", "VPC peering and Private Service Connect"),
        ("Central transit fabric", "Transit Gateway", "Virtual WAN and hub routing", "Network Connectivity Center"),
        ("On-premises private path", "Site-to-Site VPN and Direct Connect", "VPN Gateway and ExpressRoute", "Cloud VPN and Interconnect"),
        ("Service endpoint pattern", "Gateway endpoint and interface endpoint", "Service endpoint and Private Endpoint", "Private Google Access and Private Service Connect"),
        ("Shared service publishing", "PrivateLink service", "Private Link service", "Private Service Connect producer service"),
    ),
    "03_VPC_DNS_DHCP": (
        ("VPC-local resolver", "Route 53 Resolver", "Azure-provided DNS plus Private DNS Resolver", "Cloud DNS plus metadata resolver"),
        ("Private namespace hosting", "Private hosted zones", "Private DNS zones", "Private Cloud DNS zones"),
        ("Hybrid DNS forwarding", "Resolver inbound and outbound endpoints", "DNS forwarding rulesets", "Cloud DNS inbound and outbound forwarding"),
        ("Host bootstrap parameters", "DHCP option sets", "VNet DNS settings and DHCP defaults", "Project or VPC DNS policy defaults"),
        ("Split-horizon naming", "Public and private Route 53 views", "Public and private DNS zones", "Public and private Cloud DNS zones"),
    ),
    "04_Load_Balancing": (
        ("Layer 7 entry", "Application Load Balancer", "Application Gateway", "External HTTP(S) Load Balancer"),
        ("Layer 4 entry", "Network Load Balancer", "Azure Load Balancer", "Passthrough TCP/UDP load balancing"),
        ("Appliance insertion", "Gateway Load Balancer", "NVA chaining patterns", "Service chaining patterns"),
        ("Health-aware backend pool", "Target groups", "Backend pools", "Backend services"),
        ("Edge acceleration", "CloudFront in front of ALB", "Front Door in front of App Gateway", "Global edge balancing plus Cloud Armor"),
    ),
    "05_Route53_DNS_Routing": (
        ("Authoritative DNS", "Route 53 hosted zones", "Azure DNS", "Cloud DNS"),
        ("Health-driven traffic steering", "Route 53 health checks", "Traffic Manager probes", "Load-balancer and DNS health signals"),
        ("Latency and geolocation routing", "Route 53 routing policies", "Traffic Manager routing methods", "Policy-based DNS and global load balancing"),
        ("Private name resolution", "Private hosted zones", "Private DNS zones", "Private Cloud DNS zones"),
        ("Registrar and delegation model", "Route 53 registrar and NS delegation", "External registrar plus Azure DNS delegation", "External registrar plus Cloud DNS delegation"),
    ),
    "06_Global_Edge_Acceleration": (
        ("CDN edge cache", "CloudFront", "Azure Front Door", "Cloud CDN"),
        ("Static anycast acceleration", "Global Accelerator", "Front Door and Traffic Manager patterns", "Global load balancing plus Premium Tier"),
        ("Origin protection", "OAC, origin shielding, WAF layering", "Private origins and WAF", "Cloud Armor plus private origin patterns"),
        ("TLS at the edge", "ACM plus CloudFront", "Managed certificates on Front Door", "Managed certificates on external HTTPS load balancing"),
        ("Global routing control", "Edge POP selection and accelerator endpoints", "Front Door global routing", "Google edge routing and global balancing"),
    ),
    "07_Hybrid_Connectivity": (
        ("Encrypted hybrid path", "Site-to-Site VPN", "VPN Gateway", "Cloud VPN"),
        ("Dedicated circuit", "Direct Connect", "ExpressRoute", "Dedicated or Partner Interconnect"),
        ("Routing exchange", "BGP over VGW or TGW attachments", "BGP over VPN or ExpressRoute", "Cloud Router and BGP"),
        ("Branch and multi-site design", "TGW-based hybrid fan-out", "Virtual WAN hubs", "NCC and hub-and-spoke patterns"),
        ("Private service reachback", "Interface endpoints and resolver forwarding", "Private Endpoints and DNS forwarding", "Private Service Connect and DNS policy"),
    ),
    "08_Traffic_Analysis_Troubleshooting": (
        ("Flow visibility", "VPC Flow Logs", "NSG flow logs", "VPC Flow Logs"),
        ("Packet and path analysis", "Traffic Mirroring and Reachability Analyzer", "Packet capture and Network Watcher topology tools", "Packet Mirroring and Connectivity Tests"),
        ("Edge and LB diagnostics", "ELB logs and CloudWatch", "Load balancer diagnostics and Azure Monitor", "Load balancer logging and Cloud Monitoring"),
        ("DNS troubleshooting", "Resolver query logs", "DNS analytics and query logs", "Cloud DNS logging"),
        ("Incident evidence loop", "CloudTrail plus Config plus network telemetry", "Activity Log plus Policy plus Monitor", "Audit Logs plus Network Intelligence Center signals"),
    ),
    "09_Network_Security_Controls": (
        ("Stateful workload firewall", "Security Groups", "NSGs", "VPC firewall rules"),
        ("Subnet-level coarse filtering", "NACLs", "Subnet-level NSG patterns", "Hierarchical firewall and subnet tagging patterns"),
        ("Managed network firewall", "AWS Network Firewall", "Azure Firewall", "Cloud Firewall and policy layers"),
        ("Private exposure reduction", "PrivateLink and endpoint policies", "Private Endpoint and service endpoints", "Private Service Connect"),
        ("DDoS and edge protection", "Shield, WAF, and CloudFront", "DDoS Protection and WAF", "Cloud Armor and edge security"),
    ),
    "10_Network_Performance_Optimization": (
        ("Low-latency placement", "Placement groups and ENA", "Proximity placement groups and accelerated networking", "Compact placement and gVNIC"),
        ("High-throughput east-west traffic", "Enhanced networking and jumbo frames", "Accelerated networking and tuned MTU", "Tiered networking and tuned MTU"),
        ("Storage and network interaction", "EBS-optimized plus instance bandwidth planning", "Disk and NIC performance alignment", "Persistent Disk plus NIC throughput alignment"),
        ("Edge performance", "CloudFront and Global Accelerator", "Front Door and CDN", "Cloud CDN and Premium Tier"),
        ("Cost-aware optimization", "Cross-AZ transfer and NAT cost trade-offs", "Zone traffic and gateway cost trade-offs", "Inter-zone traffic and egress cost trade-offs"),
    ),
    "11_Transit_CloudWAN_Lattice": (
        ("Regional transit core", "Transit Gateway", "Virtual WAN hub", "Network Connectivity Center"),
        ("Global WAN policy layer", "Cloud WAN", "Virtual WAN global routing", "Global network management via NCC patterns"),
        ("Service-to-service network", "VPC Lattice", "Application routing meshes and private link patterns", "Service directory plus PSC and mesh patterns"),
        ("Segmented route domains", "TGW route tables and Cloud WAN segments", "Hub route domains and secured virtual hubs", "Segmented hub and spoke policies"),
        ("Application-network decoupling", "Lattice auth and service discovery", "Private app access patterns", "Managed service networking plus service mesh"),
    ),
    "12_EKS_Networking": (
        ("Managed Kubernetes network model", "EKS VPC CNI", "AKS kubenet or Azure CNI", "GKE VPC-native networking"),
        ("Pod address scale", "Secondary ENI IP allocation and prefix delegation", "Subnet sizing and pod CIDR planning", "Alias IP ranges"),
        ("Service exposure", "LoadBalancer, ALB ingress, NLB, and Gateway API patterns", "Internal or external load balancer plus ingress", "Service, ingress, and gateway patterns"),
        ("Pod isolation", "Security groups for pods and network policy", "Network policy and NSG layering", "Network policy and firewall layering"),
        ("Private cluster posture", "Private API endpoint plus private nodes", "Private AKS", "Private GKE"),
    ),
    "13_Governance_Operations": (
        ("Address governance", "IPAM", "Azure Virtual Network Manager plus IP planning", "IP planning and policy tooling"),
        ("Provisioning guardrails", "CloudFormation, Service Catalog, and SCP-aware patterns", "Bicep, Policy, and Blueprint-aligned patterns", "Terraform and Organization Policy patterns"),
        ("Continuous compliance", "Config, CloudTrail, and Security Hub alignment", "Policy, Activity Log, and Defender alignment", "Organization Policy, Audit Logs, and SCC alignment"),
        ("Change visibility", "EventBridge plus CloudWatch plus Config rules", "Azure Monitor plus Activity Log", "Event-driven ops plus Audit Logs and Monitoring"),
        ("Central network platform operations", "Shared networking account model", "Landing zone connectivity subscriptions", "Host project and platform project models"),
    ),
}


DEFAULT_STORAGE_TROUBLESHOOTING = (
    ("Unexpected AccessDenied", "Bucket policy, Block Public Access, KMS policy, or object ownership mismatch", "Check the caller principal, bucket policy evaluation, and encryption key policy together"),
    ("Objects restore too slowly or remain unavailable", "Archive tier retrieval has not completed or lifecycle changed the object state", "Inspect the current storage class, restore status, and lifecycle timers"),
    ("Transfer job stalls or never starts", "Agent reachability, endpoint routing, or IAM trust is incomplete", "Validate network reachability on port 443, task execution role, and endpoint resolution"),
    ("Throughput is lower than expected", "The chosen storage service or class does not match the access pattern", "Check request concurrency, filesystem mode, and the service-specific throughput model"),
    ("Cost is higher than expected", "Duplicate retention, retrieval fees, or wrong class selection", "Review lifecycle, replication scope, archive restores, and request-heavy access paths"),
)


DEFAULT_DATABASE_TROUBLESHOOTING = (
    ("Clients cannot connect to the database", "Security groups, subnet placement, or DNS endpoint assumptions are wrong", "Check the network path, endpoint DNS name, and whether the database is publicly or privately reachable"),
    ("Reads are stale or inconsistent", "Replica lag or eventual-consistency assumptions were ignored", "Confirm the read path, replication lag, and whether the workload requires a writer endpoint"),
    ("Performance collapses under burst load", "Connections, hot keys, or cache misses are saturating the control point", "Inspect connection count, partition distribution, cache hit rate, and throttling metrics"),
    ("Recovery did not match expectations", "Backup or failover behavior was misunderstood before the incident", "Re-check backup retention, restore granularity, replica topology, and failover mode"),
    ("Costs keep growing quietly", "Instance sizing, duplicated replicas, or always-on accelerators are oversized", "Compare actual utilization with provisioned compute, storage, and cache footprint"),
)


DEFAULT_NETWORK_TROUBLESHOOTING = (
    ("Traffic does not reach the target", "The route path, attachment, or return path is wrong", "Start with route tables, attachment state, and whether the return path is symmetric"),
    ("DNS resolution works in one place but fails in another", "Resolver rules, private zones, or forwarding boundaries are incomplete", "Check which resolver answered, what zone was authoritative, and where forwarding stops"),
    ("A security control appears to allow traffic but packets still fail", "Another layer is denying or bypassing the expected flow", "Evaluate security groups, NACLs, firewall policy, and the actual source or destination identity together"),
    ("Performance is inconsistent", "Path length, cross-zone movement, or overloaded translation points are adding latency", "Inspect the chosen path, NAT or proxy hops, and whether traffic locality matches the design"),
    ("The incident is hard to explain after the fact", "Telemetry was not enabled at the right layer", "Check flow logs, query logs, LB logs, and control-plane audit logs before reproducing the issue"),
)


TOPIC_PLANS = {
    "01_S3_Foundations": TopicPlan(
        concept_domain="Storage",
        decisions=(
            "Decide whether the bucket is a private system boundary, a public delivery surface, or both through layered services.",
            "Decide how storage class selection should follow actual access patterns rather than static assumptions.",
            "Decide whether versioning and lifecycle are mandatory controls or optional conveniences for this workload.",
            "Decide how object access should be governed across IAM, bucket policy, encryption policy, and endpoint path.",
            "Decide when static website delivery belongs on plain S3 and when it should be fronted by CloudFront or another edge layer.",
        ),
        concepts=(
            ("Object storage is a namespace and policy system", (
                "Buckets are regional control boundaries, while objects are the actual units of data, metadata, and storage-class economics.",
                "S3 works best when teams stop thinking in folders and start thinking in prefixes, policies, and API-driven access patterns.",
            )),
            ("Bucket defaults are architecture, not console trivia", (
                "Block Public Access, object ownership, default encryption, and versioning define the blast radius of every new object placed in the bucket.",
                "A weak default on the bucket usually becomes an operational problem much later, when a new team or tool starts writing data under pressure.",
            )),
            ("Storage class choice is economic routing", (
                "S3 storage classes are selected per object, which means cost, availability, and retrieval behavior can vary inside the same bucket.",
                "The right choice is driven by access frequency, restore urgency, and whether AWS should move objects automatically or only on explicit rules.",
            )),
            ("Lifecycle and versioning turn storage into an operating model", (
                "Versioning protects against accidental overwrite and delete events, while lifecycle rules move or expire data according to retention intent.",
                "Once these controls are present, the bucket becomes part of a governed data lifecycle instead of a passive dump location.",
            )),
            ("Public delivery should be deliberate and layered", (
                "S3 can host static content, but direct public exposure and browser access rules must be evaluated as security and caching decisions, not shortcuts.",
                "For most serious public delivery, edge services and origin controls are what keep bucket access narrow while still serving the internet safely.",
            )),
        ),
        labs=(
            ("Build a secure S3 baseline", "Create a bucket that is private by default, encrypted, versioned, and tagged for lifecycle ownership.", (
                "Create a new bucket with Block Public Access enabled and turn on versioning and default encryption.",
                "Upload a small object, then inspect its metadata, version history, and bucket-level defaults.",
                "Add a bucket policy that only allows the intended principal path, and verify that anonymous access is still denied.",
                "Document which controls live at the bucket level versus the object level.",
            )),
            ("Practice storage-class and lifecycle decisions", "Move the same dataset through different classes and see how policy changes affect retrieval behavior.", (
                "Upload a few objects and assign different storage classes manually so you can compare the per-object model.",
                "Create a lifecycle rule that transitions a prefix to a colder tier and expires temporary content after a short window.",
                "Restore or inspect at least one transitioned object so the retrieval trade-off becomes concrete.",
                "Write down why Intelligent-Tiering, Standard-IA, One Zone-IA, and Glacier tiers are not interchangeable.",
            )),
            ("Compare delivery patterns", "Contrast a private bucket, a public website-style bucket, and an edge-fronted delivery path.", (
                "Test browser access to a private object and record the denial path.",
                "Create a narrowly scoped public content example or a temporary website configuration in a sandbox account only.",
                "Front the same content with CloudFront or map the equivalent Azure/GCP pattern so you can compare origin protection approaches.",
                "Summarize when direct bucket access is acceptable and when an edge layer is the safer default.",
            )),
        ),
        troubleshooting=DEFAULT_STORAGE_TROUBLESHOOTING + (
            ("Static website behavior is inconsistent", "Website hosting, bucket policy, and browser-side CORS expectations are mixed together", "Check whether the request is using the website endpoint, the object endpoint, or an edge distribution"),
        ),
        mapping_rows=(
            ("Object storage namespace", "Amazon S3", "Azure Blob Storage", "Cloud Storage"),
            ("Per-object storage economics", "S3 storage classes", "Blob access tiers", "Cloud Storage classes"),
            ("Static website object hosting", "S3 website hosting", "Static website hosting on Storage", "Cloud Storage static website patterns"),
            ("Bucket-level governance", "Bucket policies, BPA, object ownership", "Container ACL and RBAC patterns", "Bucket IAM and public-access prevention"),
            ("Lifecycle and retention", "Lifecycle rules and versioning", "Lifecycle management and versioning", "Object lifecycle management and versioning"),
        ),
    ),
    "02_S3_Advanced_Data_Management": TopicPlan(
        concept_domain="Storage",
        decisions=(
            "Decide whether lifecycle, replication, and eventing are storage-side workflows or platform-wide data contracts.",
            "Decide when access points should separate tenants or applications instead of sharing one broad bucket policy surface.",
            "Decide how object metadata, tags, and batch operations will support large-scale governance and reprocessing.",
            "Decide whether replication is for resilience, sovereignty, analytics locality, or all three with different controls.",
            "Decide how event-driven processing should avoid turning the bucket into an accidental orchestration engine.",
        ),
        concepts=(
            ("Lifecycle is a data-movement workflow", (
                "Advanced S3 operations treat object state transitions as controlled movement across cost, retention, and restore boundaries.",
                "A lifecycle rule is valuable only when the team understands what should happen to current versions, previous versions, and incomplete uploads.",
            )),
            ("Replication changes the recovery model", (
                "Cross-Region and Same-Region Replication create more than copies; they redefine where recovery, compliance, and analytics can happen.",
                "The important questions are ownership of the destination, encryption alignment, replication scope, and what is intentionally excluded.",
            )),
            ("Access points and Object Lambda decouple consumers", (
                "Access points let one shared bucket present different policy and network paths to different applications or teams.",
                "Object Lambda goes further by allowing content transformation at read time so the storage layout stays stable while consumer views change.",
            )),
            ("Metadata and batch tooling matter at scale", (
                "Tags, user metadata, inventory reports, and batch operations become the operational layer once there are millions of objects and many distinct consumers.",
                "At that point, the architecture challenge is no longer upload and download; it is controlled classification, filtering, and bulk change management.",
            )),
            ("Observability closes the object-management loop", (
                "Storage Lens, inventory, event notifications, and audit logs make it possible to reason about drift, compliance, and access behavior over time.",
                "Without that visibility, lifecycle and replication rules become invisible background automation that teams trust only until something breaks.",
            )),
        ),
        labs=(
            ("Model lifecycle transitions at scale", "Create prefix-based lifecycle rules that treat hot, warm, and disposable objects differently.", (
                "Create several prefixes that simulate application data with different retention expectations.",
                "Apply lifecycle rules that transition, expire, or clean up incomplete multipart uploads.",
                "Verify that rules apply to the intended scope and note how current and noncurrent versions behave differently.",
                "Explain how you would change the design if legal retention or analytics replay became mandatory.",
            )),
            ("Build a replication path", "Set up replication with a narrow scope and validate the destination-side assumptions.", (
                "Create a destination bucket with matching encryption and ownership expectations.",
                "Configure scoped replication for only one prefix or tag group rather than mirroring the whole bucket blindly.",
                "Verify which metadata, version history, and object states replicate and which do not.",
                "Capture what would need to change for cross-account, cross-region, or sovereignty-driven replication.",
            )),
            ("Separate consumers with access points", "Use access points or the closest Azure/GCP equivalents to expose one dataset through multiple controlled views.", (
                "Create an access point for one consuming application with a network or principal boundary that differs from the bucket default.",
                "Map the request path so you can explain why the access point exists instead of another bucket.",
                "Review Object Lambda or transformation-at-read patterns for a case where consumers should not see raw objects directly.",
                "Summarize what governance problem this solves better than a single shared bucket policy.",
            )),
        ),
        troubleshooting=DEFAULT_STORAGE_TROUBLESHOOTING + (
            ("Replication never catches up or skips objects", "Versioning, scope filters, destination permissions, or encryption alignment are incomplete", "Check versioning state on both buckets, replication rule scope, and the destination IAM/KMS path"),
        ),
        mapping_rows=(
            ("Lifecycle automation", "S3 lifecycle", "Blob lifecycle management", "Cloud Storage lifecycle management"),
            ("Replication control", "SRR and CRR", "Object replication", "Bucket replication"),
            ("Scoped consumer access", "S3 Access Points", "Private endpoints plus RBAC patterns", "Bucket IAM plus PSC access patterns"),
            ("Read-time object transformation", "S3 Object Lambda", "Function-backed content mediation patterns", "Function-backed object mediation patterns"),
            ("Large-scale object inventory", "S3 Inventory, Batch Operations, Storage Lens", "Inventory plus lifecycle analytics", "Inventory reports plus Storage Insights"),
        ),
    ),
}


TOPIC_DIRS = (
    AWS_KB_ROOT / "AWS Storage Knowledge Base",
    AWS_KB_ROOT / "AWS Database Knowledge Base",
    AWS_KB_ROOT / "AWS Networking Knowledge Base",
)


def humanize_topic_name(file_stem: str) -> str:
    without_prefix = re.sub(r"^\d+_", "", file_stem)
    return without_prefix.replace("_", " ")


def extract_section(text: str, heading: str) -> str:
    pattern = re.compile(rf"(?ms)^({re.escape(heading)}\n.*?)(?=^## |\Z)")
    match = pattern.search(text)
    if not match:
        raise ValueError(f"Could not find section {heading!r}")
    return match.group(1).strip()


def extract_real_material_heading(text: str) -> str:
    match = re.search(r"(?m)^## Real Material - Architect Learning Build.*$", text)
    if not match:
        raise ValueError("Could not find real material heading")
    return match.group(0).strip()


def extract_modules(text: str) -> list[str]:
    start_match = re.search(r"(?m)^## Real Material - Architect Learning Build.*$", text)
    if not start_match:
        raise ValueError("Could not find real material start")

    end_patterns = (
        r"(?m)^### Phase 2",
        r"(?m)^## Key Operational Decisions",
        r"(?m)^## Step 1",
        r"(?m)^## Hands-On Practice",
        r"(?m)^## Cross-Domain Referrals",
    )
    end_positions = []
    for pattern in end_patterns:
        match = re.search(pattern, text[start_match.end():])
        if match:
            end_positions.append(start_match.end() + match.start())
    module_region = text[start_match.end(): min(end_positions) if end_positions else len(text)]

    starts = [m.start() for m in re.finditer(r"(?m)^#### ", module_region)]
    modules: list[str] = []
    for idx, start in enumerate(starts):
        end = starts[idx + 1] if idx + 1 < len(starts) else len(module_region)
        block = module_region[start:end].strip()
        block = block.split("\n##### Source Coverage Stats", 1)[0].rstrip()
        if block:
            modules.append(block)
    return modules


def extract_module_titles(text: str) -> list[str]:
    titles = []
    for block in extract_modules(text):
        first_line = block.splitlines()[0]
        title = re.sub(r"^####\s*Module\s*\d*:? ?", "", first_line).strip()
        titles.append(title)
    return titles


def scope_stat(scope: str, label: str) -> str | None:
    match = re.search(rf"(?m)^- {re.escape(label)}:\s*(.+)$", scope)
    return match.group(1).strip() if match else None


def build_source_authority(scope: str) -> str:
    files_processed = scope_stat(scope, "Files processed")
    extracted_lines = scope_stat(scope, "Extracted non-empty transcript lines")
    ownership = scope_stat(scope, "Primary source ownership")
    parts = []
    if files_processed:
        parts.append(f"{files_processed} processed source files")
    if extracted_lines:
        parts.append(f"{extracted_lines} extracted non-empty transcript lines")
    if ownership:
        parts.append(f"owned by {ownership}")
    if not parts:
        return "curated source-module details from the primary knowledge base"
    return ", ".join(parts)


def render_mapping_table(rows: tuple[tuple[str, str, str, str], ...]) -> str:
    lines = [
        "| Underlying Concept | AWS | Azure | GCP |",
        "|---|---|---|---|",
    ]
    lines.extend(f"| {concept} | {aws} | {azure} | {gcp} |" for concept, aws, azure, gcp in rows)
    return "\n".join(lines)


def detect_domain(source_path: Path) -> str:
    folder = source_path.parent.name
    if "Storage" in folder:
        return "storage"
    if "Database" in folder:
        return "database"
    return "networking"


def fallback_mapping_rows(domain: str, file_stem: str) -> tuple[tuple[str, str, str, str], ...]:
    if domain == "storage":
        return STORAGE_MAPPING
    if domain == "database":
        return DATABASE_MAPPING
    return NETWORK_MAPPING.get(file_stem, NETWORK_MAPPING["01_VPC_Core"])


def fallback_decisions(domain: str, topic_name: str) -> tuple[str, ...]:
    topic_lower = topic_name.lower()
    if domain == "storage":
        return (
            f"Decide which access pattern {topic_lower} is really serving before you optimize for price or convenience.",
            f"Decide how protection, retention, and recovery should be embedded into {topic_lower} rather than attached afterward.",
            f"Decide whether lifecycle automation or manual control is safer for the data moved through {topic_lower}.",
            f"Decide how identity, network path, and encryption should govern access to {topic_lower}.",
            f"Decide which observability signals will prove that {topic_lower} is healthy, cost-aligned, and recoverable.",
        )
    if domain == "database":
        return (
            f"Decide what data model and access pattern {topic_lower} is supposed to serve before comparing product features.",
            f"Decide how consistency, latency, and recovery trade-offs should be made explicit inside {topic_lower}.",
            f"Decide which scaling or acceleration layer belongs in the design and which would only add hidden complexity.",
            f"Decide how identity, network controls, and backup posture will be validated for {topic_lower}.",
            f"Decide how the team will know early that {topic_lower} is becoming the wrong fit for the workload.",
        )
    return (
        f"Decide what boundary or path {topic_lower} is supposed to control before you add more routes, policies, or services.",
        f"Decide how identity, DNS, and routing assumptions should be documented around {topic_lower}.",
        f"Decide which layer should own reachability, security, and failover behavior in {topic_lower}.",
        f"Decide which telemetry proves that {topic_lower} is working as designed instead of only appearing configured.",
        f"Decide how governance and operational ownership will keep {topic_lower} understandable as the platform grows.",
    )


def fallback_concepts(domain: str, topic_name: str, module_titles: list[str]) -> tuple[tuple[str, tuple[str, str]], ...]:
    lowered = topic_name.lower()
    titles = module_titles[:3] if module_titles else ["Mental Model", "Core Controls", "Operational Patterns"]
    concepts: list[tuple[str, tuple[str, str]]] = []
    if titles:
        concepts.append(
            (
                titles[0],
                (
                    f"{titles[0]} sets the boundary for {lowered}, because it explains what the platform owns, what the operator owns, and where the first failure usually appears.",
                    f"When that boundary is fuzzy, teams tend to misread symptoms and make design choices in {lowered} that solve the wrong problem.",
                ),
            )
        )
    if len(titles) > 1:
        concepts.append(
            (
                titles[1],
                (
                    f"{titles[1]} matter because they determine how the control plane, data path, and identity or addressing model actually work inside {lowered}.",
                    f"Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording.",
                ),
            )
        )
    if len(titles) > 2:
        concepts.append(
            (
                titles[2],
                (
                    f"{titles[2]} are where scale, resilience, and governance turn basic feature knowledge into durable system design for {lowered}.",
                    f"This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure.",
                ),
            )
        )

    if domain == "storage":
        concepts.extend(
            [
                (
                    "Durability, recovery, and economics must stay linked",
                    (
                        f"Storage decisions in {lowered} are strongest when retention, recovery time, and cost are chosen together instead of by separate teams.",
                        f"A cheap storage path is still a weak design if {lowered} cannot be restored or audited when the business needs it back.",
                    ),
                ),
                (
                    "Cross-cloud thinking keeps the design honest",
                    (
                        f"{lowered.capitalize()} becomes easier to reason about when you can explain the same intent on Azure and GCP without depending on one AWS-only label.",
                        f"That comparison usually reveals whether the design is really about object, file, block, or transfer behavior instead of one service name.",
                    ),
                ),
            ]
        )
    elif domain == "database":
        concepts.extend(
            [
                (
                    "Failure behavior should drive platform choice",
                    (
                        f"The durable way to study {lowered} is to ask how it fails under skew, burst, lag, or operator error rather than to memorize feature bullets.",
                        f"Once failure behavior is explicit, the right database or cache choice inside {lowered} becomes much easier to defend.",
                    ),
                ),
                (
                    "Cross-cloud comparison exposes the real workload shape",
                    (
                        f"If you can map {lowered} cleanly to Azure and GCP, you usually understand whether the workload wants relational integrity, key-value scale, caching, or a specialized model.",
                        f"That portability also makes it easier to explain why this topic is an architecture decision and not just a console preference.",
                    ),
                ),
            ]
        )
    else:
        concepts.extend(
            [
                (
                    "Observability is part of the network design",
                    (
                        f"{lowered.capitalize()} is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path.",
                        f"Without those signals, networking problems inside {lowered} often masquerade as random application or infrastructure failures.",
                    ),
                ),
                (
                    "Cross-cloud mapping keeps the boundary clear",
                    (
                        f"Mapping {lowered} to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it.",
                        f"That usually makes both troubleshooting and migration planning easier because the real control surface stays visible.",
                    ),
                ),
            ]
        )
    return tuple(concepts[:5])


def fallback_labs(topic_name: str, module_titles: list[str]) -> tuple[tuple[str, str, tuple[str, ...]], ...]:
    lowered = topic_name.lower()
    titles = module_titles[:3] if module_titles else ["Mental Model", "Core Controls", "Operational Patterns"]
    labs = []
    for title in titles:
        labs.append(
            (
                title,
                f"Turn {title.lower()} for {lowered} into one observable and repeatable workflow.",
                (
                    f"Review the {title.lower()} section in the curated raw material for {topic_name}.",
                    f"Build or diagram one small AWS scenario that proves the core behavior behind {title.lower()}.",
                    "Capture at least one validation signal and one failure condition before you change the design again.",
                    "Write down the closest Azure or GCP equivalent so the idea becomes portable.",
                ),
            )
        )
    return tuple(labs)


def fallback_troubleshooting(domain: str, topic_name: str) -> tuple[tuple[str, str, str], ...]:
    extra = (
        f"Behavior contradicts the {topic_name.lower()} model",
        "The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal",
        "Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it",
    )
    if domain == "storage":
        return DEFAULT_STORAGE_TROUBLESHOOTING + (extra,)
    if domain == "database":
        return DEFAULT_DATABASE_TROUBLESHOOTING + (extra,)
    return DEFAULT_NETWORK_TROUBLESHOOTING + (extra,)


def plan_for(source_path: Path, original_text: str) -> TopicPlan:
    explicit = TOPIC_PLANS.get(source_path.stem)
    if explicit:
        return explicit

    domain = detect_domain(source_path)
    topic_name = humanize_topic_name(source_path.stem)
    module_titles = extract_module_titles(original_text)
    return TopicPlan(
        concept_domain=domain.capitalize(),
        decisions=fallback_decisions(domain, topic_name),
        concepts=fallback_concepts(domain, topic_name, module_titles),
        labs=fallback_labs(topic_name, module_titles),
        troubleshooting=fallback_troubleshooting(domain, topic_name),
        mapping_rows=fallback_mapping_rows(domain, source_path.stem),
    )


def render_source(source_path: Path, original_text: str, plan: TopicPlan) -> str:
    title_line = original_text.splitlines()[0].strip()
    scope_block = extract_section(original_text, "## Scope")
    real_material = extract_real_material_heading(original_text)
    modules = extract_modules(original_text)

    parts = [
        title_line,
        "",
        scope_block,
        "",
        real_material,
        "",
        "### Foundations (Modules with Source Transcript Details)",
        "",
    ]
    for module in modules:
        parts.append(module.strip())
        parts.append("")

    parts.extend(
        [
            "## Key Operational Decisions",
            "",
            *[f"- {decision}" for decision in plan.decisions],
            "",
            f"## Deep Expansion ({plan.concept_domain} Concepts)",
            "",
            "### Core Services",
            "",
        ]
    )

    for index, (concept, aws, azure, gcp) in enumerate(plan.mapping_rows, start=1):
        parts.append(f"{index}. {concept}: AWS: {aws} || Azure: {azure} || GCP: {gcp}")
    parts.extend(["", "### Architect-Level Concept Expansion", ""])

    for index, (heading, points) in enumerate(plan.concepts, start=1):
        parts.append(f"#### {index}. {heading}")
        for point in points:
            parts.append(f"- {point}")
        parts.append("")

    parts.extend(
        [
            "## Cross-Cloud Mapping (Concept-First)",
            "",
            render_mapping_table(plan.mapping_rows),
            "",
        ]
    )
    return "\n".join(parts).rstrip() + "\n"


def render_theory_section(index: int, heading: str, points: tuple[str, str], topic_name: str) -> str:
    sentence = (
        f"{points[0]} {points[1]} "
        f"In practice, the durable way to learn {topic_name.lower()} is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent."
    )
    return f"### {index}. {heading}\n\n{sentence}"


def render_labs(labs: tuple[tuple[str, str, tuple[str, ...]], ...]) -> str:
    sections = []
    for index, (title, goal, steps) in enumerate(labs, start=1):
        sections.extend(
            [
                f"### Module {index}: {title}",
                "",
                f"**Goal:** {goal}",
                "",
            ]
        )
        sections.extend(f"{step_index}. {step}" for step_index, step in enumerate(steps, start=1))
        sections.extend(
            [
                "",
                "What to record:",
                "- The architecture path or control surface you changed",
                "- The validation signals that proved the behavior",
                "- The first failure or ambiguity you noticed",
                "- The operational trade-off you would document for future reuse",
                "",
            ]
        )
    return "\n".join(sections).rstrip()


def render_learner_notes(source_path: Path, original_text: str, plan: TopicPlan) -> str:
    topic_name = humanize_topic_name(source_path.stem)
    scope_block = extract_section(original_text, "## Scope")
    authority = build_source_authority(scope_block)

    theoretical_sections = []
    for index, (heading, points) in enumerate(plan.concepts, start=1):
        theoretical_sections.append(render_theory_section(index, heading, points, topic_name))
        theoretical_sections.append("\n---\n")
    theoretical_sections.append(f"### {len(plan.concepts) + 1}. Cross-Cloud Mental Map\n\n{render_mapping_table(plan.mapping_rows)}")

    revision_points = list(plan.decisions[:4]) + [
        f"Keep the mental model for {topic_name.lower()} tied to observable signals instead of memorized labels."
    ]

    questions = [
        f"What is the primary control boundary in {topic_name.lower()}, and how would you explain it to a teammate?",
        "Which failure mode would appear first if the design assumption were wrong?",
        "What signal, log, or metric would you inspect before changing the architecture under pressure?",
        "Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?",
        "What part of this topic would become the hardest to operate at scale if left implicit?",
    ]

    parts = [
        f"# {topic_name} Learner Notes",
        "",
        f"This file is a learner-first companion to `{source_path.name}`.",
        "It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.",
        "",
        f"Source authority: {authority}. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.",
        "",
        "## How To Use This File",
        "1. Read the theory sections first so the service or platform model is clear before you touch the console.",
        "2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.",
        "3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.",
        "4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.",
        "5. Revisit the quick revision sheet before a design review, exam session, or migration plan.",
        "",
        "## Theoretical Notes",
        "",
        "\n".join(theoretical_sections),
        "",
        "## Hands-On Activity Guide",
        "",
        "### Prerequisites and Safety Rules",
        "- Use a sandbox account or non-production subscription and set a budget alert before creating resources.",
        "- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.",
        "- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.",
        "- Record both the intended design and the first thing that contradicted your expectation.",
        "",
        render_labs(plan.labs),
        "",
        "## Troubleshooting Notes",
        "",
        "| Symptom | Likely Cause | Check First |",
        "|---|---|---|",
    ]
    parts.extend(f"| {symptom} | {cause} | {check} |" for symptom, cause, check in plan.troubleshooting)
    parts.extend(
        [
            "",
            "## Quick Revision Sheet",
            *[f"- {point}" for point in revision_points],
            "",
            "## Self-Check Questions",
            *[f"{index}. {question}" for index, question in enumerate(questions, start=1)],
            "",
        ]
    )
    return "\n".join(parts).rstrip() + "\n"


def process_topic(source_path: Path) -> None:
    original_text = source_path.read_text(encoding="utf-8")
    plan = plan_for(source_path, original_text)

    source_path.write_text(render_source(source_path, original_text, plan), encoding="utf-8")
    learner_path = source_path.with_name(f"{source_path.stem}_Learner_Notes.md")
    learner_path.write_text(render_learner_notes(source_path, original_text, plan), encoding="utf-8")


def main() -> None:
    for topic_dir in TOPIC_DIRS:
        for source_path in sorted(topic_dir.glob("*.md")):
            if source_path.name == "00_Master_Index.md" or source_path.stem.endswith("_Learner_Notes"):
                continue
            process_topic(source_path)


if __name__ == "__main__":
    main()
