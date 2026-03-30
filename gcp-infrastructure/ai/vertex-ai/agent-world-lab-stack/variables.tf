variable "project_name" {
  type    = string
  default = "agent-world-lab"
}

variable "platform_short" {
  type    = string
  default = "awl"
}

variable "environment" {
  type    = string
  default = "lab"
}

variable "owner" {
  type    = string
  default = "platform-team"
}

variable "cost_center" {
  type    = string
  default = "learning"
}

variable "data_class" {
  type    = string
  default = "internal"
}

variable "gcp_project_id" {
  type    = string
  default = ""
}

variable "gcp_region" {
  type    = string
  default = "us-central1"
}

variable "feature_flags" {
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
