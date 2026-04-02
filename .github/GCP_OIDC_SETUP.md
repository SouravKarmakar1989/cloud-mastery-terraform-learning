# GCP OIDC Setup For This Repository

This runbook fixes GitHub Actions auth failures like:

- google-github-actions/auth failed with: workflow must specify exactly one of workload_identity_provider or credentials_json

In this repository, workflows already use Workload Identity Federation and expect two repository variables:

- GCP_WORKLOAD_IDENTITY_PROVIDER
- GCP_SERVICE_ACCOUNT

If those are missing or empty, auth fails.

## Required GitHub Repository Variables

Add these in GitHub repository settings -> Actions -> Variables:

- GCP_WORKLOAD_IDENTITY_PROVIDER
  - Example: projects/123456789012/locations/global/workloadIdentityPools/github-pool/providers/github-provider
- GCP_SERVICE_ACCOUNT
  - Example: github-actions-tf@my-gcp-project.iam.gserviceaccount.com

Optional but useful:

- GCP_PROJECT_ID

## Fast Setup (PowerShell)

Run from repository root:

    pwsh ./.github/scripts/setup-gcp-oidc.ps1 `
      -ProjectId my-gcp-project `
      -Owner SouravKarmakar1989 `
      -Repository cloud-mastery-terraform-learning `
      -WorkloadIdentityPoolId github-pool `
      -WorkloadIdentityProviderId github-provider `
      -ServiceAccountId github-actions-tf `
      -SetGithubVariables

This script will:

1. Ensure Workload Identity Pool exists.
2. Ensure OIDC provider exists (GitHub issuer).
3. Ensure service account exists.
4. Grant roles/iam.workloadIdentityUser on the service account to this repo principal set.
5. Set GitHub repo variables GCP_WORKLOAD_IDENTITY_PROVIDER and GCP_SERVICE_ACCOUNT.

## Manual Setup (gcloud)

1. Set project and gather project number:

    gcloud config set project <PROJECT_ID>
    gcloud projects describe <PROJECT_ID> --format='value(projectNumber)'

2. Create pool and provider:

    gcloud iam workload-identity-pools create github-pool \
      --project=<PROJECT_ID> \
      --location=global \
      --display-name='GitHub Actions Pool'

    gcloud iam workload-identity-pools providers create-oidc github-provider \
      --project=<PROJECT_ID> \
      --location=global \
      --workload-identity-pool=github-pool \
      --display-name='GitHub Provider' \
      --issuer-uri='https://token.actions.githubusercontent.com' \
      --attribute-mapping='google.subject=assertion.sub,attribute.actor=assertion.actor,attribute.repository=assertion.repository,attribute.repository_owner=assertion.repository_owner,attribute.ref=assertion.ref,attribute.aud=assertion.aud' \
      --attribute-condition="assertion.repository=='SouravKarmakar1989/cloud-mastery-terraform-learning'"

3. Create service account:

    gcloud iam service-accounts create github-actions-tf \
      --project=<PROJECT_ID> \
      --display-name='GitHub Actions Terraform'

4. Allow this repo to impersonate service account:

    gcloud iam service-accounts add-iam-policy-binding \
      github-actions-tf@<PROJECT_ID>.iam.gserviceaccount.com \
      --project=<PROJECT_ID> \
      --role='roles/iam.workloadIdentityUser' \
      --member='principalSet://iam.googleapis.com/projects/<PROJECT_NUMBER>/locations/global/workloadIdentityPools/github-pool/attribute.repository/SouravKarmakar1989/cloud-mastery-terraform-learning'

5. Set GitHub variables:

    gh variable set GCP_WORKLOAD_IDENTITY_PROVIDER --repo SouravKarmakar1989/cloud-mastery-terraform-learning --body "projects/<PROJECT_NUMBER>/locations/global/workloadIdentityPools/github-pool/providers/github-provider"
    gh variable set GCP_SERVICE_ACCOUNT --repo SouravKarmakar1989/cloud-mastery-terraform-learning --body "github-actions-tf@<PROJECT_ID>.iam.gserviceaccount.com"

## Verification Checklist

1. Workflow has permissions id-token: write.
2. Workflow input to auth uses vars.GCP_WORKLOAD_IDENTITY_PROVIDER and vars.GCP_SERVICE_ACCOUNT.
3. Variable values are present in repo settings (not empty).
4. Service account has roles/iam.workloadIdentityUser binding for this repo principalSet.
5. Run workflow again and confirm Google auth succeeds.

## Troubleshooting

- View provider:

      gcloud iam workload-identity-pools providers describe github-provider \
        --project=<PROJECT_ID> --location=global --workload-identity-pool=github-pool

- View service account IAM policy:

      gcloud iam service-accounts get-iam-policy github-actions-tf@<PROJECT_ID>.iam.gserviceaccount.com --project=<PROJECT_ID>

- Confirm GitHub variable values:

      gh variable list --repo SouravKarmakar1989/cloud-mastery-terraform-learning
