# ---------------------------------------------------------------------------
# security/vpc-secure — VPC with layered security components
#
# Implements (Task 1.2 – Secure Workloads):
#   • VPC with public, private-app, and private-data subnet tiers
#   • Internet Gateway + NAT Gateways (single for dev, per-AZ for prod)
#   • Route tables: public → IGW, private → NAT GW
#   • Network ACLs: stateless inbound/outbound control per tier
#   • Security Groups: bastion, application ALB, app instances, data layer
#   • VPC Flow Logs → CloudWatch (full traffic capture for threat analysis)
#   • Gateway endpoint for S3 (no NAT cost for S3 traffic)
#   • Interface endpoints for SSM (secure shell without internet/bastion)
# ---------------------------------------------------------------------------

data "aws_caller_identity" "current" {}

# ── VPC ───────────────────────────────────────────────────────────────────────

resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames

  tags = merge(local.common_tags, { Name = "${local.prefix}-vpc" })
}

# ── Internet Gateway ──────────────────────────────────────────────────────────

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags   = merge(local.common_tags, { Name = "${local.prefix}-igw" })
}

# ── Public Subnets ─────────────────────────────────────────────────────────────

resource "aws_subnet" "public" {
  for_each = var.public_subnets

  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value
  availability_zone       = "${var.region}${each.key}"
  map_public_ip_on_launch = false # Explicit assignment only — avoid accidental public exposure

  tags = merge(local.common_tags, {
    Name = "${local.prefix}-public-${each.key}"
    Tier = "public"
  })
}

# ── Private App Subnets ────────────────────────────────────────────────────────

resource "aws_subnet" "private_app" {
  for_each = var.private_app_subnets

  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value
  availability_zone       = "${var.region}${each.key}"
  map_public_ip_on_launch = false

  tags = merge(local.common_tags, {
    Name = "${local.prefix}-private-app-${each.key}"
    Tier = "private-app"
  })
}

# ── Private Data Subnets ───────────────────────────────────────────────────────

resource "aws_subnet" "private_data" {
  for_each = var.private_data_subnets

  vpc_id                  = aws_vpc.main.id
  cidr_block              = each.value
  availability_zone       = "${var.region}${each.key}"
  map_public_ip_on_launch = false

  tags = merge(local.common_tags, {
    Name = "${local.prefix}-private-data-${each.key}"
    Tier = "private-data"
  })
}

# ── Elastic IPs for NAT Gateways ──────────────────────────────────────────────

resource "aws_eip" "nat" {
  count  = local.nat_count
  domain = "vpc"
  tags   = merge(local.common_tags, { Name = "${local.prefix}-nat-eip-${count.index}" })
}

# ── NAT Gateways ──────────────────────────────────────────────────────────────

resource "aws_nat_gateway" "main" {
  count = local.nat_count

  allocation_id = aws_eip.nat[count.index].id
  subnet_id     = values(aws_subnet.public)[count.index].id

  tags = merge(local.common_tags, {
    Name = "${local.prefix}-nat-${count.index}"
  })

  depends_on = [aws_internet_gateway.main]
}

# ── Route Tables — Public ─────────────────────────────────────────────────────

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  tags   = merge(local.common_tags, { Name = "${local.prefix}-rt-public" })
}

resource "aws_route" "public_internet" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.main.id
}

resource "aws_route_table_association" "public" {
  for_each = aws_subnet.public

  subnet_id      = each.value.id
  route_table_id = aws_route_table.public.id
}

# ── Route Tables — Private App ────────────────────────────────────────────────

resource "aws_route_table" "private_app" {
  for_each = var.private_app_subnets

  vpc_id = aws_vpc.main.id
  tags   = merge(local.common_tags, { Name = "${local.prefix}-rt-private-app-${each.key}" })
}

resource "aws_route" "private_app_nat" {
  for_each = var.private_app_subnets

  route_table_id         = aws_route_table.private_app[each.key].id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = (
    var.single_nat_gateway
    ? aws_nat_gateway.main[0].id
    : aws_nat_gateway.main[index(keys(var.private_app_subnets), each.key) % local.nat_count].id
  )
}

resource "aws_route_table_association" "private_app" {
  for_each = aws_subnet.private_app

  subnet_id      = each.value.id
  route_table_id = aws_route_table.private_app[each.key].id
}

# ── Route Tables — Private Data ────────────────────────────────────────────────

resource "aws_route_table" "private_data" {
  for_each = var.private_data_subnets

  vpc_id = aws_vpc.main.id
  tags   = merge(local.common_tags, { Name = "${local.prefix}-rt-private-data-${each.key}" })
}

resource "aws_route" "private_data_nat" {
  for_each = var.private_data_subnets

  route_table_id         = aws_route_table.private_data[each.key].id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id = (
    var.single_nat_gateway
    ? aws_nat_gateway.main[0].id
    : aws_nat_gateway.main[index(keys(var.private_data_subnets), each.key) % local.nat_count].id
  )
}

resource "aws_route_table_association" "private_data" {
  for_each = aws_subnet.private_data

  subnet_id      = each.value.id
  route_table_id = aws_route_table.private_data[each.key].id
}

# ── Network ACLs — Public Tier ────────────────────────────────────────────────
# Stateless: must explicitly allow both inbound and outbound directions.

resource "aws_network_acl" "public" {
  vpc_id     = aws_vpc.main.id
  subnet_ids = [for s in aws_subnet.public : s.id]

  # Inbound: allow HTTP, HTTPS, and ephemeral return traffic
  ingress {
    rule_no    = 100
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 80
    to_port    = 80
  }
  ingress {
    rule_no    = 110
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 443
    to_port    = 443
  }
  ingress {
    rule_no    = 200
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }

  # Outbound: allow all return traffic to internet and VPC
  egress {
    rule_no    = 100
    protocol   = "-1"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = merge(local.common_tags, { Name = "${local.prefix}-nacl-public" })
}

# ── Network ACLs — Private App Tier ───────────────────────────────────────────

resource "aws_network_acl" "private_app" {
  vpc_id     = aws_vpc.main.id
  subnet_ids = [for s in aws_subnet.private_app : s.id]

  # Inbound: allow from VPC CIDR only (no direct internet ingress)
  ingress {
    rule_no    = 100
    protocol   = "-1"
    action     = "allow"
    cidr_block = var.vpc_cidr
    from_port  = 0
    to_port    = 0
  }
  # Inbound: allow ephemeral return traffic from internet (via NAT)
  ingress {
    rule_no    = 200
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }

  # Outbound: allow all (controlled at security group level)
  egress {
    rule_no    = 100
    protocol   = "-1"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = merge(local.common_tags, { Name = "${local.prefix}-nacl-private-app" })
}

# ── Network ACLs — Private Data Tier ─────────────────────────────────────────

resource "aws_network_acl" "private_data" {
  vpc_id     = aws_vpc.main.id
  subnet_ids = [for s in aws_subnet.private_data : s.id]

  # Inbound: only from private-app subnets (strict network segmentation)
  dynamic "ingress" {
    for_each = var.private_app_subnets
    content {
      rule_no    = 100 + index(keys(var.private_app_subnets), ingress.key)
      protocol   = "-1"
      action     = "allow"
      cidr_block = ingress.value
      from_port  = 0
      to_port    = 0
    }
  }
  # Ephemeral return traffic
  ingress {
    rule_no    = 200
    protocol   = "tcp"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 1024
    to_port    = 65535
  }

  egress {
    rule_no    = 100
    protocol   = "-1"
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = merge(local.common_tags, { Name = "${local.prefix}-nacl-private-data" })
}

# ── Security Groups ────────────────────────────────────────────────────────────

# ALB Security Group — HTTP/HTTPS from internet
resource "aws_security_group" "alb" {
  name        = "${local.prefix}-sg-alb"
  description = "Public ALB: HTTPS from internet, HTTP redirect only"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "HTTPS from internet"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "HTTP redirect from internet"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress {
    description = "Allow all outbound to VPC"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.vpc_cidr]
  }

  tags = merge(local.common_tags, { Name = "${local.prefix}-sg-alb" })
}

# Application Security Group — only from ALB
resource "aws_security_group" "app" {
  name        = "${local.prefix}-sg-app"
  description = "Application tier: only traffic from ALB SG allowed"
  vpc_id      = aws_vpc.main.id

  ingress {
    description     = "App port from ALB"
    from_port       = 8080
    to_port         = 8080
    protocol        = "tcp"
    security_groups = [aws_security_group.alb.id]
  }
  egress {
    description = "All outbound (NAT to internet, data subnet)"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.common_tags, { Name = "${local.prefix}-sg-app" })
}

# Data Security Group — only from App SG
resource "aws_security_group" "data" {
  name        = "${local.prefix}-sg-data"
  description = "Data tier: only traffic from app SG allowed (PostgreSQL + Redis)"
  vpc_id      = aws_vpc.main.id

  ingress {
    description     = "PostgreSQL from app"
    from_port       = 5432
    to_port         = 5432
    protocol        = "tcp"
    security_groups = [aws_security_group.app.id]
  }
  ingress {
    description     = "Redis from app"
    from_port       = 6379
    to_port         = 6379
    protocol        = "tcp"
    security_groups = [aws_security_group.app.id]
  }
  egress {
    description = "No internet egress from data tier"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = [var.vpc_cidr]
  }

  tags = merge(local.common_tags, { Name = "${local.prefix}-sg-data" })
}

# VPC Endpoint Security Group — for Interface Endpoints (SSM)
resource "aws_security_group" "vpce" {
  name        = "${local.prefix}-sg-vpce"
  description = "VPC Interface Endpoints: HTTPS from VPC CIDR only"
  vpc_id      = aws_vpc.main.id

  ingress {
    description = "HTTPS from VPC for interface endpoints"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [var.vpc_cidr]
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(local.common_tags, { Name = "${local.prefix}-sg-vpce" })
}

# ── VPC Flow Logs ─────────────────────────────────────────────────────────────

resource "aws_cloudwatch_log_group" "flow_logs" {
  count = var.enable_flow_logs ? 1 : 0

  name              = "/aws/vpc/flow-logs/${local.prefix}"
  retention_in_days = var.flow_log_retention_days

  tags = local.common_tags
}

resource "aws_iam_role" "flow_logs" {
  count = var.enable_flow_logs ? 1 : 0

  name = "${local.prefix}-vpc-flow-logs-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect    = "Allow"
      Principal = { Service = "vpc-flow-logs.amazonaws.com" }
      Action    = "sts:AssumeRole"
    }]
  })

  tags = local.common_tags
}

resource "aws_iam_role_policy" "flow_logs" {
  count = var.enable_flow_logs ? 1 : 0

  name = "${local.prefix}-vpc-flow-logs-policy"
  role = aws_iam_role.flow_logs[0].id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Action = [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents",
        "logs:DescribeLogGroups",
        "logs:DescribeLogStreams"
      ]
      Resource = "*"
    }]
  })
}

resource "aws_flow_log" "main" {
  count = var.enable_flow_logs ? 1 : 0

  vpc_id          = aws_vpc.main.id
  traffic_type    = "ALL"
  iam_role_arn    = aws_iam_role.flow_logs[0].arn
  log_destination = aws_cloudwatch_log_group.flow_logs[0].arn

  tags = merge(local.common_tags, { Name = "${local.prefix}-flow-logs" })
}

# ── VPC Gateway Endpoint — S3 ─────────────────────────────────────────────────
# Avoids S3 traffic through NAT gateway (cost and security benefit)

data "aws_vpc_endpoint_service" "s3" {
  count        = var.enable_s3_endpoint ? 1 : 0
  service      = "s3"
  service_type = "Gateway"
}

resource "aws_vpc_endpoint" "s3" {
  count = var.enable_s3_endpoint ? 1 : 0

  vpc_id            = aws_vpc.main.id
  service_name      = data.aws_vpc_endpoint_service.s3[0].service_name
  vpc_endpoint_type = "Gateway"

  route_table_ids = concat(
    [for rt in aws_route_table.private_app : rt.id],
    [for rt in aws_route_table.private_data : rt.id]
  )

  tags = merge(local.common_tags, { Name = "${local.prefix}-vpce-s3" })
}

# ── VPC Interface Endpoints — SSM (Systems Manager) ──────────────────────────
# Enables EC2 instances in private subnets to be managed via SSM
# without requiring a bastion host or internet access.

resource "aws_vpc_endpoint" "ssm" {
  count = var.enable_ssm_endpoints ? 1 : 0

  vpc_id              = aws_vpc.main.id
  service_name        = "com.amazonaws.${var.region}.ssm"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = [for s in aws_subnet.private_app : s.id]
  security_group_ids  = [aws_security_group.vpce.id]
  private_dns_enabled = true

  tags = merge(local.common_tags, { Name = "${local.prefix}-vpce-ssm" })
}

resource "aws_vpc_endpoint" "ssm_messages" {
  count = var.enable_ssm_endpoints ? 1 : 0

  vpc_id              = aws_vpc.main.id
  service_name        = "com.amazonaws.${var.region}.ssmmessages"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = [for s in aws_subnet.private_app : s.id]
  security_group_ids  = [aws_security_group.vpce.id]
  private_dns_enabled = true

  tags = merge(local.common_tags, { Name = "${local.prefix}-vpce-ssmmessages" })
}

resource "aws_vpc_endpoint" "ec2_messages" {
  count = var.enable_ssm_endpoints ? 1 : 0

  vpc_id              = aws_vpc.main.id
  service_name        = "com.amazonaws.${var.region}.ec2messages"
  vpc_endpoint_type   = "Interface"
  subnet_ids          = [for s in aws_subnet.private_app : s.id]
  security_group_ids  = [aws_security_group.vpce.id]
  private_dns_enabled = true

  tags = merge(local.common_tags, { Name = "${local.prefix}-vpce-ec2messages" })
}
