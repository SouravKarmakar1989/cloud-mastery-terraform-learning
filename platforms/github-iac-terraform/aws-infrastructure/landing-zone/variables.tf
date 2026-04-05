variable "aws_region" {
  description = "AWS region for the landing zone"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
}

variable "project" {
  description = "Project name used for resource naming"
  type        = string
  default     = "cloud-mastery"
}

variable "tags" {
  description = "Additional tags to merge into landing zone resources"
  type        = map(string)
  default     = {}
}

variable "vpc_cidr" {
  description = "Primary IPv4 CIDR block for the landing zone VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "Map of AZ suffix to CIDR block for public subnets"
  type        = map(string)
  default = {
    a = "10.0.1.0/24"
    b = "10.0.2.0/24"
  }
}

variable "private_app_subnets" {
  description = "Map of AZ suffix to CIDR block for private application subnets"
  type        = map(string)
  default = {
    a = "10.0.11.0/24"
    b = "10.0.12.0/24"
  }
}

variable "private_data_subnets" {
  description = "Map of AZ suffix to CIDR block for private data subnets"
  type        = map(string)
  default = {
    a = "10.0.21.0/24"
    b = "10.0.22.0/24"
  }
}

variable "single_nat_gateway" {
  description = "Use a single NAT gateway across all private subnets"
  type        = bool
  default     = true
}

variable "enable_flow_logs" {
  description = "Enable VPC Flow Logs"
  type        = bool
  default     = true
}

variable "flow_log_retention_days" {
  description = "Retention for VPC Flow Logs in CloudWatch"
  type        = number
  default     = 90
}

variable "enable_s3_endpoint" {
  description = "Create a gateway VPC endpoint for S3"
  type        = bool
  default     = true
}

variable "enable_ssm_endpoints" {
  description = "Create Systems Manager interface endpoints"
  type        = bool
  default     = true
}

variable "trail_name" {
  description = "CloudTrail trail name"
  type        = string
  default     = "landing-zone-trail"
}

variable "is_multi_region_trail" {
  description = "Enable a multi-region CloudTrail trail"
  type        = bool
  default     = true
}

variable "enable_log_file_validation" {
  description = "Enable CloudTrail log file integrity validation"
  type        = bool
  default     = true
}

variable "include_global_service_events" {
  description = "Include global service events in CloudTrail"
  type        = bool
  default     = true
}

variable "cloudtrail_retention_in_days" {
  description = "CloudWatch retention for CloudTrail logs"
  type        = number
  default     = 90
}

variable "config_record_all_supported" {
  description = "Record all supported resource types in AWS Config"
  type        = bool
  default     = true
}

variable "config_include_global_resource_types" {
  description = "Include global AWS resource types in AWS Config recording"
  type        = bool
  default     = true
}

variable "config_retention_in_days" {
  description = "Retention in days for AWS Config delivery snapshots"
  type        = number
  default     = 365
}