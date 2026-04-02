param(
    [Parameter(Mandatory = $true)]
    [string]$ProjectId,

    [Parameter(Mandatory = $false)]
    [string]$Owner = "SouravKarmakar1989",

    [Parameter(Mandatory = $false)]
    [string]$Repository = "cloud-mastery-terraform-learning",

    [Parameter(Mandatory = $false)]
    [string]$WorkloadIdentityPoolId = "github-pool",

    [Parameter(Mandatory = $false)]
    [string]$WorkloadIdentityProviderId = "github-provider",

    [Parameter(Mandatory = $false)]
    [string]$ServiceAccountId = "github-actions-tf",

    [Parameter(Mandatory = $false)]
    [switch]$SetGithubVariables
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Require-Command {
    param([Parameter(Mandatory = $true)][string]$Name)
    if (-not (Get-Command $Name -ErrorAction SilentlyContinue)) {
        throw "Required command not found in PATH: $Name"
    }
}

function Try-Run {
    param([Parameter(Mandatory = $true)][scriptblock]$Script)
    try {
        & $Script | Out-Null
        return ($LASTEXITCODE -eq 0)
    }
    catch {
        return $false
    }
}

function Invoke-Checked {
    param([Parameter(Mandatory = $true)][scriptblock]$Script, [Parameter(Mandatory = $true)][string]$FailureMessage)
    & $Script | Out-Null
    if ($LASTEXITCODE -ne 0) {
        throw $FailureMessage
    }
}

Require-Command -Name gcloud
if ($SetGithubVariables) {
    Require-Command -Name gh
}

Write-Host "Checking gcloud auth context..."
gcloud auth list --filter=status:ACTIVE --format="value(account)" | Out-Null

Write-Host "Setting active GCP project: $ProjectId"
gcloud config set project $ProjectId | Out-Null

$projectNumber = gcloud projects describe $ProjectId --format="value(projectNumber)"
if (-not $projectNumber) {
    throw "Unable to resolve project number for project: $ProjectId"
}

$serviceAccountEmail = "$ServiceAccountId@$ProjectId.iam.gserviceaccount.com"
$repositoryFullName = "$Owner/$Repository"
$providerResource = "projects/$projectNumber/locations/global/workloadIdentityPools/$WorkloadIdentityPoolId/providers/$WorkloadIdentityProviderId"

Write-Host "Ensuring required IAM APIs are enabled..."
Invoke-Checked -FailureMessage "Failed enabling required IAM APIs in project $ProjectId" -Script {
    gcloud services enable iam.googleapis.com iamcredentials.googleapis.com sts.googleapis.com --project $ProjectId
}

Write-Host "Ensuring Workload Identity Pool exists: $WorkloadIdentityPoolId"
$poolExists = Try-Run {
    gcloud iam workload-identity-pools describe $WorkloadIdentityPoolId --project $ProjectId --location global --format="value(name)"
}
if (-not $poolExists) {
    Invoke-Checked -FailureMessage "Failed creating Workload Identity Pool $WorkloadIdentityPoolId" -Script {
        gcloud iam workload-identity-pools create $WorkloadIdentityPoolId `
            --project $ProjectId `
            --location global `
            --display-name "GitHub Actions Pool"
    }
}

Write-Host "Ensuring OIDC provider exists: $WorkloadIdentityProviderId"
$providerExists = Try-Run {
    gcloud iam workload-identity-pools providers describe $WorkloadIdentityProviderId --project $ProjectId --location global --workload-identity-pool $WorkloadIdentityPoolId --format="value(name)"
}
if (-not $providerExists) {
    Invoke-Checked -FailureMessage "Failed creating OIDC provider $WorkloadIdentityProviderId" -Script {
        gcloud iam workload-identity-pools providers create-oidc $WorkloadIdentityProviderId `
            --project $ProjectId `
            --location global `
            --workload-identity-pool $WorkloadIdentityPoolId `
            --display-name "GitHub Provider" `
            --issuer-uri "https://token.actions.githubusercontent.com" `
            --attribute-mapping "google.subject=assertion.sub,attribute.actor=assertion.actor,attribute.repository=assertion.repository,attribute.repository_owner=assertion.repository_owner,attribute.ref=assertion.ref,attribute.aud=assertion.aud" `
            --attribute-condition "assertion.repository=='$repositoryFullName'"
    }
}

Write-Host "Ensuring service account exists: $serviceAccountEmail"
$serviceAccountExists = Try-Run {
    gcloud iam service-accounts describe $serviceAccountEmail --project $ProjectId --format="value(email)"
}
if (-not $serviceAccountExists) {
    Invoke-Checked -FailureMessage "Failed creating service account $serviceAccountEmail" -Script {
        gcloud iam service-accounts create $ServiceAccountId `
            --project $ProjectId `
            --display-name "GitHub Actions Terraform"
    }
}

$member = "principalSet://iam.googleapis.com/projects/$projectNumber/locations/global/workloadIdentityPools/$WorkloadIdentityPoolId/attribute.repository/$repositoryFullName"

Write-Host "Granting roles/iam.workloadIdentityUser to repository principalSet"
Invoke-Checked -FailureMessage "Failed granting roles/iam.workloadIdentityUser on $serviceAccountEmail" -Script {
    gcloud iam service-accounts add-iam-policy-binding $serviceAccountEmail `
        --project $ProjectId `
        --role "roles/iam.workloadIdentityUser" `
        --member $member
}

if ($SetGithubVariables) {
    Write-Host "Setting GitHub repository variables..."
    gh variable set GCP_WORKLOAD_IDENTITY_PROVIDER --repo $repositoryFullName --body $providerResource | Out-Null
    gh variable set GCP_SERVICE_ACCOUNT --repo $repositoryFullName --body $serviceAccountEmail | Out-Null
    gh variable set GCP_PROJECT_ID --repo $repositoryFullName --body $ProjectId | Out-Null
}

Write-Host ""
Write-Host "Done. Use these values in GitHub Actions variables:"
Write-Host "GCP_WORKLOAD_IDENTITY_PROVIDER=$providerResource"
Write-Host "GCP_SERVICE_ACCOUNT=$serviceAccountEmail"
Write-Host "GCP_PROJECT_ID=$ProjectId"
