provider "aws" {
  region = var.region
  # Must run from the management (root) account.
  # Credentials supplied by GitHub Actions OIDC.
}
