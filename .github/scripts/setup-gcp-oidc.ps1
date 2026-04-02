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

function Get-CommandPathOrThrow {
    param([Parameter(Mandatory = $true)][string]$Name)

    $resolved = Get-Command -Name $Name -ErrorAction SilentlyContinue
    if (-not $resolved) {
        throw "Required command not found in PATH: $Name"
    }

    return $resolved.Source
}

function Invoke-ExternalCommand {
    param(
        [Parameter(Mandatory = $true)][string]$CommandPath,
        [Parameter(Mandatory = $true)][string[]]$Args,
        [string]$FailureMessage,
        [switch]$CaptureOutput
    )

    $output = & $CommandPath @Args
    if ($LASTEXITCODE -ne 0) {
        if ($FailureMessage) {
            throw $FailureMessage
        }
        throw "Command failed: $CommandPath $($Args -join ' ')"
    }

    if ($CaptureOutput) {
        return $output
    }
}

function Test-ExternalCommand {
    param(
        [Parameter(Mandatory = $true)][string]$CommandPath,
        [Parameter(Mandatory = $true)][string[]]$Args
    )

    & $CommandPath @Args | Out-Null
    return ($LASTEXITCODE -eq 0)
}

function New-GcloudFlag {
    param([Parameter(Mandatory = $true)][string]$Name)
    return ("-" + "-" + $Name)
}

$gcloudPath = Get-CommandPathOrThrow -Name gcloud
if ($SetGithubVariables) {
    $ghPath = Get-CommandPathOrThrow -Name gh
}

Write-Host "Checking gcloud auth context..."
$activeAccount = Invoke-ExternalCommand -CommandPath $gcloudPath -Args @("auth", "list", (New-GcloudFlag "filter") + "=status:ACTIVE", (New-GcloudFlag "format") + "=value(account)") -FailureMessage "Failed to read active gcloud account" -CaptureOutput
if (-not ($activeAccount -join "").Trim()) {
    throw "No active gcloud account found. Run 'gcloud auth login' first."
}

Write-Host "Setting active GCP project: $ProjectId"
Invoke-ExternalCommand -CommandPath $gcloudPath -Args @("config", "set", "project", $ProjectId) -FailureMessage "Failed setting gcloud project to $ProjectId"

$projectNumber = Invoke-ExternalCommand -CommandPath $gcloudPath -Args @("projects", "describe", $ProjectId, (New-GcloudFlag "format") + "=value(projectNumber)") -FailureMessage "Failed resolving project number for project $ProjectId" -CaptureOutput
if (-not ($projectNumber -join "").Trim()) {
    throw "Unable to resolve project number for project: $ProjectId"
}

$projectNumber = ($projectNumber -join "").Trim()
$serviceAccountEmail = "$ServiceAccountId@$ProjectId.iam.gserviceaccount.com"
$repositoryFullName = "$Owner/$Repository"
$providerResource = "projects/$projectNumber/locations/global/workloadIdentityPools/$WorkloadIdentityPoolId/providers/$WorkloadIdentityProviderId"

Write-Host "Ensuring required IAM APIs are enabled..."
Invoke-ExternalCommand -CommandPath $gcloudPath -Args @("services", "enable", "iam.googleapis.com", "iamcredentials.googleapis.com", "sts.googleapis.com", (New-GcloudFlag "project"), $ProjectId) -FailureMessage "Failed enabling required IAM APIs in project $ProjectId"

Write-Host "Ensuring Workload Identity Pool exists: $WorkloadIdentityPoolId"
$poolExists = Test-ExternalCommand -CommandPath $gcloudPath -Args @("iam", "workload-identity-pools", "describe", $WorkloadIdentityPoolId, (New-GcloudFlag "project"), $ProjectId, (New-GcloudFlag "location"), "global", (New-GcloudFlag "format") + "=value(name)")
if (-not $poolExists) {
    Invoke-ExternalCommand -CommandPath $gcloudPath -Args @("iam", "workload-identity-pools", "create", $WorkloadIdentityPoolId, (New-GcloudFlag "project"), $ProjectId, (New-GcloudFlag "location"), "global", (New-GcloudFlag "display-name"), "GitHub Actions Pool") -FailureMessage "Failed creating Workload Identity Pool $WorkloadIdentityPoolId"
}

Write-Host "Ensuring OIDC provider exists: $WorkloadIdentityProviderId"
$providerExists = Test-ExternalCommand -CommandPath $gcloudPath -Args @("iam", "workload-identity-pools", "providers", "describe", $WorkloadIdentityProviderId, (New-GcloudFlag "project"), $ProjectId, (New-GcloudFlag "location"), "global", (New-GcloudFlag "workload-identity-pool"), $WorkloadIdentityPoolId, (New-GcloudFlag "format") + "=value(name)")
if (-not $providerExists) {
    Invoke-ExternalCommand -CommandPath $gcloudPath -Args @(
        "iam", "workload-identity-pools", "providers", "create-oidc", $WorkloadIdentityProviderId,
        (New-GcloudFlag "project"), $ProjectId,
        (New-GcloudFlag "location"), "global",
        (New-GcloudFlag "workload-identity-pool"), $WorkloadIdentityPoolId,
        (New-GcloudFlag "display-name"), "GitHub Provider",
        (New-GcloudFlag "issuer-uri"), "https://token.actions.githubusercontent.com",
        (New-GcloudFlag "attribute-mapping"), "google.subject=assertion.sub,attribute.actor=assertion.actor,attribute.repository=assertion.repository,attribute.repository_owner=assertion.repository_owner,attribute.ref=assertion.ref,attribute.aud=assertion.aud",
        (New-GcloudFlag "attribute-condition"), "assertion.repository=='$repositoryFullName'"
    ) -FailureMessage "Failed creating OIDC provider $WorkloadIdentityProviderId"
}

Write-Host "Ensuring service account exists: $serviceAccountEmail"
$serviceAccountExists = Test-ExternalCommand -CommandPath $gcloudPath -Args @("iam", "service-accounts", "describe", $serviceAccountEmail, (New-GcloudFlag "project"), $ProjectId, (New-GcloudFlag "format") + "=value(email)")
if (-not $serviceAccountExists) {
    Invoke-ExternalCommand -CommandPath $gcloudPath -Args @("iam", "service-accounts", "create", $ServiceAccountId, (New-GcloudFlag "project"), $ProjectId, (New-GcloudFlag "display-name"), "GitHub Actions Terraform") -FailureMessage "Failed creating service account $serviceAccountEmail"
}

$member = "principalSet://iam.googleapis.com/projects/$projectNumber/locations/global/workloadIdentityPools/$WorkloadIdentityPoolId/attribute.repository/$repositoryFullName"

Write-Host "Granting roles/iam.workloadIdentityUser to repository principalSet"
Invoke-ExternalCommand -CommandPath $gcloudPath -Args @("iam", "service-accounts", "add-iam-policy-binding", $serviceAccountEmail, (New-GcloudFlag "project"), $ProjectId, (New-GcloudFlag "role"), "roles/iam.workloadIdentityUser", (New-GcloudFlag "member"), $member) -FailureMessage "Failed granting roles/iam.workloadIdentityUser on $serviceAccountEmail"

if ($SetGithubVariables) {
    Write-Host "Setting GitHub repository variables..."
    Invoke-ExternalCommand -CommandPath $ghPath -Args @("variable", "set", "GCP_WORKLOAD_IDENTITY_PROVIDER", (New-GcloudFlag "repo"), $repositoryFullName, (New-GcloudFlag "body"), $providerResource) -FailureMessage "Failed setting GitHub variable GCP_WORKLOAD_IDENTITY_PROVIDER"
    Invoke-ExternalCommand -CommandPath $ghPath -Args @("variable", "set", "GCP_SERVICE_ACCOUNT", (New-GcloudFlag "repo"), $repositoryFullName, (New-GcloudFlag "body"), $serviceAccountEmail) -FailureMessage "Failed setting GitHub variable GCP_SERVICE_ACCOUNT"
    Invoke-ExternalCommand -CommandPath $ghPath -Args @("variable", "set", "GCP_PROJECT_ID", (New-GcloudFlag "repo"), $repositoryFullName, (New-GcloudFlag "body"), $ProjectId) -FailureMessage "Failed setting GitHub variable GCP_PROJECT_ID"
}

Write-Host ""
Write-Host "Done. Use these values in GitHub Actions variables:"
Write-Host "GCP_WORKLOAD_IDENTITY_PROVIDER=$providerResource"
Write-Host "GCP_SERVICE_ACCOUNT=$serviceAccountEmail"
Write-Host "GCP_PROJECT_ID=$ProjectId"
