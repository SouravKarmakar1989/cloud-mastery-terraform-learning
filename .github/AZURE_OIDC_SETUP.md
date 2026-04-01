# Azure OIDC Setup For This Repository

This runbook fixes Azure login failures like:

- AADSTS700213: No matching federated identity record found
- Subject claim mismatch for pull request workflows

## Why The Error Happens

GitHub issued this subject claim in your failing run:

- repo:SouravKarmakar1989/cloud-mastery-terraform-learning:pull_request

Azure App Registration must contain a federated credential with that exact subject.

## Required Federated Credentials

Create both credentials on the same App Registration used by GitHub Actions:

1. Main branch runs
- Subject: repo:SouravKarmakar1989/cloud-mastery-terraform-learning:ref:refs/heads/main

2. Pull request runs
- Subject: repo:SouravKarmakar1989/cloud-mastery-terraform-learning:pull_request

Common values for both credentials:

- Issuer: https://token.actions.githubusercontent.com
- Audience: api://AzureADTokenExchange

## Fast Setup (PowerShell)

Run from repository root:

    pwsh ./.github/scripts/setup-azure-oidc.ps1 \
      -Owner SouravKarmakar1989 \
      -Repository cloud-mastery-terraform-learning \
      -MainBranch main \
      -AppDisplayName cloud-mastery-terraform-learning-oidc \
      -AssignContributorAtSubscription

Optional for Terraform remote state storage account role assignments:

    pwsh ./.github/scripts/setup-azure-oidc.ps1 \
      -StateStorageAccountResourceId /subscriptions/<sub-id>/resourceGroups/<rg>/providers/Microsoft.Storage/storageAccounts/<account>

## Manual Setup (Azure CLI)

    az ad app create --display-name cloud-mastery-terraform-learning-oidc

    az ad app federated-credential create --id <appId> --parameters '{
      "name": "github-main",
      "issuer": "https://token.actions.githubusercontent.com",
      "subject": "repo:SouravKarmakar1989/cloud-mastery-terraform-learning:ref:refs/heads/main",
      "audiences": ["api://AzureADTokenExchange"]
    }'

    az ad app federated-credential create --id <appId> --parameters '{
      "name": "github-pr",
      "issuer": "https://token.actions.githubusercontent.com",
      "subject": "repo:SouravKarmakar1989/cloud-mastery-terraform-learning:pull_request",
      "audiences": ["api://AzureADTokenExchange"]
    }'

## GitHub Repository Variables

In GitHub repository settings, add Actions variables:

- AZURE_CLIENT_ID
- AZURE_TENANT_ID
- AZURE_SUBSCRIPTION_ID

## Verification Checklist

1. Workflow has permission id-token: write.
2. azure/login@v2 uses the same AZURE_CLIENT_ID as App Registration with federated credentials.
3. App Registration contains both github-main and github-pr credentials.
4. The PR workflow now logs in successfully via OIDC.

## Troubleshooting

- If login still fails, list configured credentials and inspect subjects:

      az ad app federated-credential list --id <appId> --query "[].{name:name,subject:subject,issuer:issuer,audiences:audiences}" -o table

- If you changed owner or repository name, update both subjects to match exact claims.
