
locals {
  prefix      = "${local.environment}-${var.client_id}"
  environment = var.environment == null ? terraform.workspace : var.environment
  default_tags = {
    client        = var.client_id
    deployment_id = var.deployment_id
    environment   = local.environment
    owner         = var.owner
  }
  name_camel_case = join("", [for word in split("-", var.name): title(word)])
  metric_name = "${local.environment}${title(var.client_id)}${local.name_camel_case}"
}
