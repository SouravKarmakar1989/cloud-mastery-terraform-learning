# github-runner-platform (Ephemeral GitHub Actions Runner on Azure)

This repo provisions an **ephemeral self-hosted GitHub Actions runner** on **Azure VM** and registers it against your **IaC repo**.
After the job finishes, the VM shuts down. A separate workflow deletes the VM to ensure **near-zero cost**.

## What you get
- Azure OIDC login (no client secret)
- Create ephemeral runner VM (Ubuntu 22.04, Standard_B2s)
- Runner registers to your IaC repo with labels: `self-hosted,ephemeral`
- Delete workflow to remove VM/NIC/Public IP
- (Optional) Issue template + scaffold PR workflow (agent placeholder)

## Prerequisites
1. Azure subscription + resource group: `rg-runner-platform`
2. Azure Entra ID App Registration for this repo:
   - Federated Credential: `repo:<ORG>/github-runner-platform:ref:refs/heads/main`
   - Role assignment: **Contributor** on `rg-runner-platform`
3. GitHub repo variables (Settings → Secrets and variables → Actions → Variables):
   - `AZURE_CLIENT_ID`
   - `AZURE_TENANT_ID`
   - `AZURE_SUBSCRIPTION_ID`
   - `IAC_REPO` = `<ORG>/github-iac-terraform` (e.g. `SouravKarmakar1989/github-iac-terraform`)
4. GitHub repo secrets (Settings → Secrets and variables → Actions → Secrets):
   - `GH_APP_ID` = the numeric ID of a **GitHub App** installed on the IaC repository (found under *Settings → Developer settings → GitHub Apps → your app → App ID*).
   - `GH_APP_PRIVATE_KEY` = the PEM private key generated for that GitHub App (*Settings → Developer settings → GitHub Apps → your app → Generate a private key*).

   The GitHub App must have the following **repository permission** granted on the IaC repository:
   - **Administration** → `write` — required to generate self-hosted runner registration tokens via the API.

   > **Why GitHub App instead of a PAT?**  A GitHub App installation token is short-lived (≤ 1 hour), scoped to exactly the repositories you specify, and uses RBAC — only the `administration:write` permission is granted, with no other repository access.  A classic PAT with `repo` scope grants full read/write access to every private repository the token owner can see.

## Azure test flow
1. Actions → **azure-create-ephemeral-runner** → Run workflow
2. In IaC repo: Actions → **azure-minimal-apply** → Run workflow
3. Back here: Actions → **azure-delete-ephemeral-runner** → Run workflow
