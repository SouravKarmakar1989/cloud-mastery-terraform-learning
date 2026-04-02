resource "aws_kinesis_stream" "this" {
  count       = var.enabled ? 1 : 0
  name        = "${local.prefix}-${var.stream_name}"
  shard_count = var.shard_count

  stream_mode_details {
    stream_mode = var.stream_mode
  }

  tags = merge(local.common_tags, var.tags)
}