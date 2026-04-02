resource "aws_keyspaces_keyspace" "this" { name = "${local.prefix}_${var.keyspace_name}" tags = local.common_tags }
