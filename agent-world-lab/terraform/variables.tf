variable "project_name" {
  description = "Project name used for labels and resource naming context."
  type        = string
  default     = "agent-world-lab"
}

variable "platform_short" {
  description = "Short platform prefix for naming."
  type        = string
  default     = "awl"
}

variable "environment" {
  description = "Deployment environment such as lab, dev, stg, or prod."
  type        = string
  default     = "lab"
}

variable "owner" {
  description = "Owner tag value for governance and cost visibility."
  type        = string
  default     = "platform-team"
}

variable "cost_center" {
  description = "Cost center tag value."
  type        = string
  default     = "learning"
}

variable "data_class" {
  description = "Data classification tag value."
  type        = string
  default     = "internal"
}

variable "azure_subscription_id" {
  description = "Azure subscription id."
  type        = string
  default     = ""
}

variable "azure_tenant_id" {
  description = "Azure tenant id."
  type        = string
  default     = ""
}

variable "azure_location" {
  description = "Azure region for primary resources."
  type        = string
  default     = "eastus"
}

variable "aws_region" {
  description = "AWS region for secondary/full mode resources."
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "Optional AWS CLI profile name."
  type        = string
  default     = null
  nullable    = true
}

variable "gcp_project_id" {
  description = "GCP project id for full mode resources."
  type        = string
  default     = ""
}

variable "gcp_region" {
  description = "GCP region for full mode resources."
  type        = string
  default     = "us-central1"
}

variable "feature_flags" {
  description = "Feature flags for optional advanced capabilities."
  type = object({
    enable_azure_foundry       = bool
    enable_bedrock_agentcore   = bool
    enable_gcp_advanced        = bool
    enable_vector_store        = bool
    enable_observability_stack = bool
  })
  default = {
    enable_azure_foundry       = false
    enable_bedrock_agentcore   = false
    enable_gcp_advanced        = false
    enable_vector_store        = false
    enable_observability_stack = false
  }
}
