
resource "aws_wafv2_web_acl" "acl" {
  name = "${local.prefix}-${var.name}"
  scope              = var.endpoint_type

  default_action {
    block {}
  }

  rule {
    name     = "ip-whitelist"
    priority = 1
    action {
      allow {}
    }
    statement {
      ip_set_reference_statement {
        arn = aws_wafv2_ip_set.ipset.arn
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = true
      metric_name                = "IpWhitelistHits"
      sampled_requests_enabled   = true
    }
  }

  visibility_config {
    cloudwatch_metrics_enabled = true
    metric_name                = "${local.metric_name}Hits"
    sampled_requests_enabled   = true
  }

  tags = merge(
    local.default_tags,
    { "Name" : "${local.prefix}-${var.name}" }
  )
}

resource "aws_wafv2_ip_set" "ipset" {
  name = "${local.prefix}-${var.name}"
  scope              = var.endpoint_type
  ip_address_version = "IPV4"
  addresses          = var.allowed_cidr_ranges

  tags = merge(
    local.default_tags,
    { "Name" : "${local.prefix}-${var.name}" }
  )
}

resource "aws_wafv2_web_acl_association" "associate" {
  resource_arn = var.association_resource_arn
  web_acl_arn  = aws_wafv2_web_acl.acl.arn
}
