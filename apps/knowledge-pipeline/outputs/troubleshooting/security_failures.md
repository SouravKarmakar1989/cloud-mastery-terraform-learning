# Security Failures Troubleshooting Guide

## Symptoms
- Requests fail with Forbidden, Unauthorized, or admission denied errors.
- Pods fail to start due to policy/securityContext restrictions.
- Workloads cannot access API/resources despite expected role bindings.
- Secret/config access denied or service account token auth issues.

## Likely Root Causes
- RBAC misbinding: wrong subject/namespace/apiGroup/resource/verb.
- ServiceAccount mismatch between workload spec and granted permissions.
- Admission policy denial (Pod Security / OPA / Kyverno / custom webhook).
- TLS/certificate trust mismatch for API or webhook calls.
- Secret at-rest/encryption config drift causing control-plane read/write errors.

## Inspection Commands
```bash
# 1) Fast authz checks
kubectl auth can-i get pods -n <ns> --as=<user-or-sa>
kubectl auth can-i create deployments -n <ns> --as=<user-or-sa>

# 2) RBAC object inspection
kubectl get role,rolebinding,clusterrole,clusterrolebinding -A
kubectl -n <ns> describe rolebinding <rb>
kubectl describe clusterrolebinding <crb>

# 3) ServiceAccount and pod identity
kubectl -n <ns> get sa
kubectl -n <ns> describe sa <sa>
kubectl -n <ns> get pod <pod> -o yaml | grep -E 'serviceAccountName|automountServiceAccountToken'

# 4) Admission and policy events
kubectl get events -A --sort-by=.lastTimestamp | grep -Ei 'forbidden|denied|admission|policy'
kubectl -n <ns> describe pod <pod>

# 5) API/cert and control-plane security logs
kubectl -n kube-system logs <kube-apiserver-pod> --tail=200
sudo openssl x509 -in /etc/kubernetes/pki/apiserver.crt -noout -dates -issuer -subject
```

## Interpretation Tips
- Forbidden with authenticated identity usually means RBAC policy gap, not authentication failure.
- Admission denial messages often include exact policy rule; use that string as your primary clue.
- If `can-i` passes but action still fails, inspect admission webhooks and namespace-level constraints.
- ServiceAccount name typos silently cause default SA usage and unexpected permission failures.
- TLS errors around webhooks often come from CA bundle drift or expired certs.

## Fix Patterns
- RBAC gaps:
  - Add least-privilege rules for exact apiGroup/resource/verb and bind to correct subject scope.
- SA mismatch:
  - Set correct `serviceAccountName` in workload spec and ensure token mount posture matches need.
- Admission policy blocks:
  - Update workload security context/image settings to satisfy policy, or adjust policy with controlled exception path.
- Webhook/TLS failures:
  - Rotate certs, reconcile CA bundles, verify webhook service reachability.
- Secret management issues:
  - Reconcile encryption config and key order/availability, then validate secret CRUD path.

## Prevention Notes
- Continuously test RBAC intent with automated `can-i` checks in CI.
- Keep policy-as-code with versioned exceptions and expiration dates.
- Alert on repeated Forbidden/admission-denied spikes per namespace.
- Rotate and monitor cert expiry for API and webhook PKI.
- Enforce explicit serviceAccountName and securityContext standards in deployment templates.

## Source-Backed Reasoning
- Security troubleshooting links to merged/01_global_concept_map.md entries for Security Contexts, Service Accounts, and Security section concepts.
- API server and certificate-focused diagnostic patterns are supported by normalized-concepts/kube-api-server.md.
- RBAC and identity behavior is grounded in normalized-concepts/rbac.md, normalized-concepts/authentication.md, normalized-concepts/authorization.md, and normalized-concepts/service-accounts.md.
