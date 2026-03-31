# Minimal Stacks Runbook

This runbook covers the minimal smoke-test stacks in this repository and gives one place for:

- end-to-end deploy from GitHub Actions
- verification in each cloud console
- teardown

Current module paths:

- AWS: `platforms/github-iac-terraform/aws-infrastructure/aws-minimal`
- Azure: `platforms/github-iac-terraform/azure-infrastructure/azure-minimal`
- GCP: `platforms/github-iac-terraform/gcp-infrastructure/gcp-minimal`

Current workflow files:

- `/.github/workflows/aws-terraform-apply.yml`
- `/.github/workflows/aws-terraform-destroy.yml`
- `/.github/workflows/azure-terraform-apply.yml`
- `/.github/workflows/azure-terraform-destroy.yml`
- `/.github/workflows/gcp-terraform-apply.yml`
- `/.github/workflows/gcp-terraform-destroy.yml`

## 1. One-time prerequisites

### 1.1 GitHub repository prerequisites

1. Open the GitHub repository settings for `SouravKarmakar1989/cloud-mastery-terraform-learning`.
2. Go to `Settings -> Secrets and variables -> Actions -> Variables`.
3. Add the required repository variables.

AWS variables:

- `AWS_ROLE_ARN`
- `AWS_REGION`

Azure variables:

- `AZURE_CLIENT_ID`
- `AZURE_TENANT_ID`
- `AZURE_SUBSCRIPTION_ID`

GCP variables:

- `GCP_WORKLOAD_IDENTITY_PROVIDER`
- `GCP_SERVICE_ACCOUNT`

### 1.2 Backend configuration files

Before the first deploy, confirm the backend files and tfvars are correct.

AWS dev files:

- `platforms/github-iac-terraform/aws-infrastructure/aws-minimal/env/dev/backend.hcl`
- `platforms/github-iac-terraform/aws-infrastructure/aws-minimal/env/dev/terraform.tfvars`

Azure dev files:

- `platforms/github-iac-terraform/azure-infrastructure/azure-minimal/env/dev/backend.hcl`
- `platforms/github-iac-terraform/azure-infrastructure/azure-minimal/env/dev/terraform.tfvars`

GCP dev files:

- `platforms/github-iac-terraform/gcp-infrastructure/gcp-minimal/env/dev/backend.hcl`
- `platforms/github-iac-terraform/gcp-infrastructure/gcp-minimal/env/dev/terraform.tfvars`

### 1.3 Cloud-side OIDC trust

Each workflow uses OIDC. No static credentials should be stored in GitHub.

AWS:

1. Create or reuse an IAM role trusted by GitHub OIDC.
2. Allow `sts:AssumeRoleWithWebIdentity` from this repository.
3. Grant the role enough permissions for the target module and backend.

Azure:

1. Create or reuse an App Registration.
2. Add a federated credential for this repository and branch.
3. Grant the service principal `Contributor` on the subscription or target scope.
4. Grant `Reader` and `Storage Blob Data Contributor` on the Terraform state storage account.

GCP:

1. Create or reuse a Workload Identity Pool and Provider.
2. Bind the GitHub repository subject to a service account.
3. Grant the service account enough permissions for the target project and state bucket.

## 2. End-to-end deploy from GitHub Actions

### 2.1 AWS minimal deploy

1. Open `Actions -> aws-terraform-apply`.
2. Click `Run workflow`.
3. Set `module = aws-minimal`.
4. Set `environment = dev`.
5. Leave `target_resource` empty.
6. Run the workflow.
7. Wait for `Terraform Init`, `Terraform Plan`, and `Terraform Apply` to complete.
8. Confirm the workflow finishes green.

### 2.2 Azure minimal deploy

1. Open `Actions -> azure-terraform-apply`.
2. Click `Run workflow`.
3. Set `module = azure-minimal`.
4. Set `environment = dev`.
5. Leave `target_resource` empty.
6. Run the workflow.
7. Confirm the `plan` job completes.
8. Confirm the `apply` job completes.
9. For `prod`, expect the apply job to pause for approval if the GitHub environment is protected.

### 2.3 GCP minimal deploy

1. Open `Actions -> gcp-terraform-apply`.
2. Click `Run workflow`.
3. Set `module = gcp-minimal`.
4. Set `environment = dev`.
5. Leave `target_resource` empty.
6. Run the workflow.
7. Wait for `Terraform Init`, `Terraform Plan`, and `Terraform Apply` to complete.
8. Confirm the workflow finishes green.

## 3. How to verify deployment in cloud consoles

### 3.1 AWS console verification

1. Open the AWS Console.
2. Go to `S3`.
3. Find the bucket created by `aws-minimal`.
4. Open the bucket and confirm:
   - bucket exists
   - versioning is enabled
   - default encryption is enabled
   - public access block is fully enabled
5. If needed, compare the bucket name with Terraform outputs in the workflow logs.

### 3.2 Azure portal verification

1. Open the Azure Portal.
2. Go to `Resource groups`.
3. Open the resource group from `lab_rg_name`, currently `rg-lab-dev` for dev.
4. Confirm these resources exist:
   - one resource group
   - one storage account
   - one storage container named `smoketest`
5. Open the storage account and verify:
   - `Standard` tier
   - `LRS` replication
   - public blob access disabled
6. Open the Terraform backend storage account `satfstate2301`.
7. Open container `tfstate`.
8. Confirm the blob `azure-minimal/dev.tfstate` exists.

### 3.3 GCP console verification

1. Open Google Cloud Console.
2. Go to `Cloud Storage -> Buckets`.
3. Find the bucket created by `gcp-minimal`.
4. Open the bucket and confirm:
   - bucket exists
   - uniform bucket-level access is enabled
   - public access prevention is enforced
   - labels include environment and managed_by values
5. If needed, compare the bucket name with Terraform outputs in the workflow logs.

## 4. How to tear down

### 4.1 AWS minimal teardown

1. Open `Actions -> aws-terraform-destroy`.
2. Click `Run workflow`.
3. Set `module = aws-minimal`.
4. Set `environment = dev`.
5. Leave `target_resource` empty.
6. Run the workflow.
7. Wait for `Terraform Destroy` to finish green.
8. Re-check S3 and confirm the bucket is gone.

### 4.2 Azure minimal teardown

1. Open `Actions -> azure-terraform-destroy`.
2. Click `Run workflow`.
3. Set `module = azure-minimal`.
4. Set `environment = dev`.
5. Leave `target_resource` empty.
6. Run the workflow.
7. Wait for `Terraform Destroy` to finish green.
8. Re-check Azure Portal and confirm `rg-lab-dev` no longer exists.

### 4.3 GCP minimal teardown

1. Open `Actions -> gcp-terraform-destroy`.
2. Click `Run workflow`.
3. Set `module = gcp-minimal`.
4. Set `environment = dev`.
5. Leave `target_resource` empty.
6. Run the workflow.
7. Wait for `Terraform Destroy` to finish green.
8. Re-check Cloud Storage and confirm the bucket is gone.

## 5. Cost note

These minimal stacks are low-cost smoke tests, not guaranteed zero-cost stacks.

- AWS minimal creates an S3 bucket.
- Azure minimal creates a storage account and container.
- GCP minimal creates a Cloud Storage bucket.

They should remain low-cost when mostly empty, but they are still billable resources.

## 6. Fast checklist

Before deploy:

- repository variables present
- OIDC trust configured
- backend storage exists
- tfvars values reviewed

After deploy:

- workflow green
- resource visible in portal/console
- Terraform state blob/object created

After teardown:

- destroy workflow green
- target resources removed
- no orphaned billable resources left behind