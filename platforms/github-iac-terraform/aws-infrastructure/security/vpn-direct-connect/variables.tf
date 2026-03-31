variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Deployment environment (dev, staging, prod)"
  type        = string
}

variable "project" {
  description = "Project name used in resource naming"
  type        = string
  default     = "security"
}

# -----------------------------------------------------------------------------
# VPC / VPN Gateway
# -----------------------------------------------------------------------------
variable "vpc_id" {
  description = "VPC ID to attach the Virtual Private Gateway to"
  type        = string
}

variable "amazon_side_asn" {
  description = "BGP ASN for the AWS side of the Virtual Private Gateway"
  type        = number
  default     = 64512
}

# -----------------------------------------------------------------------------
# Customer Gateways
# Map key is a logical name (e.g., "office-hq"); value is the CGW config.
# -----------------------------------------------------------------------------
variable "customer_gateways" {
  description = "Map of customer gateways to create"
  type = map(object({
    ip_address  = string       # Public IP of the on-premises VPN device
    bgp_asn     = number       # BGP ASN of the on-premises device (65000 common for static)
    device_name = optional(string, "")
  }))
  default = {}
}

# -----------------------------------------------------------------------------
# Site-to-Site VPN Connections
# -----------------------------------------------------------------------------
variable "vpn_routing_type" {
  description = "Routing type for VPN connections: 'static' or 'dynamic' (BGP)"
  type        = string
  default     = "static"
  validation {
    condition     = contains(["static", "dynamic"], var.vpn_routing_type)
    error_message = "vpn_routing_type must be 'static' or 'dynamic'."
  }
}

variable "vpn_connections" {
  description = "Map of Site-to-Site VPN connections. Key is a logical name."
  type = map(object({
    customer_gateway_key      = string        # Key from var.customer_gateways
    static_routes_only        = optional(bool, true)
    destination_cidr_blocks   = optional(list(string), []) # Required for static routing
    # Optional tunnel overrides (leave empty to use AWS defaults)
    tunnel1_inside_cidr       = optional(string, "")
    tunnel2_inside_cidr       = optional(string, "")
    tunnel1_preshared_key     = optional(string, "")
    tunnel2_preshared_key     = optional(string, "")
    # DPD (Dead Peer Detection) timeout action
    tunnel1_dpd_timeout_action = optional(string, "restart")
    tunnel2_dpd_timeout_action = optional(string, "restart")
  }))
  default = {}
}

# -----------------------------------------------------------------------------
# AWS Direct Connect Gateway (optional)
# Use Direct Connect for dedicated, high-throughput, low-latency connectivity.
# VPN is encrypted over internet; DX is private dedicated circuit (not encrypted
# by default — combine with MACsec or VPN over DX for encryption in transit).
# -----------------------------------------------------------------------------
variable "enable_direct_connect_gateway" {
  description = "Whether to create a Direct Connect Gateway"
  type        = bool
  default     = false
}

variable "dx_gateway_asn" {
  description = "BGP ASN for the Direct Connect Gateway (Amazon side)"
  type        = number
  default     = 64513
}

variable "dx_gateway_associations" {
  description = "Map of VGW associations with the Direct Connect Gateway"
  type = map(object({
    allowed_prefixes = optional(list(string), [])
  }))
  default = {}
}
