variable "region" {
  description = "AWS region to deploy the VPC into"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
}

variable "project" {
  description = "Project name used as a name prefix"
  type        = string
  default     = "security"
}

# ── VPC CIDR ──────────────────────────────────────────────────────────────────

variable "vpc_cidr" {
  description = "Primary IPv4 CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_dns_support" {
  description = "Enable VPC DNS resolution"
  type        = bool
  default     = true
}

variable "enable_dns_hostnames" {
  description = "Enable DNS hostnames for EC2 instances in the VPC"
  type        = bool
  default     = true
}

# ── Subnets ───────────────────────────────────────────────────────────────────

variable "public_subnets" {
  description = "Map of AZ suffix → CIDR for public subnets (load balancers, NAT gateways)"
  type        = map(string)
  default = {
    "a" = "10.0.1.0/24"
    "b" = "10.0.2.0/24"
    "c" = "10.0.3.0/24"
  }
}

variable "private_app_subnets" {
  description = "Map of AZ suffix → CIDR for private application subnets (EC2, ECS, Lambda)"
  type        = map(string)
  default = {
    "a" = "10.0.11.0/24"
    "b" = "10.0.12.0/24"
    "c" = "10.0.13.0/24"
  }
}

variable "private_data_subnets" {
  description = "Map of AZ suffix → CIDR for private data subnets (RDS, ElastiCache)"
  type        = map(string)
  default = {
    "a" = "10.0.21.0/24"
    "b" = "10.0.22.0/24"
    "c" = "10.0.23.0/24"
  }
}

# ── NAT Gateways ──────────────────────────────────────────────────────────────

variable "single_nat_gateway" {
  description = "Use a single NAT gateway for all private subnets (cost-saving for dev). Set false for HA (one per AZ) in prod."
  type        = bool
  default     = false
}

# ── Flow Logs ─────────────────────────────────────────────────────────────────

variable "enable_flow_logs" {
  description = "Enable VPC Flow Logs to CloudWatch for network traffic analysis"
  type        = bool
  default     = true
}

variable "flow_log_retention_days" {
  description = "CloudWatch log group retention in days for VPC Flow Logs"
  type        = number
  default     = 90
}

# ── VPC Endpoints ─────────────────────────────────────────────────────────────

variable "enable_s3_endpoint" {
  description = "Create a Gateway VPC endpoint for S3 (avoids data traversal through NAT)"
  type        = bool
  default     = true
}

variable "enable_ssm_endpoints" {
  description = "Create Interface VPC endpoints for SSM, SSMMessages, EC2Messages (allows Systems Manager without internet access)"
  type        = bool
  default     = true
}
