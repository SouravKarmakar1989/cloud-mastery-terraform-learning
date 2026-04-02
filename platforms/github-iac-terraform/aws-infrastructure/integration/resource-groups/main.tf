resource "aws_resourcegroups_group" "this" {
  count = var.enabled ? 1 : 0
  name  = "${local.prefix}-group"

  resource_query {
    type = "TAG_FILTERS_1_0"

    query = jsonencode({
      ResourceTypeFilters = ["AWS::AllSupported"]
      TagFilters = [
        {
          Key    = "environment"
          Values = [var.environment]
        }
      ]
    })
  }

  tags = merge(local.common_tags, var.tags)
}