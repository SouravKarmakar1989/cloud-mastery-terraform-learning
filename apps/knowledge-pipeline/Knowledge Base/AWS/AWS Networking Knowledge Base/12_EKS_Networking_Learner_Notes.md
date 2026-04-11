# EKS Networking Learner Notes

This file is a learner-first companion to `12_EKS_Networking.md`.
It is structured as topic-specific theory notes, a hands-on activity guide, and closing revision material so the raw knowledge base becomes easier to study and reuse.

Source authority: 10 processed source files, 983 extracted non-empty transcript lines. The architect-level concepts are drawn directly from the curated primary knowledge base for this topic.

## How To Use This File
1. Read section 1 first — Kubernetes architecture concepts are prerequisite to understanding why EKS networking differs from traditional VM networking.
2. Section 2 is the most AWS-specific concept: VPC CNI and real VPC IP addresses for pods. This is the make-or-break idea.
3. Revisit the max-pods formula before any EKS cluster sizing exercise.
4. Use the troubleshooting table when pods cannot communicate, Ingress is not provisioning, or IP addresses are exhausted.
5. Use the quick revision sheet before AWS-certified-developer or solutions-architect exam prep sessions.

---

## Theoretical Notes

### 1. Kubernetes Networking Model: Flat IP Space

Kubernetes mandates a specific networking model: every pod gets its own IP address, every pod can communicate with every other pod without NAT, and every node can communicate with every pod. This flat networking model is what CNI (Container Network Interface) plugins implement. Container runtimes call the CNI plugin when a pod is scheduled to a node; the plugin allocates an IP for the pod and configures the networking so the pod can send and receive traffic.

In many Kubernetes environments, this is implemented with overlay networking — pods get IPs from a private pod CIDR that is not routable in the underlying network, and traffic between pods is encapsulated (VXLAN, Geneve, WireGuard) so it can traverse the physical network. The overlay means pod IPs are invisible to the underlying network, which simplifies CNI implementation but adds latency and makes pod traffic opaque to the VPC (VPC flow logs see node IPs, not pod IPs).

Amazon EKS uses a different model: the **Amazon VPC CNI plugin**, which assigns pods real VPC IP addresses from the same CIDR block as the node. There is no overlay. Pod-to-pod traffic is routed as plain VPC traffic. Pod IPs are visible in VPC flow logs, can be referenced in security group rules, and can reach VPC services directly without NAT. This makes EKS cluster networking both more integrated with AWS constructs and more constrained by the VPC's available IP address space.

---

### 2. VPC CNI: How Real VPC IPs Get to Pods

The Amazon VPC CNI plugin (`aws-vpc-cni`) works by attaching secondary ENIs to each EC2 node and assigning secondary private IP addresses to those ENIs. When a pod is scheduled to a node, the CNI plugin assigns one of the pre-allocated secondary IPs to the pod. The kubelet's network namespace configuration maps that IP into the pod's network namespace.

Each EC2 instance type has a limit on: how many ENIs it can have attached, and how many secondary IPs each ENI can have. The maximum number of pods with IP addresses on a node is therefore:
```
max_pods = (number_of_ENIs × max_IPs_per_ENI) - 1
```
The `-1` reserves one IP per ENI for the ENI's primary IP (not usable for pods). As an example, m5.large allows 3 ENIs × 10 IPs each = 30 IPs total; minus 3 primary IPs = 27 pods maximum.

**IP warming:** the VPC CNI plugin pre-warms ENIs and IP addresses in the background before they are needed, to reduce pod startup latency. The number of warm IPs and warm ENIs are configurable via environment variables on the `aws-node` DaemonSet. If the available IP pool is exhausted and the node has attached its maximum number of ENIs, no more pods can be scheduled to that node (FailedScheduling — insufficient IPs).

**CNI Prefix Delegation:** rather than assigning individual /32 secondary IPs, the node can request a /28 prefix from the VPC subnet. Each /28 provides 16 IP addresses per prefix allocation, dramatically improving IP density per ENI slot. With prefix delegation, an m5.large can reach (3 ENIs × 1 prefix @ 16 IPs) = 48 usable pod IPs. This mode requires instance types that support prefix delegation (newer generation Nitro instances).

---

### 3. Security Groups for Pods

By default, all pods on an EKS worker node share the security group attached to the node's ENI. This means any security group rule that allows traffic to the node also allows traffic to all pods on that node — the SG is node-level, not pod-level.

**Security Groups for Pods** is an EKS feature that enables individual pods to be associated with their own security groups, separate from the node's SG. Under the hood, the VPC CNI plugin creates a branch ENI (assigned to the pod's VPC trunk interface) and attaches the pod-specific SG to that branch ENI. The pod's traffic traverses the trunk/branch ENI pair rather than the shared node ENI.

Real-world use cases: a database-access pod needs `port 5432 allow from this SG` configured at the pod level without opening that port to all other pods on the node; a PCI-compliant application pod needs to be in an isolated SG that is audited separately from the rest of the cluster.

Constraints: not all instance types support branch ENIs; instance types must be Nitro-based and must be in the list of instance types that support SG for pods. The cluster must have the `AmazonEKSVPCResourceController` IAM policy attached to the node group role.

---

### 4. Kubernetes Service Types and AWS Load Balancer Integration

A Kubernetes **Service** is an abstraction that decouples the stable network identity of an application from the ephemeral pod IPs that back it. Kubernetes tracks which pods match a Service's label selector and programs iptables (or eBPF via kube-proxy) to route traffic destined for the Service's ClusterIP to a live pod.

**ClusterIP** (default): stable virtual IP, reachable only within the cluster. DNS name in `cluster.local` domain. Used for service-to-service calls within the cluster.

**NodePort**: exposes a static port (30000–32767) on every worker node's external IP. Traffic to `<node-ip>:<NodePort>` is forwarded to the Service. Simple but exposes worker node IPs externally.

**LoadBalancer**: when a Service of type `LoadBalancer` is created, the AWS Load Balancer Controller provisions an NLB (or CLB in older configurations) that routes external traffic to the NodePort backend. The controller watches Service objects and calls AWS APIs to create and maintain the load balancer.

**Ingress**: a separate API object that defines HTTP/HTTPS routing rules (host-based and path-based) across multiple Services. The AWS Load Balancer Controller also watches Ingress objects and provisions an ALB for each Ingress (or one ALB per IngressClass, depending on IngressGroup annotation). ALB target groups are populated with pod IPs directly (IP mode) when the cluster uses VPC CNI, avoiding the NodePort hop.

**AWS Load Balancer Controller** (v2) — replaces the legacy ALB ingress controller and in-tree aws cloud provider for LoadBalancer services. Key annotation: `kubernetes.io/ingress.class: alb` and `alb.ingress.kubernetes.io/target-type: ip` to use pod IP mode.

---

### 5. Custom Networking: Extending IP Address Space

Because pods consume real VPC secondary IP addresses, large EKS clusters can exhaust the IP space available in the subnets used for the node group. A `/24` subnet provides only 251 usable IPs; an EKS cluster with 20 nodes and 20 pods per node needs 400 pod IPs before counting node IPs.

**Custom Networking** is the VPC CNI configuration that assigns pod IPs from a different subnet than the node's primary ENI subnet. In this mode, secondary ENIs are placed in a separate subnet (which can be from a different, larger CIDR block, or even from a /16 CIDR added as a secondary CIDR to the VPC). The node's primary ENI remains in the original subnet; pod traffic egresses through secondary ENIs in the larger pod subnet.

To extend VPC IP space further: add a secondary CIDR block from the 100.64.0.0/10 range (CGNAT space) to the VPC. AWS allows this non-RFC-1918 CIDR to be associated with a VPC. Use subnets from this range for pod ENIs in custom networking mode. This effectively gives you up to a /10 of additional pod IP space without touching your primary CIDR allocation.

---

### 6. Cross-Cloud Mental Map

| Concept | AWS EKS | Azure AKS | GCP GKE |
|---|---|---|---|
| CNI architecture | VPC CNI (real VPC IPs, no overlay) | Azure CNI (real VNet IPs) or kubenet (overlay) | VPC-native (alias IPs) |
| Pod IP allocation | Secondary IPs on node ENIs | IP addresses from VNet subnet | Alias IP ranges on node VM |
| Max pods per node constraint | ENI count × IPs per ENI | Azure CNI: same VNet subnet limits | Alias IP range size |
| Load balancer provisioning | AWS Load Balancer Controller (ALB/NLB) | Azure Load Balancer (standard SKU) | GCP Load Balancer (L4/L7) |
| HTTP Ingress | ALB via LB Controller + Ingress object | Application Gateway Ingress Controller | GKE Ingress (L7 LB) / Ingress for Anthos |
| Pod-level security groups | Security Groups for Pods | NetworkPolicy (Calico/Azure NPM) | GKE NetworkPolicy / Dataplane v2 (eBPF) |
| IP space extension | Custom networking + secondary VPC CIDR | Dynamic IP allocation / overlay mode | VPC-native automatic subnet management |

---

## Hands-On Activity Guide

### Prerequisites
- An EKS cluster running (eksctl or Terraform-provisioned).
- kubectl configured to talk to the cluster (`aws eks update-kubeconfig`).
- AWS CLI and eksctl installed.
- IAM permissions for EKS, EC2, ELB.

---

### Lab 1: Inspect VPC CNI Pod IP Allocation

```bash
# 1. Check VPC CNI version and configuration
kubectl describe daemonset aws-node -n kube-system | grep image

# 2. List all pods and see they have real VPC IPs (not overlay)
kubectl get pods -A -o wide
# Output: pod IPs should be in your VPC CIDR range (e.g., 10.0.x.x)

# 3. Check a worker node for secondary ENI attachments
NODE=$(kubectl get nodes -o jsonpath='{.items[0].status.addresses[?(@.type=="InternalIP")].address}')
INSTANCE_ID=$(aws ec2 describe-instances \
  --filters Name=private-ip-address,Values=$NODE \
  --query 'Reservations[0].Instances[0].InstanceId' --output text)

aws ec2 describe-instances --instance-ids $INSTANCE_ID \
  --query 'Reservations[0].Instances[0].NetworkInterfaces[*].{ENI:NetworkInterfaceId,PrivateIPs:PrivateIpAddresses[*].PrivateIpAddress}' \
  --output table

# 4. Calculate max pod capacity for the node
INSTANCE_TYPE=$(aws ec2 describe-instances --instance-ids $INSTANCE_ID \
  --query 'Reservations[0].Instances[0].InstanceType' --output text)
echo "Instance type: $INSTANCE_TYPE"
# Compare with: https://github.com/awslabs/amazon-eks-ami/blob/master/files/eni-max-pods.txt

# 5. Check warm IP pool configuration
kubectl get ds aws-node -n kube-system -o yaml | grep -E "WARM_IP_TARGET|WARM_ENI_TARGET"
```

---

### Lab 2: Deploy an ALB Ingress Using AWS Load Balancer Controller

```bash
# 1. Confirm AWS Load Balancer Controller is installed
kubectl get deployment -n kube-system aws-load-balancer-controller

# 2. Deploy a sample app
kubectl create deployment echo --image=k8s.gcr.io/e2e-test-images/echoserver:2.5 --replicas=2
kubectl expose deployment echo --port=80 --target-port=8080

# 3. Create an Ingress object targeting the echo service
cat <<EOF | kubectl apply -f -
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: echo-ingress
  annotations:
    kubernetes.io/ingress.class: alb
    alb.ingress.kubernetes.io/scheme: internet-facing
    alb.ingress.kubernetes.io/target-type: ip
spec:
  rules:
    - http:
        paths:
          - path: /
            pathType: Prefix
            backend:
              service:
                name: echo
                port:
                  number: 80
EOF

# 4. Wait for ALB to provision
kubectl get ingress echo-ingress --watch
# ADDRESS column will populate once ALB is ready (~2 min)

# 5. Test ALB endpoint
ALB=$(kubectl get ingress echo-ingress -o jsonpath='{.status.loadBalancer.ingress[0].hostname}')
curl http://$ALB/ | head -20

# 6. Verify ALB target group is using pod IPs (IP mode)
aws elbv2 describe-target-health \
  --target-group-arn $(aws elbv2 describe-target-groups \
    --query 'TargetGroups[?contains(TargetGroupName,`echo`)].TargetGroupArn' \
    --output text) \
  --query 'TargetHealthDescriptions[*].{IP:Target.Id,Port:Target.Port,Health:TargetHealth.State}'
```

---

### Lab 3: Test Security Groups for Pods

```bash
# 1. Create a dedicated security group for privileged pods
SG_ID=$(aws ec2 create-security-group \
  --group-name eks-db-pods-sg \
  --description "Pods that need DB access" \
  --vpc-id $VPC_ID \
  --query 'GroupId' --output text)

# 2. Create a SecurityGroupPolicy resource in EKS
cat <<EOF | kubectl apply -f -
apiVersion: vpcresources.k8s.aws/v1beta1
kind: SecurityGroupPolicy
metadata:
  name: db-access-policy
  namespace: default
spec:
  podSelector:
    matchLabels:
      app: db-client
  securityGroups:
    groupIds:
      - $SG_ID
EOF

# 3. Deploy a pod matching the label selector
kubectl run db-client --image=amazonlinux:2 --labels="app=db-client" \
  -- sleep infinity

# 4. Verify the pod got its own SG-associated ENI
kubectl describe pod db-client | grep -E "node|IP"
# The pod IP should be from a branch ENI, not the trunk ENI pool
```

---

## Troubleshooting Guide

| Symptom | Most Likely Cause | Diagnostic Step | Fix |
|---|---|---|---|
| Pod stuck in Pending: `FailedScheduling - Insufficient pods` | Node has used all secondary IPs; max pods reached | `kubectl describe node <name>` — check `Allocatable.pods`; check ENI limits for instance type | Scale out node group; use larger instance type; enable prefix delegation |
| Pod gets IP but cannot reach other pods | VPC CNI not healthy; aws-node DaemonSet error | `kubectl describe pod <failing-pod>`; `kubectl logs aws-node -n kube-system` | Restart aws-node DaemonSet pod on the node; check node IAM role has `AmazonEKS_CNI_Policy` |
| ALB Ingress not provisioning (ADDRESS stays empty) | LB Controller not installed; missing IAM IRSA policy; missing Ingress class annotation | `kubectl describe ingress <name>` for events; `kubectl logs -n kube-system deployment/aws-load-balancer-controller` | Install controller; attach IRSA policy; add `kubernetes.io/ingress.class: alb` annotation |
| ALB 502 error after Ingress provisions | Pod health check failing; ALB target type mismatch | `aws elbv2 describe-target-health`; check pod readiness | Fix health check path; confirm `target-type: ip` annotation is set; verify SG allows traffic from ALB |
| SecurityGroupPolicy pod never gets branch ENI | Instance type does not support trunk ENI / SG for pods | Check instance type support list; check `AmazonEKSVPCResourceController` policy on node role | Use supported Nitro instance type; attach required IAM policy to node group role |
| NodePort service unreachable from outside | Worker node SG not allowing NodePort range 30000-32767 | Check worker node SG inbound rules | Add inbound rule allowing NodePort range from the external source or NLB SG |
| Pod IP conflicts with existing workloads | VPC CNI configured with overlapping secondary CIDRs | `kubectl get pods -A -o wide`; compare pod IPs with existing CIDR allocations | Use custom networking with separate pod subnets; use secondary VPC CIDR for pod IPs |
| DNS resolution failing inside pods | CoreDNS pods not running; kube-proxy issue; cluster DNS config wrong | `kubectl get pods -n kube-system -l k8s-app=kube-dns`; `kubectl exec <pod> -- nslookup kubernetes` | Restart CoreDNS; verify `kube-dns` Service exists; check CoreDNS ConfigMap |

---

## Quick Revision Sheet

- **VPC CNI** = EKS default CNI; no overlay; pods get real VPC IPs from secondary ENI IPs
- **Max pods** = `(ENIs per instance × IPs per ENI) - ENI count` (reserves one primary IP per ENI)
- **IP warming** = CNI pre-allocates IPs before pods need them; configurable via WARM_IP_TARGET
- **Prefix delegation** = allocates /28 prefixes per ENI slot instead of individual IPs; higher pod density
- **Custom networking** = pod ENIs placed in separate subnet from node ENI; enables larger pod IP space
- **Secondary VPC CIDR** = add 100.64.0.0/10 CGNAT range to VPC for pod subnets via custom networking
- **SG for pods** = branch ENI per pod, allows pod-level SG separate from node SG; Nitro only
- **ClusterIP** = cluster-internal Service VIP; DNS resolvable as `<name>.<namespace>.svc.cluster.local`
- **NodePort** = static port 30000-32767 on every node; simple but exposes nodes externally
- **LoadBalancer Service** = LB Controller provisions NLB; use for TCP/UDP external load balancing
- **Ingress + ALB** = LB Controller provisions ALB; supports path/host routing + SSL termination
- **Target type IP** = ALB targets pod IPs directly via VPC routing; preferable over instance mode

## How To Use This File
1. Read the theory sections first so the service or platform model is clear before you touch the console.
2. Work through the hands-on modules in order and record what the platform proves versus what you only assumed.
3. Compare the AWS pattern with Azure and GCP when possible so the idea becomes cloud-portable.
4. Use the troubleshooting table when behavior is confusing instead of guessing from one console view.
5. Revisit the quick revision sheet before a design review, exam session, or migration plan.

## Theoretical Notes

### 1. EKS Networking Mental Model

EKS Networking Mental Model sets the boundary for eks networking, because it explains what the platform owns, what the operator owns, and where the first failure usually appears. When that boundary is fuzzy, teams tend to misread symptoms and make design choices in eks networking that solve the wrong problem. In practice, the durable way to learn eks networking is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 2. Cluster and Pod Behavior

Cluster and Pod Behavior matter because they determine how the control plane, data path, and identity or addressing model actually work inside eks networking. Understanding those building blocks makes it easier to compare AWS behavior with Azure and GCP instead of memorizing vendor-specific wording. In practice, the durable way to learn eks networking is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 3. Address and Scale Planning

Address and Scale Planning are where scale, resilience, and governance turn basic feature knowledge into durable system design for eks networking. This is usually the part of the topic that separates a passing lab from a design that still behaves well under real traffic and operator pressure. In practice, the durable way to learn eks networking is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 4. Observability is part of the network design

Eks networking is only trustworthy when the team can prove what path traffic takes and which layer is allowed to change that path. Without those signals, networking problems inside eks networking often masquerade as random application or infrastructure failures. In practice, the durable way to learn eks networking is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 5. Cross-cloud mapping keeps the boundary clear

Mapping eks networking to Azure and GCP helps separate the underlying networking concept from the AWS product packaging around it. That usually makes both troubleshooting and migration planning easier because the real control surface stays visible. In practice, the durable way to learn eks networking is to tie that idea to failure boundaries, operator workflow, and the closest Azure or GCP equivalent.

---

### 6. Cross-Cloud Mental Map

| Underlying Concept | AWS | Azure | GCP |
|---|---|---|---|
| Managed Kubernetes network model | EKS VPC CNI | AKS kubenet or Azure CNI | GKE VPC-native networking |
| Pod address scale | Secondary ENI IP allocation and prefix delegation | Subnet sizing and pod CIDR planning | Alias IP ranges |
| Service exposure | LoadBalancer, ALB ingress, NLB, and Gateway API patterns | Internal or external load balancer plus ingress | Service, ingress, and gateway patterns |
| Pod isolation | Security groups for pods and network policy | Network policy and NSG layering | Network policy and firewall layering |
| Private cluster posture | Private API endpoint plus private nodes | Private AKS | Private GKE |

## Hands-On Activity Guide

### Prerequisites and Safety Rules
- Use a sandbox account or non-production subscription and set a budget alert before creating resources.
- Keep naming, tagging, and cleanup disciplined so you can remove every lab artifact after practice.
- Prefer the smallest viable instances or service tiers unless the learning goal specifically depends on scale.
- Record both the intended design and the first thing that contradicted your expectation.

### Module 1: EKS Networking Mental Model

**Goal:** Turn eks networking mental model for eks networking into one observable and repeatable workflow.

1. Review the eks networking mental model section in the curated raw material for EKS Networking.
2. Build or diagram one small AWS scenario that proves the core behavior behind eks networking mental model.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 2: Cluster and Pod Behavior

**Goal:** Turn cluster and pod behavior for eks networking into one observable and repeatable workflow.

1. Review the cluster and pod behavior section in the curated raw material for EKS Networking.
2. Build or diagram one small AWS scenario that proves the core behavior behind cluster and pod behavior.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

### Module 3: Address and Scale Planning

**Goal:** Turn address and scale planning for eks networking into one observable and repeatable workflow.

1. Review the address and scale planning section in the curated raw material for EKS Networking.
2. Build or diagram one small AWS scenario that proves the core behavior behind address and scale planning.
3. Capture at least one validation signal and one failure condition before you change the design again.
4. Write down the closest Azure or GCP equivalent so the idea becomes portable.

What to record:
- The architecture path or control surface you changed
- The validation signals that proved the behavior
- The first failure or ambiguity you noticed
- The operational trade-off you would document for future reuse

## Troubleshooting Notes

| Symptom | Likely Cause | Check First |
|---|---|---|
| Traffic does not reach the target | The route path, attachment, or return path is wrong | Start with route tables, attachment state, and whether the return path is symmetric |
| DNS resolution works in one place but fails in another | Resolver rules, private zones, or forwarding boundaries are incomplete | Check which resolver answered, what zone was authoritative, and where forwarding stops |
| A security control appears to allow traffic but packets still fail | Another layer is denying or bypassing the expected flow | Evaluate security groups, NACLs, firewall policy, and the actual source or destination identity together |
| Performance is inconsistent | Path length, cross-zone movement, or overloaded translation points are adding latency | Inspect the chosen path, NAT or proxy hops, and whether traffic locality matches the design |
| The incident is hard to explain after the fact | Telemetry was not enabled at the right layer | Check flow logs, query logs, LB logs, and control-plane audit logs before reproducing the issue |
| Behavior contradicts the eks networking model | The intended control boundary was never translated into a concrete policy, route, identity path, or recovery signal | Re-check the mental model, then inspect the first control plane, data plane, and evidence source that should prove it |

## Quick Revision Sheet
- Decide what boundary or path eks networking is supposed to control before you add more routes, policies, or services.
- Decide how identity, DNS, and routing assumptions should be documented around eks networking.
- Decide which layer should own reachability, security, and failover behavior in eks networking.
- Decide which telemetry proves that eks networking is working as designed instead of only appearing configured.
- Keep the mental model for eks networking tied to observable signals instead of memorized labels.

## Self-Check Questions
1. What is the primary control boundary in eks networking, and how would you explain it to a teammate?
2. Which failure mode would appear first if the design assumption were wrong?
3. What signal, log, or metric would you inspect before changing the architecture under pressure?
4. Which Azure or GCP equivalent helps confirm that you understand the concept rather than only the product name?
5. What part of this topic would become the hardest to operate at scale if left implicit?
