param(
    [Parameter(Mandatory = $false)]
    [string]$SubscriptionId,

    [Parameter(Mandatory = $false)]
    [string]$TenantId,

    [Parameter(Mandatory = $false)]
    [string]$Owner = "SouravKarmakar1989",

    [Parameter(Mandatory = $false)]
    [string]$Repository = "cloud-mastery-terraform-learning",

    [Parameter(Mandatory = $false)]
    [string]$MainBranch = "main",

    [Parameter(Mandatory = $false)]
    [string]$AppDisplayName = "cloud-mastery-terraform-learning-oidc",

    [Parameter(Mandatory = $false)]
    [string]$StateStorageAccountResourceId,

    [Parameter(Mandatory = $false)]
    [switch]$AssignContributorAtSubscription
)

Set-StrictMode -Version Latest
$ErrorActionPreference = "Stop"

function Require-AzCli {
    if (-not (Get-Command az -ErrorAction SilentlyContinue)) {
        throw "Azure CLI (az) is required but was not found in PATH."
    }
}

function Upsert-FederatedCredential {
    param(
        [Parameter(Mandatory = $true)]
        [string]$AppId,

        [Parameter(Mandatory = $true)]
        [string]$Name,

        [Parameter(Mandatory = $true)]
        [string]$Subject
    )

    $existing = az ad app federated-credential list --id $AppId | ConvertFrom-Json
    $match = $existing | Where-Object { $_.name -eq $Name }
    if ($match) {
        az ad app federated-credential delete --id $AppId --federated-credential-id $match.id | Out-Null
    }

    $payload = @{
        name      = $Name
        issuer    = "https://token.actions.githubusercontent.com"
        subject   = $Subject
        audiences = @("api://AzureADTokenExchange")
    } | ConvertTo-Json -Depth 5

    $tmpJson = [System.IO.Path]::GetTempFileName()
    try {
        Set-Content -Path $tmpJson -Value $payload -Encoding utf8
        az ad app federated-credential create --id $AppId --parameters "@$tmpJson" | Out-Null
    }
    finally {
        Remove-Item -Path $tmpJson -Force -ErrorAction SilentlyContinue
    }
}

Require-AzCli

Write-Host "Validating Azure CLI login context..."
if ($TenantId) {
    az login --tenant $TenantId | Out-Null
} else {
    az account show | Out-Null
}

if ($SubscriptionId) {
    az account set --subscription $SubscriptionId
}

$current = az account show | ConvertFrom-Json
if (-not $SubscriptionId) {
    $SubscriptionId = $current.id
}
if (-not $TenantId) {
    $TenantId = $current.tenantId
}

Write-Host "Ensuring app registration exists: $AppDisplayName"
$app = az ad app list --display-name $AppDisplayName | ConvertFrom-Json | Select-Object -First 1
if (-not $app) {
    $app = az ad app create --display-name $AppDisplayName | ConvertFrom-Json
}

$appId = $app.appId
Write-Host "Ensuring service principal exists for appId: $appId"
az ad sp create --id $appId | Out-Null

$sp = az ad sp show --id $appId | ConvertFrom-Json
$spObjectId = $sp.id

$mainSubject = "repo:${Owner}/${Repository}:ref:refs/heads/${MainBranch}"
$prSubject = "repo:${Owner}/${Repository}:pull_request"

Write-Host "Creating/updating federated credential: github-main ($mainSubject)"
Upsert-FederatedCredential -AppId $appId -Name "github-main" -Subject $mainSubject

Write-Host "Creating/updating federated credential: github-pr ($prSubject)"
Upsert-FederatedCredential -AppId $appId -Name "github-pr" -Subject $prSubject

if ($AssignContributorAtSubscription) {
    $scope = "/subscriptions/$SubscriptionId"
    Write-Host "Assigning Contributor at subscription scope: $scope"
    az role assignment create --assignee-object-id $spObjectId --assignee-principal-type ServicePrincipal --role "Contributor" --scope $scope --only-show-errors | Out-Null
}

if ($StateStorageAccountResourceId) {
    Write-Host "Assigning state backend roles on storage account scope: $StateStorageAccountResourceId"
    az role assignment create --assignee-object-id $spObjectId --assignee-principal-type ServicePrincipal --role "Reader" --scope $StateStorageAccountResourceId --only-show-errors | Out-Null
    az role assignment create --assignee-object-id $spObjectId --assignee-principal-type ServicePrincipal --role "Storage Blob Data Contributor" --scope $StateStorageAccountResourceId --only-show-errors | Out-Null
}

Write-Host ""
Write-Host "Done. Configure these GitHub Actions repository variables:"
Write-Host "AZURE_CLIENT_ID=$appId"
Write-Host "AZURE_TENANT_ID=$TenantId"
Write-Host "AZURE_SUBSCRIPTION_ID=$SubscriptionId"
Write-Host ""
Write-Host "Expected PR subject for this repo: $prSubject"
