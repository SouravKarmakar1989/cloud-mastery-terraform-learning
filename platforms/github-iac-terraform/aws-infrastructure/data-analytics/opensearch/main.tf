resource "aws_opensearch_domain" "this" {
  count          = var.enabled ? 1 : 0
  domain_name    = "${replace(local.prefix, "_", "-")}-${var.domain_name}"
  engine_version = var.engine_version

  cluster_config {
    instance_type  = var.instance_type
    instance_count = var.instance_count
  }

  ebs_options {
    ebs_enabled = true
    volume_size = 20
    volume_type = "gp3"
  }

  encrypt_at_rest {
    enabled = true
  }

  node_to_node_encryption {
    enabled = true
  }

  domain_endpoint_options {
    enforce_https = true
  }

  tags = merge(local.common_tags, var.tags)
}