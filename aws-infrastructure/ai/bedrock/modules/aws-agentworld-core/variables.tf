variable "platform_short" { type = string }
variable "environment" { type = string }
variable "region" { type = string }
variable "feature_flags" {
  type = object({
    enable_azure_foundry       = bool
    enable_bedrock_agentcore   = bool
    enable_gcp_advanced        = bool
    enable_vector_store        = bool
    enable_observability_stack = bool
  })
}
variable "tags" {
  type    = map(string)
  default = {}
}
