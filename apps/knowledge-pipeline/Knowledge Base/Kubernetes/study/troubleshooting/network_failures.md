# Network Failures Troubleshooting Guide

## Symptoms
- Pods cannot resolve service DNS names or resolve intermittently.
- Service reachable from some pods/nodes but not others.
- Cross-node pod-to-pod traffic fails; same-node traffic may work.
- Ingress path returns timeout/502/503 despite healthy backend pods.
- NodePort/LoadBalancer path fails while in-cluster requests succeed.

## Likely Root Causes
- CoreDNS unavailable, misconfigured, or overloaded.
- Service selector/endpoints mismatch causing blackhole routing.
- CNI plugin misconfiguration or broken node-level routes.
- kube-proxy/iptables/ipvs rule drift or stale state.
- NetworkPolicy denying expected traffic paths.

## Inspection Commands
```bash
# 1) Service + endpoint consistency
kubectl get svc,ep -A
kubectl -n <ns> describe svc <service>
kubectl -n <ns> get pod --show-labels

# 2) DNS health
kubectl -n kube-system get pods -l k8s-app=kube-dns
kubectl -n kube-system logs deploy/coredns --tail=200
kubectl -n <ns> exec -it <pod> -- nslookup kubernetes.default.svc.cluster.local
kubectl -n <ns> exec -it <pod> -- nslookup <service>.<ns>.svc.cluster.local

# 3) Data path checks from pod
kubectl -n <ns> exec -it <pod> -- sh -c "ip route; cat /etc/resolv.conf"
kubectl -n <ns> exec -it <pod> -- sh -c "nc -vz <svc-cluster-ip> <port>"
kubectl -n <ns> exec -it <pod> -- sh -c "curl -sv http://<service>.<ns>.svc.cluster.local:<port>"

# 4) Node-level networking
kubectl get nodes -o wide
sudo ip route
sudo iptables -S | head -n 200
sudo iptables -t nat -S | head -n 200

# 5) CNI and kube-proxy health
kubectl -n kube-system get ds -o wide | grep -E 'kube-proxy|calico|cilium|weave|flannel'
kubectl -n kube-system logs ds/kube-proxy --tail=200
```

## Interpretation Tips
- DNS name resolution failure with direct ClusterIP success points to DNS path, not service backend.
- Service endpoint list empty means traffic cannot reach pods regardless of service object existence.
- Cross-node-only failures strongly suggest CNI routing/overlay or MTU mismatch issues.
- kube-proxy errors plus widespread service failures often indicate rule-programming problems.
- Policy-enabled clusters require confirming both ingress and egress policies for each namespace.

## Fix Patterns
- CoreDNS issues:
  - Restore CoreDNS deployment/configmap health and verify kube-dns service endpoints.
- Selector/endpoint mismatch:
  - Align labels/selectors and re-check endpoint population.
- CNI failures:
  - Repair CNI config/daemonset on affected nodes; confirm pod CIDR routes and plugin status.
- kube-proxy drift:
  - Restart kube-proxy daemonset pods after verifying root cause and config correctness.
- NetworkPolicy blocks:
  - Add explicit allow rules for required app flows and DNS egress.

## Prevention Notes
- Define synthetic DNS and service-connectivity probes per namespace.
- Track CoreDNS latency/error and kube-proxy error metrics.
- Standardize CNI MTU and validate after node image changes.
- Keep NetworkPolicy intent diagrams with app topology updates.
- Include cross-node connectivity tests in release checks.

## Source-Backed Reasoning
- Domain sequence including network-related issues is explicit in ../../build/intermediate/../../build/intermediate/section-maps/BATCH-014_section_concept_map.md (Troubleshooting section intro).
- Network troubleshooting concepts map to ../../build/intermediate/../../build/intermediate/merged/01_global_concept_map.md entries for Pod Networking, Service Networking, DNS in Kubernetes, Ingress, and CNI in Kubernetes.
- Command-driven service/DNS inspection patterns align with ../../normalized-concepts/kubelet.md, ../../normalized-concepts/networking.md, ../../normalized-concepts/coredns.md, and ../../normalized-concepts/kube-proxy.md.
