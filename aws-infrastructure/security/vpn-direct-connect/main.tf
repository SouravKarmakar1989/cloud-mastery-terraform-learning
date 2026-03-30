# =============================================================================
# SAA-C03 Task 1.2 – Secure workloads and applications
# Covers: Site-to-Site VPN (encrypted tunnel over internet), Direct Connect
#         (dedicated private circuit), BGP routing, HA dual-tunnel design,
#         network segmentation for hybrid cloud connectivity
#
# SAA-C03 Task 1.3 – Data security controls
# Covers: encryption in transit (IPsec AES-256 for VPN), MACsec for Direct
#         Connect, TLS enforcement, private network paths to avoid public internet
# =============================================================================

# -----------------------------------------------------------------------------
# Virtual Private Gateway (VGW)
# The AWS-side anchor for Site-to-Site VPN and Direct Connect associations.
# Attaches to the target VPC and provides the BGP endpoint AWS manages.
# -----------------------------------------------------------------------------
resource "aws_vpn_gateway" "main" {
  vpc_id          = var.vpc_id
  amazon_side_asn = var.amazon_side_asn

  tags = merge(local.common_tags, { Name = "${local.prefix}-vgw" })
}

# Attach the VGW to the VPC (explicit attachment for clarity)
resource "aws_vpn_gateway_attachment" "main" {
  vpc_id         = var.vpc_id
  vpn_gateway_id = aws_vpn_gateway.main.id
}

# Route propagation: allow the VGW to automatically propagate VPN routes
# into the specified route tables (replaces manual static route entries).
# In a full deployment you would reference the VPC module's route table IDs here.

# -----------------------------------------------------------------------------
# Customer Gateways (CGW)
# Represents the on-premises VPN device. AWS needs the public IP and BGP ASN.
# For static routing, any private ASN value (e.g. 65000) is acceptable.
# For dynamic (BGP) routing, use the actual ASN of your on-premises device.
# -----------------------------------------------------------------------------
resource "aws_customer_gateway" "this" {
  for_each = var.customer_gateways

  # AWS requires BGP ASN even for static VPN connections
  bgp_asn     = each.value.bgp_asn
  ip_address  = each.value.ip_address
  type        = "ipsec.1" # Only supported type
  device_name = each.value.device_name != "" ? each.value.device_name : null

  tags = merge(local.common_tags, { Name = "${local.prefix}-cgw-${each.key}" })
}

# -----------------------------------------------------------------------------
# Site-to-Site VPN Connections
# Task 1.2/1.3: Each connection provides TWO IPsec tunnels (HA design).
# - Both tunnels use AES-256 + SHA-256 by default
# - If one tunnel fails, traffic fails over automatically to the second
# - Static routing: define explicit destination CIDRs (simpler, no BGP needed)
# - Dynamic routing (BGP): on-premises device advertises routes automatically
# -----------------------------------------------------------------------------
resource "aws_vpn_connection" "this" {
  for_each = var.vpn_connections

  vpn_gateway_id      = aws_vpn_gateway.main.id
  customer_gateway_id = aws_customer_gateway.this[each.value.customer_gateway_key].id
  type                = "ipsec.1"
  static_routes_only  = each.value.static_routes_only

  # Optional: override inside CIDR for tunnel IP addressing (/30 from 169.254.x.x)
  tunnel1_inside_cidr = each.value.tunnel1_inside_cidr != "" ? each.value.tunnel1_inside_cidr : null
  tunnel2_inside_cidr = each.value.tunnel2_inside_cidr != "" ? each.value.tunnel2_inside_cidr : null

  # Optional: pre-shared keys (if not set, AWS generates random keys)
  # WARNING: do not commit PSKs to source control — use Secrets Manager
  tunnel1_preshared_key = each.value.tunnel1_preshared_key != "" ? each.value.tunnel1_preshared_key : null
  tunnel2_preshared_key = each.value.tunnel2_preshared_key != "" ? each.value.tunnel2_preshared_key : null

  # Dead Peer Detection: restart re-establishes the tunnel on peer failure
  tunnel1_dpd_timeout_action = each.value.tunnel1_dpd_timeout_action
  tunnel2_dpd_timeout_action = each.value.tunnel2_dpd_timeout_action

  tags = merge(local.common_tags, { Name = "${local.prefix}-vpn-${each.key}" })
}

# -----------------------------------------------------------------------------
# Static VPN Routes
# Required when static_routes_only = true. Defines which destination CIDRs
# should be routed over the VPN tunnel (e.g., on-premises network CIDRs).
# Flattened from vpn_connections × destination_cidr_blocks.
# -----------------------------------------------------------------------------
locals {
  vpn_static_routes = flatten([
    for conn_key, conn in var.vpn_connections : [
      for cidr in conn.destination_cidr_blocks : {
        key            = "${conn_key}-${replace(cidr, "/", "_")}"
        connection_key = conn_key
        cidr           = cidr
      }
    ]
    if conn.static_routes_only
  ])
}

resource "aws_vpn_connection_route" "this" {
  for_each = { for r in local.vpn_static_routes : r.key => r }

  vpn_connection_id      = aws_vpn_connection.this[each.value.connection_key].id
  destination_cidr_block = each.value.cidr
}

# -----------------------------------------------------------------------------
# Direct Connect Gateway (optional)
# Task 1.2/1.3: DX provides a dedicated private circuit between on-premises
# and AWS — not over the public internet. Lower latency, consistent throughput.
# DX itself is NOT encrypted by default; use MACsec (DX Dedicated) or IPsec
# VPN over DX for encryption in transit compliance requirements.
# The DX Gateway allows connecting multiple VPCs across regions via one DX.
# -----------------------------------------------------------------------------
resource "aws_dx_gateway" "main" {
  count = var.enable_direct_connect_gateway ? 1 : 0

  name            = "${local.prefix}-dxgw"
  amazon_side_asn = var.dx_gateway_asn
}

# Associate the Direct Connect Gateway with the Virtual Private Gateway
# This allows traffic from a DX connection to reach the attached VPC.
resource "aws_dx_gateway_association" "this" {
  for_each = var.enable_direct_connect_gateway ? var.dx_gateway_associations : {}

  dx_gateway_id         = aws_dx_gateway.main[0].id
  associated_gateway_id = aws_vpn_gateway.main.id

  # Allowed prefixes: VPC CIDRs that DX clients may route to
  allowed_prefixes = each.value.allowed_prefixes
}
