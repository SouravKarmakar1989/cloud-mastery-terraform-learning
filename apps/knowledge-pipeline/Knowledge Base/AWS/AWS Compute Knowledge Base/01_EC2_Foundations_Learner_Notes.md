# EC2 Foundations Learner Notes

This file is a learner-first companion to `01_EC2_Foundations.md`.
It is structured as a series of blog-post-depth theoretical articles, followed by a comprehensive multi-cloud hands-on activity guide, and closed with troubleshooting, revision, and self-assessment material.

Source authority: 120+ AWS primary transcript files spanning DVA-C01, SAA-C03, SAP-C02, SOA-C03, DOP-C02, Security Specialty, and GCP/Azure supplements. The architect-level concepts are drawn directly from the Deep Expansion section of the primary knowledge base.

## How To Use This File
1. Read each theoretical section fully before touching the console. Understand the why before the how.
2. Work through the Hands-On Activity Guide in module order. Each module builds on the last.
3. Run all three cloud variants when you can. The most durable learning comes from doing the same concept on AWS, Azure, and GCP in the same sitting.
4. Use the Troubleshooting section when something goes wrong. Most situations are already documented.
5. Return to the Quick Revision Sheet before any exam, interview, or architecture review.

## Theoretical Notes

---

### 1. The VM Contract: What the Cloud Owns Versus What You Own

Before you launch a single instance, you need a sharp mental model of where the cloud provider's responsibility ends and yours begins. This boundary is not just theoretical. It shapes every troubleshooting decision, every security design choice, and every operational runbook you will ever write.

**The provider side of the contract.** AWS, Azure, and GCP all take ownership of the physical hardware, the hypervisor that carves virtual machines from that hardware, the network fabric connecting racks and availability zones, the power and cooling infrastructure, and the control-plane APIs that let you start, stop, and reconfigure machines. When you call the EC2 RunInstances API, you are not provisioning bare metal. You are making a request to the control plane to allocate a slice of compute capacity, attach virtual storage, wire up a virtual network interface, and return a handle you can manage. The actual scheduling decision, the host selection, and the physical isolation from other tenants are all problems the cloud solves for you.

**Your side of the contract.** Everything inside the guest operating system is yours. The OS kernel, the system packages, the SSH daemon configuration, the application runtime, the firewall rules expressed as iptables or nftables rules on the guest, the log rotation policy, and the application itself. When you call the wrong username on an SSH attempt, that is not a cloud problem. When your web server crashes on startup because of a missing config file, that is not a hypervisor problem. These failures live in the guest OS layer, and no amount of cloud support or console refresh will fix them.

**Why this matters for architecture.** The responsibility split is the reason cloud VMs do not automatically self-heal guest OS failures. A VM can pass all platform health checks and show a green status while the application inside it is completely broken. The platform is doing its job: the hypervisor is running, the virtual NIC is attached, block storage is connected. The guest is the tenant's problem. This is also why patching is not automatic. The provider manages the hypervisor patch cycle. You manage the OS and package patch cycle. Systems Manager, Azure Update Manager, and GCP VM Manager give you tooling to automate your side of that bargain, but they do not remove the obligation.

**Cross-cloud framing.** EC2, Azure Virtual Machines, and GCP Compute Engine all enforce this same split. The names differ, the adjacent tooling for secure access and fleet management differ, and the default network security model at launch differs slightly, but the responsibility boundary is structurally identical. Learn it once, apply it everywhere.

---

### 2. The Core Building Blocks: A Full Service Taxonomy

Understanding EC2 well means understanding it as a system of interlocking primitives, not as a single service. Each building block has a defined role, a failure mode you can predict, and a cross-cloud equivalent.

| Building Block | What It Is | Failure Mode to Know | Cross-Cloud Equivalent |
|---|---|---|---|
| EC2 instance | A running virtual machine allocated on a physical host managed by AWS | Instance health check fails; application inside may be healthy or broken independently | Azure VM, GCP Compute Engine VM |
| AMI | A snapshot-backed template defining the root volume, OS, and optionally pre-installed software | Stale AMI bakes in old CVEs, expired keys, or outdated config | Azure Compute Gallery image, GCP custom image |
| EBS volume | A network-attached block device providing persistent storage | Volume in a different AZ than instance; performance class mismatch for workload; deletion on termination set incorrectly | Azure Managed Disk, GCP Persistent Disk |
| Security group | A stateful, instance-level virtual firewall controlling ingress and egress | Rules too permissive (0.0.0.0/0 on SSH); or missing required outbound rule for service calls | Azure NSG (subnet or NIC level), GCP VPC firewall rule |
| Key pair | An RSA or ED25519 key pair; the public key is placed on the instance at launch | Private key lost or exposed; public key not matching current guest state | Azure SSH key resource, GCP SSH key in metadata |
| User data | Shell script or cloud-init payload executed on first boot | Script fails silently; heavy install steps add launch latency; secrets written in plaintext | Azure Custom Data / cloud-init, GCP startup script |
| Metadata service (IMDS) | A link-local HTTP endpoint at 169.254.169.254 providing instance context and temporary credentials | IMDSv1 accessible without token from any process on the guest (SSRF risk); hop limit misconfigured | Azure IMDS at same IP, GCP Metadata Server at 169.254.169.254 |
| IAM role (instance profile) | An AWS IAM role attached to an instance allowing API calls without static keys | Role not attached; overly broad permissions; calling APIs from the wrong region | Azure Managed Identity, GCP service account |
| Auto Scaling Group | A managed fleet that maintains desired instance count, replaces unhealthy nodes, and integrates with scaling triggers | Unhealthy health check model causes constant replacement churn; launch template error blocks scale-out | Azure VMSS, GCP Managed Instance Group |
| Load balancer | A traffic distribution layer that routes to healthy targets only | Target group health check path does not match actual app health endpoint; SSL cert mismatch | Azure Load Balancer / Application Gateway, GCP Cloud Load Balancing |
| Systems Manager (SSM) | AWS-managed guest operations toolset: Session Manager, Run Command, Patch Manager, Inventory, Automation | SSM Agent not installed or no IAM permission to reach SSM endpoint; IMDSv2 hop limit blocks credential fetch | Azure Automation / Update Manager, GCP VM Manager |
| CloudWatch | Metrics, logs, alarms, and event bus for instance and fleet visibility | Agent not installed so memory and disk metrics are missing; alarm in INSUFFICIENT_DATA rather than alarming | Azure Monitor, GCP Cloud Monitoring |

Every time you design with EC2, run through this taxonomy and ask: which of these primitives are in scope, what is the failure mode I have not designed against, and what is the equivalent if I had to build this on Azure or GCP instead?

---

### 3. Access Design Is Architecture, Not a Post-Launch Thought

How operators connect to a running instance is one of the most consequential decisions in VM design. It determines your attack surface, your audit trail quality, your incident response speed, and how much operational pain you accumulate over time.

**The naive starting point and its problems.** The simplest access pattern is: launch an instance with a public IP, attach a key pair, open TCP/22 on the security group to 0.0.0.0/0, and SSH in. This works. It also exposes your SSH daemon to every brute-force scanner on the internet, leaves port 22 permanently open, depends entirely on the private key not being lost or compromised, and produces no access audit trail that is inspectable without grepping sshd logs. For a learning lab that lives for two hours, this is fine. For any workload that matters, it is a liability you should not carry.

**EC2 Instance Connect.** AWS Instance Connect is a browser-based or CLI-based SSH tool that pushes a temporary one-time-use public key to the instance just-in-time before the connection. The key expires in 60 seconds. You never manage a long-lived key pair. You still need port 22 open in the security group, but the credential lifetime is radically shorter. The EC2 Instance Connect Endpoint (released later) removes the need for a public IP entirely. It routes the connection through an AWS-managed endpoint inside your VPC, so private instances in private subnets can be reached without a bastion host.

**Session Manager (SSM).** Session Manager is the highest-security standard access path for most production environments. It requires no open ports on the security group, no key pairs, no public IP. All communication travels over the SSM control plane using HTTPS outbound from the instance to the SSM endpoints. Access is controlled entirely through IAM policies and session policies, which means access can be granted and revoked in seconds, scoped by user, time, or command pattern, and audited completely through CloudTrail and optionally logged to S3 or CloudWatch Logs. For a production system, Session Manager is the target for all interactive access.

**Troubleshooting the SSH timeout correctly.** When SSH times out — and it will — the diagnostic sequence matters. A timeout means the TCP SYN never received a SYN-ACK. This is almost always a network path problem: the security group does not allow port 22 from your IP, the instance does not have a public IP or Elastic IP, the subnet route table has no Internet Gateway route, a Network ACL is blocking the traffic, or the instance itself is not yet running. It is almost never an SSH daemon problem. An authentication failure (Permission Denied) is different: the TCP handshake succeeded, so the network path is fine. Now you have a key mismatch (wrong key file, wrong username, wrong permissions on the .pem file), a problem with the authorized_keys file on the guest, or a misconfigured sshd daemon.

**The real architecture question.** The question is not "can I SSH in right now?" The question is: what identity path do I accept for operators, what audit trail do I need for compliance, and what network exposure am I willing to carry permanently? Session Manager + CloudTrail is the answer to all three. EC2 Instance Connect Endpoint is the middle ground when Session Manager is not available. Direct SSH from 0.0.0.0/0 is the last resort, not the default.

**Azure and GCP equivalents.** Azure Bastion is the Azure equivalent of EC2 Instance Connect Endpoint: browser-based RDP or SSH to private VMs without exposing ports. Azure JIT access in Defender for Cloud restricts port 22/3389 to a time-limited request window. On GCP, OS Login centralizes SSH key management through IAM — instead of managing `authorized_keys` files on each VM, you authenticate through your Google identity, and IAM policies control who can log in. IAP-based TCP tunneling on GCP is the GCP equivalent of routing SSH through an AWS-managed VPC endpoint.

---

### 4. The Metadata Service Is a Local Control Plane — Treat It That Way

Every EC2 instance has access to the Instance Metadata Service at `http://169.254.169.254`. This link-local address is not routable. Only processes running on the instance itself can reach it. But "only processes on the instance" is a broader category than it sounds. Every service, every container, every application, and every exploit running inside the guest can reach it.

**What metadata provides.** The metadata tree is rich. You can discover the instance ID, instance type, AMI ID, availability zone, public and private IP addresses, security groups, placement group membership, and the IAM role credential endpoint. The IAM credential endpoint is particularly powerful: it returns temporary `AccessKeyId`, `SecretAccessKey`, and `SessionToken` values for the attached instance role, refreshed automatically. This is the mechanism by which EC2 instances can call AWS APIs without having long-lived credentials stored anywhere on disk.

**The IMDSv1 security problem.** In the original metadata service design (IMDSv1), any HTTP request to the metadata IP returned data without authentication. A Server-Side Request Forgery (SSRF) vulnerability in a web application running on the instance was sufficient to cause the application to fetch metadata on behalf of an attacker. If the instance had an IAM role attached, the attacker could retrieve valid temporary credentials, exfiltrate them, and call AWS APIs from a remote machine. This was the class of attack used in several high-profile cloud breaches.

**IMDSv2 and why it matters.** IMDSv2 requires a session-oriented flow. The caller must first make a PUT request to `http://169.254.169.254/latest/api/token` with a TTL header. AWS returns a session token. All subsequent metadata requests must include that token in a header. This two-step process breaks simple SSRF exploitation because SSRF vulnerabilities almost never perform PUT requests with custom headers. IMDSv2 can be enforced at the account level or per-instance using the `http-tokens=required` option in the instance metadata options. Modern best practice is to require IMDSv2 everywhere.

**Hop limit and container workloads.** IMDSv2 also introduced an HTTP response hop count limit, defaulting to 1. This means the metadata token cannot be retrieved from a container running inside the instance by default, since container-to-host network hops exceed the limit. If you run containers on EC2 and those containers need AWS API access through the instance role, you need to understand whether to increase the hop limit or use a different credential delivery mechanism like IRSA for EKS or ECS task roles.

**User data is also sensitive.** User data is visible from the metadata endpoint without authentication even in IMDSv2-required mode. If your user data includes a database password, an API token, or any other secret, that secret is now readable by any process on the guest. Use Systems Manager Parameter Store or Secrets Manager for secrets, and reference them by lookup in user data rather than embedding them inline.

**Azure IMDS and GCP Metadata.** Azure presents the same `/latest/` style endpoint at the same IP, also requiring a request header (`Metadata: true`) rather than a session token. GCP Metadata Server uses the same IP and requires a `Metadata-Flavor: Google` header. Both have the same fundamental security implication: any process on the guest can reach the service identity credential endpoint, so the threat model for SSRF on a cloud VM includes credential theft if the metadata service is not locked down.

---

### 5. Bootstrap vs Image Baking — The Decision Is Not Either/Or

Every VM has a question to answer at launch: how does it become the machine it is supposed to be? The two primary tools for giving an instance its software, configuration, and identity are user data (first-boot scripts) and pre-baked AMIs. The most common mistake is treating this as a binary choice when the right answer is almost always a combination.

**User data: what it is good for.** User data runs once at launch (by default) and is ideal for tasks that must happen at the moment of deployment in a specific environment: pulling the application version tag from SSM Parameter Store, registering the instance with a service catalog, setting a hostname based on the instance ID, or doing a lightweight `yum update` on top of a recent base image. User data is flexible. It costs nothing to change between deployments. It adds no image management overhead.

**User data: its failure modes.** User data adds direct boot latency. Every second of package installation, git clone, or dependency download in user data is a second of latency before the instance is ready to serve traffic in an ASG. If you have 3 minutes of user data work, your scale-out takes at least 3 minutes before the new instance can pass health checks. User data failures are silent by default — the instance boots, but the application may never start. You must check `/var/log/cloud-init-output.log` to diagnose. And user data is plainly visible from the metadata endpoint, so secrets written in it are exposed.

**AMI baking: what it is good for.** An AMI captures the root volume state of a running instance. When you launch from a baked AMI, everything that was installed and configured at bake time is present from the moment the instance first reaches the kernel. No downloading, no package installation, no waiting. For compliance-heavy environments, baking an OS hardening baseline into the AMI means every new instance inherits that baseline without any additional scripts. For performance-sensitive scaling, a fully baked application runtime means scale-out can complete in under 60 seconds.

**EC2 Image Builder.** Managing the bake-test-distribute loop manually is tedious and error-prone. EC2 Image Builder automates the pipeline: define a recipe (base image + components), run the pipeline on a build instance, execute automated tests against the built image, distribute the resulting AMI to target regions and accounts, and apply sharing rules. The key failure modes in Image Builder are: build instance IAM permissions missing, pipeline not refreshing and producing AMIs with aging CVEs, and forgetting to update the launch template in ASGs to the new AMI ID after distribution. The Automations capability in SSM can automate the last step: patch the AMI, distribute it, then update the ASG launch template and trigger an instance refresh.

**The mature pattern.** Bake the slow, stable, compliance-required baseline into the AMI: OS hardening, monitoring agents, runtime dependencies, base application packages. Keep user data for the fast, environment-specific injection layer: application version selection, environment-specific secrets lookups, instance registration. This pattern gives you both fast, consistent boot times and the flexibility to deploy different versions or configurations without rebuilding the entire image.

**Azure Compute Gallery and GCP Image Families.** Azure Compute Gallery (formerly Shared Image Gallery) is the Azure equivalent of a distributed AMI store: images with versioning, regional replication, and sharing across subscriptions. GCP Image Families allow you to publish images under a logical family name and have Compute Engine automatically resolve the latest non-deprecated version. The image-family-based launch pattern on GCP is the equivalent of always launching from a "latest good" AMI that your Image Builder pipeline continuously updates.

---

### 6. Single Instance Thinking Breaks the Moment Uptime Matters

Starting with one EC2 instance is the right learning path. But the mental model of a single server is deceptive. The skills that make a single instance work — getting connected, running a web server, verifying metadata — are necessary but not sufficient for anything production-shaped. The moment uptime matters, you are in fleet territory.

**Why a single instance cannot teach fleet behavior.** A single instance can be running while its application is broken. It can survive an AZ failure only by luck of being in the right AZ. It cannot demonstrate what happens when capacity needs to grow in response to real load. It has no story for safely rolling out a new AMI or a new application version without taking downtime. All of these problems need fleet abstractions to solve them.

**Auto Scaling Groups: the core fleet primitive on AWS.** An ASG has three numbers: minimum, maximum, and desired capacity. It has a launch template that describes how to create new instances. It has health check rules that define when an instance should be terminated and replaced. It integrates with load balancers through target groups. When an instance fails a health check, the ASG terminates it and launches a replacement. When a scaling policy fires because CPU is high, the ASG launches additional instances. When you trigger an instance refresh with a new launch template version, the ASG replaces all instances in controlled batches.

**Warm pools: solving the scale latency problem.** Scale-out latency is the time from trigger signal to traffic-ready instance. Heavy user data makes it worse. Warm pools are a pre-initialized pool of stopped instances that the ASG keeps ready. When scale-out triggers, warm pool instances are started and promoted to the active fleet rather than cold-launched. Start time for a stopped instance is measured in seconds. Start time for a cold launch with heavy user data is measured in minutes. For workloads with variable burst patterns and heavy bootstrap costs, warm pools are one of the most impactful architectural choices.

**Lifecycle hooks: controlling the in and out transitions.** ASG lifecycle hooks let you pause an instance in a Pending:Wait state before it is added to the load balancer, or in a Terminating:Wait state before it is fully terminated. Pending lifecycle hooks are used to run pre-registration steps: applying final configuration, registering with a service catalog, pre-warming application caches. Terminating lifecycle hooks are used to run graceful drain steps: flushing in-flight requests, deregistering from service discovery, capturing a final log snapshot. Without lifecycle hooks, the ASG assumes that a running instance equals a ready instance. With lifecycle hooks, you control exactly what ready means.

**Instance refresh and termination policies.** Instance refresh lets you replace all instances in an ASG with new ones in a controlled rolling fashion, with a configurable minimum healthy percentage and instance warmup time to prevent traffic loss during replacement. Termination policies control which instances the ASG eliminates first when scaling in: newest launch, oldest launch, closest to billing hour boundary, etc. These are not exotic features. They are the operational controls that make fleet management predictable rather than chaotic.

**Azure VMSS and GCP MIG.** Virtual Machine Scale Set on Azure is the structural equivalent of an ASG: define a VM configuration profile, set scaling rules, configure upgrade policy (manual, rolling, automatic), and let the service handle the fleet lifecycle. Managed Instance Groups on GCP work similarly, with the addition of stateful MIGs for workloads that need per-instance persistent identity.

---

### 7. Health Is Layered — Three Independent Control Loops You Must Keep Separate

One of the most operationally destructive mistakes in cloud VM management is conflating the three distinct layers of health. An instance can be simultaneously healthy from the platform perspective, unhealthy from the load balancer perspective, and healthy from the ASG perspective — all at the same time. Understanding each loop and its decision authority prevents misdiagnosis and bad operational responses.

**Layer 1: Platform health (EC2 status checks).** EC2 runs two instance status checks continuously. The system check verifies that the underlying host hardware and network reachability to the instance are functioning. The instance check verifies that the guest OS is responding to network packets, that the OS kernel has booted correctly, and that network configuration inside the guest is functional. A failed system check usually indicates an AWS infrastructure problem and may result in AWS automatically migrating the instance to a new host. A failed instance check indicates a guest OS problem: kernel panic, network misconfiguration inside the guest, OOM kill of core processes. CloudWatch alarms can be set to trigger EC2 actions (stop, start, reboot, recover) on status check failures.

**Layer 2: Load balancer health (target group health check).** The ALB or NLB performs continuous health checks against every registered target. These checks are completely independent of EC2 status checks. A target is healthy from the load balancer perspective if and only if it returns the expected HTTP response code (or TCP connection) to the configured health check path on the configured port. An instance can pass all EC2 status checks — OS is fine, kernel is fine, network is fine — and still be unhealthy from the load balancer perspective if the application is not listening, crashes on the health endpoint, or returns a 500 error. Traffic is only routed to targets that the load balancer considers healthy.

**Layer 3: ASG health (replacement decision).** The ASG can use either EC2 health (the instance check from Layer 1) or ELB health (the target group health from Layer 2) as its replacement criterion. If the ASG is configured for EC2 health only, it will never replace an instance whose app is down but kernel is running. If the ASG is configured for ELB health, it delegates to the load balancer health model. The ASG replaces instances that fail this configured health criterion. This is the autohealing loop.

**Why the separation matters.** If you conflate them, you create dangerous false negatives (thinking a system is healthy because the platform says green), noisy churn (ASG constantly replacing instances in a bad deployment), or confusion in incident response. Correct operational posture is: check platform health first for infrastructure problems, check ELB health for application problems, and check ASG health for fleet replacement history.

---

### 8. Storage Is a First-Class Part of Compute Architecture

EC2 instance design and EBS volume design should be treated as a joint decision, not sequential ones. The storage choices you make affect boot speed, performance ceiling, cost profile, resilience, and recovery capability.

**EBS volume types and their design intent.** General Purpose SSD (gp3) is the default baseline: predictable IOPS and throughput that you provision independently of volume size, sufficient for most workloads including boot volumes, development instances, and moderate database loads. Provisioned IOPS SSD (io2 Block Express) is for latency-sensitive, IOPS-intensive workloads: databases requiring deterministic sub-millisecond latency. Throughput Optimized HDD (st1) is for sequential big-data access patterns: log processing, data warehouse staging, Hadoop-style workloads where you care about MB/s and not IOPS. Cold HDD (sc1) is for infrequent access archives. Choosing the wrong class typically manifests as unexpectedly poor database performance, high latency variance, or surprising cost at scale.

**Instance Store: the ephemeral fast tier.** Certain EC2 instance families (e.g., c5d, m5d, i3) have instance store volumes: NVMe drives that are physically attached to the host. Instance store provides extremely high throughput and low latency because there is no network hop. But instance store is ephemeral: all data is lost on instance stop, start, or failure. It cannot be snapshotted. It cannot be detached and reattached. Instance store is the right choice for scratch space, caches, and buffers where you can reconstruct the data. It is never correct for anything you cannot afford to lose.

**Snapshot design and cross-region recovery.** EBS snapshots are point-in-time copies stored in S3 (managed by AWS, not visible in your S3 console). Incremental snapshots after the first only store changed blocks. Snapshots are cross-AZ: a snapshot taken from a volume in us-east-1a can be used to create a volume in us-east-1b or even in another region. This makes snapshots the primary tool for cross-region AMI replication, disaster recovery runbooks, and audit-time data preservation.

**EBS encryption.** EBS encryption at rest uses AWS KMS. It encrypts all data on the volume, all snapshots, and all volumes created from those snapshots. The encryption is transparent to the instance: no additional setup needed inside the guest OS. Encryption is strongly recommended and can be enforced as a default at the account level.

**Deletion on termination and the data-loss trap.** By default, the root EBS volume is set to delete on instance termination. Any data written exclusively to the root volume that is not captured in an AMI or snapshot is gone when the instance terminates. Understanding this default is critical when you design or troubleshoot stateful workloads on EC2.

**Azure and GCP equivalents.** Azure Managed Disks provide Standard HDD, Standard SSD, Premium SSD, and Ultra Disk tiers. GCP Persistent Disk comes in Standard, Balanced, SSD, and Extreme tiers. The cross-zone ephemeral disk concept on GCP maps to instance store on AWS. All three platforms use the same architectural principle: the boot disk determines boot speed; separate data disks carry the workload state; snapshots provide the cross-zone and cross-region recovery story.

---

### 9. Instance Identity Must Be Dynamic — Static Keys Are Technical Debt

Baked-in AWS credentials are one of the most common and most costly security failures in cloud computing. A developer copies an access key into a config file on an EC2 instance because it works immediately. Three years later, that access key is rotated, the application breaks, and nobody knows what the key was for. Or worse: the key is committed to a git repository, scraped by an automated scanner, and used to exfiltrate data or spin up crypto-mining infrastructure within minutes.

**Why IAM roles are the correct model.** An IAM instance profile attaches a role to an EC2 instance at launch time. The instance retrieves short-lived credentials from the metadata service endpoint under `iam/security-credentials/ROLE_NAME`. These credentials expire and are rotated automatically by the platform, typically every few hours. The instance never stores them permanently. If the credentials are exfiltrated, they expire. You can audit all API calls made with them through CloudTrail. You can modify the role permissions without touching the instance. Long-lived credentials cannot offer any of these guarantees.

**Least privilege on instance roles.** The scope of what an IAM role can do should match exactly what the application running on the instance needs. If the application reads from one S3 bucket and puts records into one SQS queue, the role should have exactly those permissions and nothing else. A broad `AmazonEC2FullAccess`-style role on an application instance means a compromised instance becomes a vector for creating new instances, pivoting to other accounts, or destroying production infrastructure.

**Managed Identity on Azure.** Azure Managed Identity is the direct equivalent: system-assigned or user-assigned identities that are attached to Azure VMs and allow the VM to authenticate to Azure AD-integrated services without credentials. The token is fetched from the Azure IMDS endpoint and returns a short-lived OAuth 2.0 bearer token. The operational model is identical to EC2 instance roles: no static secrets, automatic rotation, IAM-style access control.

**Service Accounts on GCP.** GCP Compute Engine VMs are attached to service accounts. The metadata server provides the access token. The token scope is set at instance creation time and limits which GCP APIs the instance can call.

---

### 10. Failure Domains Must Be Designed Before Failure Happens

A cloud VM in a single availability zone is not resilient. It is a single point of failure with a managed power supply. Resilience is not a configuration toggle. It is a design decision that must be made before you deploy, because it changes how you architect storage, state, networking, and fleet management.

**Availability Zones as the primary resilience unit.** An AWS Availability Zone is a logically isolated data center (or cluster of data centers) within a region. AZ failures are rare but real. A fleet that runs only in us-east-1a cannot survive an us-east-1a failure. A fleet spread across us-east-1a, us-east-1b, and us-east-1c with at minimum viable capacity in each zone can lose any single zone and continue serving traffic with degraded but functional capacity.

**EC2 Placement Groups and when to use them.** Placement groups give you control over how instances are distributed on physical hardware within an AZ or across AZs. Cluster placement groups co-locate instances on the same physical rack or cluster to minimize network latency and maximize inter-instance throughput — ideal for HPC, distributed databases, or tightly coupled parallel compute. Spread placement groups force each instance onto physically separate hardware to minimize correlated hardware failure risk — ideal for a small set of critical instances. Partition placement groups divide instances into logical partitions each on separate hardware, with at most one partition per physical rack — ideal for Hadoop, Cassandra, or Kafka clusters where you need rack-aware deployment.

**Elastic Network Interfaces and their role in resilience patterns.** An ENI is a virtual network interface that can be detached from one instance and reattached to another within the same AZ. This enables specific high-availability patterns: a standby instance that takes over the primary's ENI (and therefore its private IP and DNS name) on failure. It also enables multi-homed instances with interfaces on different subnets, and the dual-NIC pattern for network appliances.

**EC2 Hibernate and its relationship to failure domains.** EC2 Hibernate suspends the instance state to the root EBS volume, stops the instance, and resumes from saved state on next start. Unlike stop/start (which restarts the OS), hibernate maintains process state, open network connections (briefly), and application memory state across the stop. The use case is primarily for development instances and batch workloads where consistent startup time and preserved in-process state matter. Hibernate does not help with AZ failures.

**Azure and GCP failure domain design.** Azure differentiates between Availability Sets (which spread VMs across fault domains and update domains within a single datacenter) and Availability Zones (which spread VMs across physically separate datacenters within a region). On GCP, a regional MIG distributes instances across multiple zones automatically. Regional MIGs are the standard recommendation for production workloads on GCP, exactly as multi-AZ ASGs are the standard on AWS.

---

### 11. Observability and Patching Are Operational Architecture, Not Extras

Running a VM without visibility into its health, performance, and software posture is not production-ready. It is an undocumented system waiting for a crisis.

**EC2 status checks vs CloudWatch metrics: two different signals.** Status checks are binary: passing or failing. They answer whether the platform and guest OS are alive. CloudWatch metrics are continuous: CPU utilization, network I/O, disk read ops. Basic (5-minute granularity) metrics are free. The critical gap in default CloudWatch coverage is that memory utilization and disk space are not reported unless you install the CloudWatch Unified Agent inside the guest. Default metrics live at the hypervisor level. Agent-based metrics come from inside the guest where memory and disk visibility live.

**The CloudWatch Unified Agent.** The Unified Agent replaces the older CloudWatch Logs Agent and CloudWatch Monitoring Agent. It collects custom metrics, logs, and trace data. It is configured with a JSON file (or SSM parameter) that specifies which metrics and log paths to collect. Without the agent, an instance can run out of memory or disk space with no CloudWatch alarm ever firing.

**Systems Manager as the operational layer.** SSM transforms the relationship between operators and the EC2 fleet from "SSH in and fix it manually" to "run governed automation against managed nodes." Run Command executes scripts against one or many instances simultaneously without SSH. Automations execute multi-step runbooks with approval gates and audit records. Patch Manager applies OS patches on a defined schedule through Maintenance Windows. Session Manager provides the keyless connection path. Inventory collects software inventory from every managed node. State Manager enforces configuration state over time. SSM Fleet Manager provides a unified console view across all managed instances.

**SSM Default Host Management Configuration (DHMC).** DHMC automates the enrollment of new EC2 instances into SSM management without requiring manual SSM Agent installation. It uses an IAM role default structure and brings every new instance into the managed node inventory automatically. This is the modern baseline for large fleets: every instance is a managed node from the moment it joins the fleet.

**Patch policy as architecture.** Patch strategy options include: in-place rolling patches through SSM Patch Manager with Maintenance Windows; immutable patching where you rebuild the AMI with patches applied and trigger an ASG instance refresh; or canary-first patching where a small percentage of the fleet receives the patch first and a CloudWatch alarm monitors for regression. The choice affects cost, downtime exposure, rollback complexity, and compliance evidence. There is no universally correct answer, but there must be an explicit answer.

---

### 12. Cross-Cloud Mental Map — Every Concept Has a Counterpart

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Virtual machine compute | EC2 | Azure Virtual Machines | Compute Engine |
| Machine template / reusable image | AMI | Azure Compute Gallery image | Custom image / image family |
| First-boot bootstrap | User data (shell/cloud-init) | Custom data / cloud-init | Startup script via metadata |
| Metadata service | IMDS (169.254.169.254, IMDSv2) | Azure IMDS (same IP, Metadata: true header) | Metadata server (same IP, Metadata-Flavor header) |
| Service identity on the VM | IAM role via instance profile | Managed Identity (system or user assigned) | Attached service account |
| Secure operator access | Session Manager, EC2 IC, EC2 IC Endpoint | Azure Bastion, JIT access | OS Login, IAP TCP tunnel |
| Managed fleet abstraction | Auto Scaling Group | Virtual Machine Scale Set | Managed Instance Group |
| Block storage | EBS (gp3, io2, st1, sc1) | Managed Disks (Standard HDD, Standard SSD, Premium SSD, Ultra) | Persistent Disk (Standard, Balanced, SSD, Extreme) |
| Ephemeral high-speed local disk | Instance Store (NVMe) | Temp disk on VM host | Local SSD |
| Traffic distribution | ALB / NLB / GWLB | Azure Load Balancer / Application Gateway | Cloud Load Balancing |
| Fleet maintenance tooling | SSM (Patch Manager, Run Command, Automation, Inventory, State Manager) | Azure Automation, Update Manager, Azure Policy | VM Manager, OS Config |
| Autohealing + replacement loop | ASG health checks (EC2 or ELB) + CloudWatch alarms | VMSS autorepair and health extension | MIG autohealing with health check |
| Failure-domain spread | Multi-AZ ASG, placement groups | Availability Sets, Availability Zones | Zonal or regional MIG |
| Image creation automation | EC2 Image Builder | Azure VM Image Builder | Custom image pipelines |
| Access audit trail | CloudTrail + Session Manager logging | Azure Monitor Activity Log + Bastion session logs | Cloud Audit Logs + IAP access logs |
| Deployment coordination for fleet | CodeDeploy for EC2 / ASG, ASG instance refresh | Rolling upgrades on VMSS | MIG rolling update, Cloud Deploy |

## Hands-On Activity Guide

This guide is structured in twelve modules that build sequentially. Each module covers the same concept on AWS, Azure, and GCP where the cloud-specific tooling is meaningfully different. Complete the AWS path first, then revisit with Azure and GCP to build cross-cloud parity.

### Prerequisites and Safety Rules

**Before any lab:**
- Use a dedicated sandbox/learning account for each cloud. Never use a production account.
- Set a billing alarm or budget alert before creating any resources.
- Prefer the smallest instance types available: `t3.micro` or `t3.nano` on AWS (free-tier eligible), `B1s` on Azure, `e2-micro` on GCP.
- Tag every resource with at minimum: `Project=Learning`, `Topic=EC2`, `Owner=<your identifier>`.
- When a lab is complete, verify all resources created and delete them. Verify especially: instances, AMIs, snapshots, EBS volumes, load balancers, and ASGs — these incur unexpected cost if left running.
- Never put real secrets, production data, or actual credentials in user data, instance tags, or SSM Parameter Store in a learning account.

---

### Module 1: Launch Your First Virtual Machine on Each Cloud

**Goal:** understand the minimum required decisions to create a VM and the default behavior of each platform off the launch wizard.

#### Lab 1A: Launch an EC2 Instance with User Data (AWS)

1. Navigate to EC2 console → Instances → Launch Instances.
2. Name the instance: `ec2-learner-lab-01`.
3. Select Amazon Linux 2023 AMI (64-bit x86).
4. Choose instance type: `t3.micro`.
5. Create a new key pair: `learner-key`, RSA, download the .pem file. Store it securely.
6. Under Network Settings, create a new security group. Allow SSH (port 22) from My IP only. Note what "My IP" resolves to.
7. Under Advanced Details → User data, paste:
   ```bash
   #!/bin/bash
   echo "booted at $(date)" > /home/ec2-user/boot-note.txt
   yum install -y httpd
   systemctl enable --now httpd
   echo "<h1>EC2 learner lab</h1>" > /var/www/html/index.html
   ```
8. Add tags: `Project=Learning`, `Topic=EC2`, `Module=1`.
9. Launch. Wait for Instance State = Running and Instance Status = 2/2 checks passed.

What to record: AMI ID, Instance ID, Public IP, Security Group ID, Subnet, AZ, Region.

What to note from the console:
- Why does the public IP change on stop/start? (hint: Elastic IP vs ephemeral IP)
- Where in the console do you see the user data you entered?

#### Lab 1B: Launch an Azure VM

1. Azure Portal → Virtual Machines → Create → Azure virtual machine.
2. Name: `azure-learner-vm-01`. Region: choose a nearby region.
3. Image: Ubuntu Server 22.04 LTS. Size: `B1s` (Standard).
4. Authentication: SSH public key. Generate a new key pair through the portal or paste your existing public key.
5. Inbound port rules: allow SSH (22).
6. Disks tab: Standard SSD for the OS disk.
7. Tags: `Project=Learning`, `Topic=VM`.
8. Review + create → Create.

What to note compared to AWS:
- The Azure equivalent of a security group is the NSG. Note where it attaches (NIC or subnet level).
- The Azure public IP is a separate resource, not an attribute of the VM directly.
- The NIC is also a separate resource.

#### Lab 1C: Launch a GCP Compute Engine VM

1. GCP Console → Compute Engine → VM Instances → Create Instance.
2. Name: `gcp-learner-vm-01`. Region: choose a nearby region. Zone: any zone.
3. Machine configuration: E2 series, e2-micro.
4. Boot disk: Debian GNU/Linux 12 or Ubuntu 22.04 LTS. Balanced Persistent Disk, 10 GB.
5. Firewall: check "Allow HTTP traffic" (port 80).
6. Expand "Advanced options" → Management → Startup script, paste:
   ```bash
   #!/bin/bash
   apt-get update -y
   apt-get install -y apache2
   echo "<h1>GCP learner lab</h1>" > /var/www/html/index.html
   ```
7. Create. Wait for the green checkmark.

What to note compared to AWS:
- GCP Firewall Rules are VPC-scoped, not instance-scoped. They use network tags to target instances.
- SSH from the browser works without any key pair setup — this is OS Login in action.

---

### Module 2: Access Patterns — SSH, Instance Connect, and Session Manager

**Goal:** practice every major access pattern, understand when to use each, and be able to diagnose the failure mode of each.

#### Lab 2A: SSH Access and Diagnosing Failures (AWS)

1. Set permissions on your .pem file:
   ```bash
   chmod 400 learner-key.pem
   ```
2. SSH to the instance:
   ```bash
   ssh -i learner-key.pem ec2-user@<PUBLIC_IP>
   ```
3. Verify the user data ran:
   ```bash
   cat /home/ec2-user/boot-note.txt
   curl http://localhost
   ```
4. Deliberately break SSH: go to the security group, edit the inbound rule for port 22, change it to 0.0.0.1/32 (an IP that is not yours). Attempt SSH. Observe the timeout. Restore the rule.
5. Now attempt SSH with the wrong username (`ubuntu` instead of `ec2-user`). Observe the Permission Denied error.

Key diagnosis habit:
- Timeout → check security group, subnet route, public IP.
- Permission Denied → check username, key file, key permissions, authorized_keys on guest.

#### Lab 2B: EC2 Instance Connect (AWS)

1. In the EC2 console, select your instance → Connect → EC2 Instance Connect.
2. Leave the default username (`ec2-user`) and click Connect. A browser-based terminal opens.
3. Run `whoami` and `curl http://localhost`.
4. Note that you did not need the .pem file. A temporary key was pushed to the instance for this session only.
5. Verify in the security group that port 22 must still be open. Without it, EC2 Instance Connect also fails.

#### Lab 2C: EC2 Instance Connect Endpoint (private instances)

This lab requires a VPC with a private subnet (no public route to Internet Gateway).

1. Create an EC2 Instance Connect Endpoint in the private subnet.
2. Launch a new EC2 instance in the private subnet with NO public IP.
3. From the EC2 console → Connect → EC2 Instance Connect → choose the EIC Endpoint.
4. Connect. Observe that you are SSH-ing to a private instance with no public IP, no bastion host, and no permanently open port from the internet.

#### Lab 2D: Session Manager — Keyless, Portless Access (AWS)

1. Create a new IAM role with the `AmazonSSMManagedInstanceCore` managed policy.
2. Launch an EC2 instance and attach this role (or attach it to your existing instance via Actions → Security → Modify IAM Role).
3. Ensure the instance has outbound HTTPS (port 443) allowed to SSM endpoints, or that a public NAT route exists.
4. In the EC2 console → Connect → Session Manager → Connect.
5. A shell session opens. Run `whoami` — you are `ssm-user`. Run `aws sts get-caller-identity` — observe the IAM role ARN.
6. Return to the security group and remove the inbound SSH rule entirely. Session Manager still connects. Confirm this.

The key insight: no inbound ports were needed. Access is mediated through the SSM control plane over outbound HTTPS from the instance.

#### Lab 2E: Azure Bastion

1. Azure Portal → your VM → Connect → Bastion.
2. If Bastion is not provisioned, deploy Azure Bastion Basic tier in the VNet. Delete it when you finish this lab.
3. Enter your SSH username and private key. Connect via browser.
4. Observe that no inbound SSH NSG rule is required on the VM. Bastion injects the connection through the AzureBastionSubnet.

#### Lab 2F: GCP OS Login and IAP Tunnel

1. In GCP Console → your VM → Edit. Under Security → OS Login, enable it at the project level (or via metadata `enable-oslogin=TRUE` on the instance).
2. In Cloud Shell, connect: `gcloud compute ssh gcp-learner-vm-01 --zone=ZONE`. This authenticates through your Google identity.
3. For IAP-based access to a VM with no public IP:
   - Assign the `roles/iap.tunnelResourceAccessor` IAM binding to your user for the VM.
   - In Cloud Shell: `gcloud compute ssh gcp-learner-vm-01 --zone=ZONE --tunnel-through-iap`
   - Observe the connection routes through Identity-Aware Proxy, not a public IP.

---

### Module 3: Metadata Service and Instance Identity

**Goal:** query the metadata service from inside a running VM on all three clouds. Understand the security model and the credential delivery pattern.

#### Lab 3A: Query EC2 IMDSv2 (AWS)

SSH or Session Manager into your EC2 instance, then run:

```bash
# Step 1: Get a session token (IMDSv2 required flow)
TOKEN=$(curl -s -X PUT "http://169.254.169.254/latest/api/token" \
  -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")

# Step 2: Retrieve the instance ID
curl -s -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/instance-id

# Step 3: Retrieve the AZ
curl -s -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/placement/availability-zone

# Step 4: List all metadata paths
curl -s -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/

# Step 5: Retrieve IAM role credentials (requires an instance role to be attached)
ROLE_NAME=$(curl -s -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/iam/security-credentials/)
curl -s -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/iam/security-credentials/$ROLE_NAME
```

What the credentials response shows: `AccessKeyId`, `SecretAccessKey`, `Token`, `Expiration`. These are temporary credentials the AWS SDK uses automatically. You should never copy these and use them manually.

Verify IMDSv1 is disabled (it should be):
```bash
# This should fail or return 401 with IMDSv2-required mode
curl -s http://169.254.169.254/latest/meta-data/instance-id
```

#### Lab 3B: User Data Visibility from Metadata

```bash
# User data is readable from metadata — never store secrets here
curl -s -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/user-data
```

Observe that the full user data script is returned in plaintext. This is why secrets must never be written directly into user data.

#### Lab 3C: Azure IMDS

Inside your Azure VM:
```bash
# Azure IMDS requires the Metadata: true header
curl -s -H "Metadata: true" \
  "http://169.254.169.254/metadata/instance?api-version=2021-02-01" | python3 -m json.tool

# Get Managed Identity access token (requires Managed Identity to be enabled on the VM)
curl -s -H "Metadata: true" \
  "http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https://management.azure.com/"
```

What to observe: the structure is similar to AWS IMDS but returns JSON natively. The compute object includes resourceGroupName, location, vmId, subscriptionId.

#### Lab 3D: GCP Metadata Server

Inside your GCP VM:
```bash
# GCP requires Metadata-Flavor: Google header
curl -s -H "Metadata-Flavor: Google" \
  http://metadata.google.internal/computeMetadata/v1/instance/

# Get instance name
curl -s -H "Metadata-Flavor: Google" \
  http://metadata.google.internal/computeMetadata/v1/instance/name

# Get zone
curl -s -H "Metadata-Flavor: Google" \
  http://metadata.google.internal/computeMetadata/v1/instance/zone

# Get access token for attached service account
curl -s -H "Metadata-Flavor: Google" \
  "http://metadata.google.internal/computeMetadata/v1/instance/service-accounts/default/token"
```

---

### Module 4: AMIs, Image Baking, and EC2 Image Builder

**Goal:** build the full image lifecycle from a running instance to a reusable AMI, and automate this with EC2 Image Builder.

#### Lab 4A: Create an AMI from a Running Instance

1. On your EC2 instance, install a distinguishable artifact:
   ```bash
   sudo yum install -y tree
   echo "baked-at-$(date +%Y%m%d)" | sudo tee /etc/bake-version.txt
   ```
2. EC2 console → select the instance → Actions → Image and templates → Create image.
3. Name: `learner-baked-v1`. Leave No Reboot unchecked (instance will reboot for filesystem consistency).
4. Wait for the AMI to reach Available state in EC2 console → Images → AMIs.
5. Launch a new instance from this AMI.
6. Connect and verify: `tree --version` and `cat /etc/bake-version.txt` are present without any user data.

The no-reboot option: repeat with No Reboot enabled. The AMI is created without stopping the instance. This is useful for production instances that cannot tolerate a reboot. However, the AMI may not represent a fully consistent filesystem state if writes were in flight during the snapshot. For databases, never use no-reboot.

#### Lab 4B: AMI in Production — Golden Image Strategy

1. Create an instance from the default Amazon Linux 2023 AMI.
2. Apply hardening steps:
   ```bash
   sudo yum update -y
   sudo yum install -y amazon-cloudwatch-agent
   sudo yum remove -y telnet
   ```
3. Create an AMI from this hardened instance: name it `golden-base-v1`.
4. In a launch template, reference this AMI ID.
5. Any new instance launched from this template inherits the hardened base without any user data needed for OS-level setup.

#### Lab 4C: EC2 Image Builder Pipeline

1. IAM: create a role named `EC2ImageBuilderRole` with the `EC2InstanceProfileForImageBuilder` and `AmazonSSMManagedInstanceCore` managed policies, and an EC2 trust policy. Create an instance profile for this role.
2. EC2 Image Builder console → Create image pipeline.
3. Pipeline name: `learner-base-pipeline`.
4. Create a new image recipe:
   - Base image: Amazon Linux 2023 x86_64
   - Components: `aws-cli-version-2-linux` and `amazon-cloudwatch-agent-linux` from the AWS managed component library.
   - Add a custom Build component: a shell script that writes `/etc/image-version.txt` with a date stamp.
5. Infrastructure configuration: choose the `EC2ImageBuilderRole` instance profile, instance type `t3.small`.
6. Distribution settings: distribute to the current region. Set output AMI name format for versioning.
7. Run the pipeline manually. Watch the Build, Test, and Distribute phases complete.
8. Find the output AMI in EC2 → Images → AMIs. Launch an instance from it to verify the components were applied.

---

### Module 5: EBS Storage — Attach, Configure, Snapshot, Encrypt

**Goal:** manage EBS volumes as independent resources, not just as instance boot disks.

#### Lab 5A: Attach and Format a Data EBS Volume

1. EC2 console → Elastic Block Store → Volumes → Create Volume.
   - Type: `gp3`, Size: 8 GiB, AZ: same as your running instance.
2. Select the new volume → Actions → Attach Volume. Choose your instance. Device name: `/dev/xvdf`.
3. SSH into the instance:
   ```bash
   lsblk
   sudo mkfs -t ext4 /dev/xvdf
   sudo mkdir /data
   sudo mount /dev/xvdf /data
   echo "data volume test" | sudo tee /data/test.txt
   echo "/dev/xvdf /data ext4 defaults,nofail 0 2" | sudo tee -a /etc/fstab
   ```
4. Reboot the instance and verify `/data/test.txt` is still present after reboot.

#### Lab 5B: EBS Snapshot and Cross-AZ Volume Creation

1. EC2 console → Volumes → select the `/dev/xvdf` volume → Actions → Create Snapshot.
2. Wait for the snapshot status to reach `completed`.
3. From the snapshot: Actions → Create Volume from Snapshot. Choose a DIFFERENT AZ than the original volume.
4. Attach the new volume to an instance in the new AZ and mount it. Verify `/data/test.txt` is present.

This demonstrates that snapshots allow cross-AZ data migration. Volumes cannot move AZs; snapshots can.

#### Lab 5C: EBS Encryption

1. Create a new volume with encryption enabled (use the default aws/ebs KMS key).
2. Attach to an instance. From inside the instance, confirm it behaves identically to an unencrypted volume — encryption is transparent to the OS.
3. Take a snapshot of the encrypted volume. Confirm the snapshot is also encrypted.

---

### Module 6: Auto Scaling Groups — Fleet Lifecycle

**Goal:** build a complete ASG with a launch template, health checks, scaling policies, instance refresh, warm pools, and lifecycle hooks.

#### Lab 6A: Create a Launch Template

1. EC2 console → Launch Templates → Create Launch Template.
2. Name: `learner-fleet-template`. Description: `EC2 learner fleet v1`.
3. AMI: your `golden-base-v1` or `learner-baked-v1` AMI from Module 4.
4. Instance type: `t3.micro`.
5. Key pair: `learner-key`.
6. Security group: one that allows HTTP (80) and SSH from your IP.
7. IAM instance profile: the SSM-enabled role from Module 2.
8. User data:
   ```bash
   #!/bin/bash
   yum install -y httpd
   systemctl enable --now httpd
   INSTANCE_ID=$(curl -s \
     -H "X-aws-ec2-metadata-token: $(curl -s -X PUT \
       http://169.254.169.254/latest/api/token \
       -H 'X-aws-ec2-metadata-token-ttl-seconds: 60')" \
     http://169.254.169.254/latest/meta-data/instance-id)
   echo "<h1>Instance: $INSTANCE_ID</h1>" > /var/www/html/index.html
   ```
9. Tags: auto-tag instances with `Project=Learning` and `Module=6`.

#### Lab 6B: Create an ASG with ELB Health

1. Create a target group: HTTP, port 80. Health check path `/`, interval 15s, threshold 2 healthy checks, expected 200 response code.
2. Create an Application Load Balancer: internet-facing, HTTP listener port 80, forward to the target group. Select at least two AZs.
3. EC2 → Auto Scaling Groups → Create.
   - Use launch template: `learner-fleet-template`.
   - VPC and subnets: select two or more AZs.
   - Attach to the existing load balancer / target group.
   - Group size: Desired 2, Min 1, Max 4.
   - Health check type: ELB. Grace period: 90 seconds.
4. Verify instances launch and pass target group health checks.
5. Open the ALB DNS name in a browser. Refresh several times to see different Instance IDs (confirming round-robin routing).

#### Lab 6C: Scale Out and In with Policies

1. In the ASG, add a Target Tracking scaling policy: metric = Average CPU Utilization, target = 50%.
2. Generate CPU load from within one instance:
   ```bash
   sudo yum install -y stress
   sudo stress --cpu 2 --timeout 300
   ```
3. Watch CloudWatch CPUUtilization for the ASG rise above 50%. Observe the ASG scale out. Watch CPU drop after stress ends. Observe scale-in after the cooldown period.

#### Lab 6D: ASG Instance Refresh

1. Create a new version of the launch template (bump the AMI or change the user data message).
2. ASG → Instance refresh → Start refresh.
3. Set minimum healthy percentage: 50%. Set instance warmup: 90 seconds.
4. Watch the ASG replace instances in batches. Confirm no downtime by continuously curling the ALB endpoint while the refresh runs.

#### Lab 6E: Warm Pools

1. ASG → Warm pool → Create warm pool. Pool size: min 1. Instances pre-initialize in stopped state.
2. Increase the ASG desired capacity. Observe the warm pool instance transitions to running and enters the active set faster than a cold launch would.

#### Lab 6F: Lifecycle Hooks

1. Add a lifecycle hook to the Launch transition: `Pending:Wait` phase, heartbeat timeout 60 seconds, default result `ABANDON`.
2. When the ASG next launches an instance (scale out or refresh), observe the instance stuck in `Pending:Wait` state.
3. Send a complete lifecycle action via the CLI to move the instance forward:
   ```bash
   aws autoscaling complete-lifecycle-action \
     --lifecycle-hook-name <hook-name> \
     --auto-scaling-group-name <asg-name> \
     --lifecycle-action-result CONTINUE \
     --instance-id <instance-id>
   ```
4. Observe the instance transition to `InService`.

In production, a Lambda function or SSM Automation would send this heartbeat after completing pre-registration logic.

---

### Module 7: Load Balancer Health and Traffic Steering

**Goal:** understand the ALB health model independently from the ASG health model.

#### Lab 7A: Application Load Balancer Health Check Behavior

1. With your ASG and ALB running, SSH into one instance and stop Apache:
   ```bash
   sudo systemctl stop httpd
   ```
2. Watch the target group health check fail for that instance (status: unhealthy).
3. Observe that the ALB stops routing traffic to this instance.
4. Check the ASG health. With ELB health configured, the ASG marks the instance unhealthy and schedules replacement.
5. Restart httpd on the instance. Observe target group health recover and the instance return to rotation.

#### Lab 7B: NLB vs ALB Use Case Comparison

1. Create an NLB targeting the same instances on TCP port 80.
2. Key distinctions: NLB operates at Layer 4, passes TCP to instances, preserves source IP, and health-checks via TCP connection (not HTTP response). ALB operates at Layer 7, terminates TLS, routes on HTTP headers/path/host, and adds X-Forwarded-For. An NLB target can be "healthy" even if the app returns a 500 error, since the TCP connection succeeds.

---

### Module 8: CloudWatch Monitoring and Alarms

**Goal:** instrument EC2 instances with the Unified CloudWatch Agent, set meaningful alarms, and understand the difference between hypervisor metrics and guest metrics.

#### Lab 8A: Default vs Agent-Enhanced Metrics

1. Open CloudWatch → Metrics → EC2. Look at the available metrics for your instance.
2. Note what is present: CPUUtilization, NetworkIn, NetworkOut, DiskReadOps, DiskWriteOps.
3. Note what is missing: MemoryUtilization, DiskSpaceUsed. This is the hypervisor metric limitation: CPU is visible from outside the guest. Memory and disk space are guest-internal.

#### Lab 8B: Install and Configure the Unified CloudWatch Agent

1. On your EC2 instance:
   ```bash
   sudo yum install -y amazon-cloudwatch-agent
   ```
2. Create `/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json`:
   ```json
   {
     "metrics": {
       "namespace": "LearnerLab/EC2",
       "metrics_collected": {
         "mem": {
           "measurement": ["mem_used_percent"],
           "metrics_collection_interval": 60
         },
         "disk": {
           "measurement": ["disk_used_percent"],
           "resources": ["/"],
           "metrics_collection_interval": 60
         }
       }
     },
     "logs": {
       "logs_collected": {
         "files": {
           "collect_list": [
             {
               "file_path": "/var/log/messages",
               "log_group_name": "/ec2/learner/var-log-messages",
               "log_stream_name": "{instance_id}"
             }
           ]
         }
       }
     }
   }
   ```
3. Start the agent:
   ```bash
   sudo /opt/aws/amazon-cloudwatch-agent/bin/amazon-cloudwatch-agent-ctl \
     -a fetch-config -m ec2 \
     -c file:/opt/aws/amazon-cloudwatch-agent/etc/amazon-cloudwatch-agent.json -s
   ```
4. In CloudWatch → Metrics → Custom namespaces → `LearnerLab/EC2`, verify `mem_used_percent` and `disk_used_percent` are now visible.

#### Lab 8C: Set a CloudWatch Alarm for ASG CPU

1. CloudWatch → Alarms → Create Alarm.
2. Metric: EC2 → Per Auto Scaling Group → CPUUtilization. Select your ASG.
3. Threshold: Greater than 60% for 2 datapoints within 5 minutes.
4. Artificially trigger the alarm with `stress --cpu 2` and verify the alarm transitions to ALARM state.

#### Lab 8D: EC2 Status Checks and Recovery Action

1. CloudWatch → Alarms → Create Alarm.
2. Metric: EC2 → Per Instance → StatusCheckFailed_Instance. Select your instance.
3. Alarm action: EC2 → Recover this instance.
4. This alarm will attempt an EC2 recovery action (migrates the instance to a new host, preserving IP, EBS, and Elastic IP) when the guest OS status check fails.

---

### Module 9: Systems Manager — The Operational Layer

**Goal:** use SSM to manage instance inventory, run commands without SSH, patch the OS, and access instances safely.

**Prerequisite for all SSM labs:** instances must have the SSM Agent installed (Amazon Linux 2023 includes it by default) and an instance profile with `AmazonSSMManagedInstanceCore`. Instances must have outbound HTTPS to SSM endpoints.

#### Lab 9A: SSM Default Host Management Configuration (DHMC)

1. SSM console → Fleet Manager → Configure default host management.
2. Enable DHMC for the account and region. SSM creates a default IAM role.
3. Launch a new EC2 instance WITHOUT specifying an instance profile manually. Observe it appears in Fleet Manager as a managed node within a few minutes.
4. DHMC removes the manual IAM role attachment step for new instances.

#### Lab 9B: SSM Run Command

1. SSM console → Run Command → Run a command.
2. Document: `AWS-RunShellScript`. Command: `df -h` (disk space).
3. Target: your instance(s) by tag: `Project=Learning`.
4. Run. View the output per instance in the command history.
5. Try: `systemctl status httpd`. Confirm you can inspect service status across your fleet without SSH.

#### Lab 9C: SSM Automation — Patch AMI and Update ASG

1. SSM console → Automation → Execute Automation.
2. Choose document: `AWS-UpdateLinuxAmi`.
3. Parameters: source AMI ID, instance profile, VPC, subnet, security group.
4. Execute. Observe: SSM launches a build instance, applies patches, shuts it down, creates an AMI snapshot, then terminates the build instance.
5. Take the output AMI ID and update your ASG launch template. Trigger an instance refresh.

#### Lab 9D: SSM Session Manager (operational habit)

1. In SSM console → Session Manager → Sessions → Start Session.
2. Use this as your primary access path for all subsequent labs. Verify that you never need to open port 22 again.
3. In Preferences → Session logging, enable CloudWatch Logs output for session logging. This builds the access audit trail.

#### Lab 9E: SSM Patch Manager and Maintenance Window

1. SSM console → Patch Manager → Configure patching.
2. Create a Patch Baseline: vendor Amazon, product AmazonLinux2023, auto-approval rule: Critical and Important severity, auto-approve after 3 days.
3. Create a Maintenance Window: schedule `cron(0 0 ? * SUN *)`, duration 2 hours, cutoff 1 hour.
4. Register targets: instances tagged `Project=Learning`.
5. Register run task: `AWS-RunPatchBaseline`. Operation: `Scan` first, then `Install`.

#### Lab 9F: SSM Inventory and State Manager

1. SSM → Inventory → Setup Inventory. Associate `AWS-GatherSoftwareInventory` to all managed instances.
2. After inventory collection, browse SSM → Inventory → Managed Instance Inventory. View installed packages, running services, and network configuration.
3. SSM → State Manager → Create Association. Use `AWS-ConfigureAWSPackage` to ensure `AmazonCloudWatchAgent` is installed on all managed instances. State Manager re-enforces this on a schedule — if the agent is removed, it is reinstalled.

---

### Module 10: Key Pair Security and EC2 Incident Response

**Goal:** practice the SSH key management failure scenarios that the Security Specialty transcript set covers explicitly.

#### Lab 10A: Troubleshoot EC2 SSH Issues Systematically

| Scenario | How to Create It | Diagnostic | Fix |
|---|---|---|---|
| Security group blocks port 22 | Remove the inbound SSH rule | `nc -vz PUBLIC_IP 22` times out | Add the correct inbound rule |
| No public IP | Launch without public IP | Cannot reach instance from internet | Use Session Manager instead |
| Wrong key file | `ssh -i wrong-key.pem ec2-user@IP` | Permission denied (publickey) | Use the correct .pem file |
| Wrong username | `ssh -i correct-key.pem ubuntu@amazon-linux-ip` | Permission denied (publickey) | Use `ec2-user` for Amazon Linux |
| Bad .pem permissions | `chmod 644 learner-key.pem` then SSH | WARNING: UNPROTECTED PRIVATE KEY | `chmod 400 learner-key.pem` |

#### Lab 10B: EC2 Key Pair Remediation — Exposed Key

Scenario: assume your private key was exposed.

1. On the instance (via Session Manager — you don't need the key for this):
   ```bash
   # Remove all existing public keys
   > /home/ec2-user/.ssh/authorized_keys
   ```
2. Generate a new key pair locally: `ssh-keygen -t ed25519 -f new-learner-key`.
3. Add the new public key via Session Manager:
   ```bash
   echo "ssh-ed25519 AAAA... your-new-public-key" >> /home/ec2-user/.ssh/authorized_keys
   chmod 600 /home/ec2-user/.ssh/authorized_keys
   ```
4. Verify SSH with the new key succeeds. Verify SSH with the old key fails.

#### Lab 10C: Lost Key Pair Recovery on Linux

AWS-recommended procedure using EBS volume manipulation:
1. Stop the instance (do not terminate).
2. Detach the root EBS volume.
3. Attach it as a data volume to a second "recovery" EC2 instance you CAN access.
4. Mount the volume: `sudo mount /dev/xvdf /mnt`
5. Edit the authorized_keys: `cat your-new-public-key >> /mnt/home/ec2-user/.ssh/authorized_keys`
6. Unmount, detach, reattach to the original instance as root volume, and start it.
7. SSH with the new key.

Alternative for instances with SSM already configured: use Session Manager to add a new public key directly, as in Lab 10B. Skip all of the above.

#### Lab 10D: EC2 Serial Console

The serial console provides out-of-band console access to an instance, independent of SSH or SSM. This is an emergency channel for situations where the OS is partially booted or SSH is completely misconfigured.

1. EC2 console → Settings → EC2 Serial Console → Enable for the account.
2. Select a running instance → Connect → EC2 Serial Console.
3. You see the kernel boot output and a login prompt. Note: Amazon Linux requires setting a password for the ec2-user account for serial console login: `sudo passwd ec2-user`.
4. This access path bypasses all network-level controls. It is for emergency use only.

---

### Module 11: Placement Groups, ENI, and Hibernate

#### Lab 11A: Placement Groups

1. EC2 → Placement Groups → Create placement group.
2. Create three groups: one Cluster, one Spread, one Partition (with 2 partitions).
3. Launch instances into each:
   - Cluster: instances co-located on the same hardware cluster for lowest inter-instance latency. Best for HPC.
   - Spread: each instance on separate hardware. Maximum 7 instances per AZ per group.
   - Partition: instances divided into partitions on separate hardware. Useful for Kafka, Cassandra.
4. Note: launching an insufficient-capacity cluster group across heterogeneous instance types is a common failure. Cluster groups work best with homogeneous instance types launched simultaneously.

#### Lab 11B: Elastic Network Interfaces (ENI)

1. Create a secondary ENI in the same AZ as your instance: EC2 → Network Interfaces → Create.
2. Attach to a running instance: select the ENI → Actions → Attach.
3. Inside the instance: `ip addr show` — observe `eth1` is now visible.
4. Detach the ENI and attach it to a different instance in the same AZ. The private IP moves with the ENI — this is the basis for private IP failover patterns.

#### Lab 11C: EC2 Hibernate

1. Launch an instance with hibernate enabled (supported instance type, encrypted root volume, root volume size greater than RAM size). Enable via: Advanced Details → Stop - Hibernate behavior: Enable.
2. Start a process on the instance:
   ```bash
   nohup sleep 3600 &
   echo "testing hibernate persistence" > /tmp/before-hibernate.txt
   ```
3. Hibernate the instance: Actions → Instance State → Hibernate.
4. Wait for the instance state to reach `Stopped`.
5. Start the instance. SSH back in.
6. Verify: `cat /tmp/before-hibernate.txt` — file is present. `ps aux | grep sleep` — the sleep process is still running. System uptime has continued from before hibernate.

---

### Module 12: CodeDeploy for EC2 and ASG Deployments

**Goal:** deploy application versions to EC2 instances and ASGs through CodeDeploy, understanding both in-place and blue/green strategies.

#### Lab 12A: CodeDeploy In-Place Deployment

1. Create a CodeDeploy application: type EC2/On-Premises.
2. Create a deployment group: select your ASG or tagged instances. Deployment type: In-place. Load balancer: attach your ALB target group (CodeDeploy will drain targets before deployment and re-register after).
3. Create an AppSpec file (`appspec.yml`):
   ```yaml
   version: 0.0
   os: linux
   files:
     - source: /index.html
       destination: /var/www/html
   hooks:
     BeforeInstall:
       - location: scripts/before_install.sh
     AfterInstall:
       - location: scripts/after_install.sh
     ApplicationStart:
       - location: scripts/app_start.sh
     ValidateService:
       - location: scripts/validate.sh
   ```
4. Create a deployment. Watch CodeDeploy: drain the instance from the load balancer, run BeforeInstall, copy files, run AfterInstall, start the application, run ValidateService, re-register with the load balancer.

#### Lab 12B: CodeDeploy Blue/Green with ASG

1. In the deployment group, change to Blue/Green deployment. Set replacement instances to automatically provision via the launch template.
2. Run a deployment. CodeDeploy creates a new green ASG, deploys the new version to green instances, validates the green ASG through the load balancer, then shifts traffic from blue to green.
3. After validation, the blue ASG instances are terminated on the configured schedule.
4. This is the AWS-native implementation of a zero-downtime fleet deployment with automated rollback capability.

## Troubleshooting Notes

| Symptom | Root Layer | Likely Cause | Diagnostic Steps | Fix |
|---|---|---|---|---|
| SSH: connection timed out | Network path | Security group, NACL, missing route, no public IP, instance not running | `nc -vz IP 22` from your machine; check SG rules; check route table; check instance state | Correct security group; add Internet Gateway route; attach Elastic IP |
| SSH: Permission denied (publickey) | Authentication | Wrong key file; wrong username; bad .pem permissions; authorized_keys mismatch | Confirm correct username for AMI; confirm correct .pem file; `chmod 400 key.pem` | Use correct key; correct username; re-add public key via Session Manager |
| SSH: Host key verification failed | Key management | Instance was replaced but known_hosts has old host key | `ssh-keygen -R IP` on client to remove stale entry | Clear stale host key entry |
| User data did not run | Bootstrap | Shebang missing; cloud-init not enabled; script already ran | Check `/var/log/cloud-init-output.log`; check `/var/lib/cloud/instances/*/user-data.txt` | Fix script; for rerun in lab: `rm -rf /var/lib/cloud/instances/*` then reboot |
| IMDSv2 token request fails | Metadata | Running command from outside the instance; hop limit exceeded for containers | Test from inside instance directly; check hop limit setting | Confirm command runs inside the instance; check instance metadata options |
| ASG not scaling out | Scaling policy or quota | Alarm not reaching ALARM state; scaling suspension; EC2 service limit | Check CloudWatch alarm state; check ASG activity history; check EC2 limits | Tune alarm thresholds; lift suspension; request quota increase |
| ASG keeps replacing healthy instances | Health check misconfiguration | ELB health check too strict; app not ready within grace period; launch template issue | Check target group health check logs; increase health check grace period | Fix health check path; increase grace period; fix launch template |
| Load balancer returns 502 Bad Gateway | Application not running | Web server crashed; wrong port; app not started | Connect to instance; check `systemctl status httpd`; check app logs | Fix application startup; check port configuration |
| SSM instance not appearing | SSM enrollment | No instance profile with SSM permissions; SSM Agent not running; no outbound HTTPS | Check IAM role; `systemctl status amazon-ssm-agent`; check VPC endpoint or NAT | Attach correct IAM profile; start SSM agent; ensure connectivity to SSM endpoints |
| CloudWatch memory metric missing | Agent not installed | Unified CloudWatch Agent not installed or not running | `systemctl status amazon-cloudwatch-agent` | Install and configure the agent |
| EBS volume not visible after attach | Mount not performed | Volume attached but not mounted inside guest | `lsblk` to see block devices; `df -h` to see mounts | Format (if new) and mount; add to /etc/fstab for persistence |
| Data lost after instance termination | Default volume behavior | Root EBS volume set to delete on termination | Check delete-on-termination flag for the root volume | Disable delete-on-termination; use separate data volumes; take snapshots |
| EC2 Image Builder pipeline fails | IAM permissions | Build instance cannot call SSM or EC2 to apply components | Check pipeline execution log; check build instance role | Ensure instance profile has `EC2InstanceProfileForImageBuilder` |
| Instance running but app is down | Application layer | App crashed; service not enabled; port mismatch | `systemctl status <service>`; check app logs; verify listening port | Fix app startup; enable service with systemctl; correct port config |

## Quick Revision Sheet
- EC2 is AWS virtual machine compute.
- AWS owns the hardware; you own the guest OS and app behavior.
- Security groups are often the first answer when a connection times out.
- SSH uses a private key that matches a public key stored in the guest.
- Metadata tells the instance about itself and can provide temporary IAM role credentials.
- User data is bootstrap logic, not a secret store.
- AMIs improve speed and consistency; user data adds flexibility.
- Auto Scaling Groups manage fleets, not just single nodes.
- Load balancers steer traffic; they do not replace full fleet health logic by themselves.
- Good VM design is about build, access, identity, health, and recovery.

## Self-Check Questions
1. Why can an EC2 instance be in a running state while the application is still unavailable?
2. Why is a security group one of the first things to check when SSH times out?
3. What problem does an AMI solve that user data alone does not solve well?
4. Why is using an IAM role better than storing AWS access keys on the instance?
5. Why does production thinking move from one instance to a fleet with health checks and load balancing?
