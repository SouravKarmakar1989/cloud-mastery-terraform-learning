variable "aws_region" {
  type        = string
  description = "AWS region for all resources"
  default     = "us-east-1"
}

variable "environment" {
  type        = string
  description = "Environment name (dev, staging, prod)"
  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment must be dev, staging, or prod"
  }
}

variable "project" {
  type        = string
  description = "Project name for resource naming"
  default     = "cloud-mastery"
}

variable "vpc_cidr" {
  type        = string
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones for multi-AZ setup"
  default     = ["us-east-1a", "us-east-1b"]
}

# ── EC2 Configuration ──────────────────────────────────────────────────────
variable "ec2_instance_type" {
  type        = string
  description = "EC2 instance type for app tier"
  default     = "t3.micro"
}

variable "ec2_instance_count" {
  type        = number
  description = "Number of EC2 instances in app tier"
  default     = 1
  validation {
    condition     = var.ec2_instance_count > 0 && var.ec2_instance_count <= 10
    error_message = "Instance count must be between 1 and 10"
  }
}

variable "ec2_key_name" {
  type        = string
  description = "EC2 key pair name for SSH access (optional)"
  default     = null
}

variable "ec2_allowed_ssh_cidrs" {
  type        = list(string)
  description = "CIDR blocks allowed to SSH to EC2 instances"
  default     = ["0.0.0.0/0"] # This should be restricted in production
}

# ── RDS Configuration (Future) ─────────────────────────────────────────────
variable "rds_engine" {
  type        = string
  description = "RDS database engine"
  default     = "mysql"
}

variable "rds_engine_version" {
  type        = string
  description = "RDS database engine version"
  default     = "8.0"
}

# ── ElastiCache Configuration (Future) ────────────────────────────────────
variable "enable_elasticache" {
  type        = bool
  description = "Enable ElastiCache cluster"
  default     = false
}

variable "cache_node_type" {
  type        = string
  description = "ElastiCache node type"
  default     = "cache.t3.micro"
}

variable "tags" {
  type        = map(string)
  description = "Additional tags to apply to all resources"
  default     = {}
}

variable "created_at" {
  type        = string
  description = "Optional static deployment timestamp tag value (for example: 2026-04-03T10:00:00Z)"
  default     = null
}
