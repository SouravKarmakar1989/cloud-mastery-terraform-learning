# Branch Protection: Enforce PR Workflow

This document explains how to set up branch protection on `main` to prevent direct pushes and require PR review + CI passing.

## Why Branch Protection?

**Without it**: Anyone can `git push` directly to `main`, bypassing CI/CD gates.
**With it**: 
- ✅ All PRs trigger CI (secrets scan, linting, plan, infracost)
- ✅ Plan + Infracost reviewed before merge
- ✅ Direct pushes to `main` rejected (forces PR workflow)
- ✅ Required reviewers can enforce governance

---

## Setup Steps (GitHub Web UI)

### 1. Go to Repository Settings
```
Repository → Settings → Branches → Add rule
```

### 2. Create Branch Protection Rule

**Branch name pattern:** `main` (or `master` if your default is master)

**Enable these checkboxes:**

| Setting | Purpose |
|---------|---------|
| ✅ Require a pull request before merging | Blocks direct pushes |
| ✅ Dismiss stale pull request approvals when new commits are pushed | Ensures reviews stay current |
| ✅ Require status checks to pass before merging | Gates on CI results |
| ✅ Require branches to be up to date before merging | Prevents merge conflicts |
| ✅ Include administrators | Admins also follow the rule |

### 3. Select Required Status Checks

These must pass before merge is allowed:

- `CI Gate` (from `.github/workflows/ci.yml`)
- `Compute Modules Plan Gate` (from `.github/workflows/compute-modules-plan.yml`)
- Any other status checks your organization requires

### 4. Optional: Require Code Review

| Setting | Purpose |
|---------|---------|
| ✅ Require at least 1 approving review | Prevents self-merge |
| ✅ Require approval of the most recent reviewable push | Keeps reviews fresh |
| ✅ Dismiss code review approvals | Clears old approvals when code changes |

### 5. Save

Click **Create** to activate the rule.

---

## Verification

After setup, test it:

1. **Try direct push** (should fail):
   ```bash
   git push origin main
   # ✗ [remote rejected] main (branch is protected from push)
   ```

2. **Create PR** (should work):
   ```bash
   git checkout -b feature/my-change
   git push origin feature/my-change
   # Creates PR in GitHub UI
   # CI jobs trigger automatically
   ```

3. **Merge only via PR** after:
       - ✅ CI passes (`CI Gate`, `Compute Modules Plan Gate`)
       - ✅ Code review approved (if required)
       - ✅ Branch up to date with main

---

## Terraform Alternative (Optional)

If you manage GitHub via Terraform (using `github` provider), add to `.tf`:

```hcl
resource "github_branch_protection" "main" {
  repository_id  = github_repository.this.node_id
  pattern        = "main"

  # Require PR
  required_pull_request_reviews {
    required_approving_review_count = 1
    dismiss_stale_reviews           = true
    restrict_dismissals             = false
  }

  # Require CI
  required_status_checks {
    strict   = true  # Branch must be up-to-date before merge
    contexts = [
      "CI Gate",
      "Compute Modules Plan Gate"
    ]
  }

  # Block direct pushes
  enforce_admins = true

  # Allow auto-merge (optional)
  allow_auto_merge = false

  # Delete head branch on merge (cleanup)
  delete_branch_on_merge = true
}
```

---

## How It Flows

```
Developer commits to feature branch
         ↓
     git push origin feature/...
         ↓
  GitHub creates PR (automatically)
         ↓
  CI triggers:
    - secret-scan ✓
    - tf-lint ✓
    - iac-scan ✓
    - aws-compute-plan ✓
    - azure-compute-plan ✓
    - gcp-compute-plan ✓
    - compute plan-gate ✓
         ↓
  PR shows "All checks passed"
         ↓
  Code reviewer approves (if required)
         ↓
  "Merge" button enabled
         ↓
  Click → merged to main
         ↓
  (Optional: Auto-trigger terraform apply via separate workflow)
```

---

## Appendix: Common Issues

### Issue: "Merge button greyed out but all checks pass"
**Cause**: Branch is stale (main has moved ahead)
**Fix**: Click "Update branch" in PR UI

### Issue: "Required check not appearing"
**Cause**: Status check name mismatch in branch protection vs workflow
**Fix**: Verify the `name:` field in `.github/workflows/*.yml` matches exactly what you put in branch protection

### Issue: "CI passes locally but fails in GitHub"
**Cause**: Environment differences (AWS credentials, Terraform version, etc.)
**Fix**: Check GitHub Actions logs → click the failed check → see detailed error

---

## Next Steps

1. ✅ Set up branch protection (above)
2. ✅ Create test PR to verify workflow
3. ✅ Document in team wiki
4. ✅ Brief team on new PR-only workflow
