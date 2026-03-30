locals {
  normalized = {
    platform = lower(var.platform_short)
    cloud    = lower(var.cloud_short)
    workload = lower(var.workload)
    env      = lower(var.environment)
    region   = lower(var.region_short)
  }

  name_prefix = "${local.normalized.platform}-${local.normalized.cloud}-${local.normalized.workload}-${local.normalized.env}"
  name_full   = "${local.name_prefix}-${local.normalized.region}"

  tags = merge({
    platform   = local.normalized.platform
    cloud      = local.normalized.cloud
    workload   = local.normalized.workload
    env        = local.normalized.env
    region     = local.normalized.region
    managed_by = "terraform"
  }, var.extra_tags)
}
