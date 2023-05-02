
variable "client_id" {
  description = "Client ID - use dsol for internal resources. Used in all name prefixes."
  type        = string
}

variable "deployment_id" {
  description = "The deployment/application ID to be used across stack resources."
  type        = string
}

variable "environment" {
  type        = string
  description = "Deployment environment, defaults to terraform.workspace. Used in all name prefixes."
  default     = null
}

variable "owner" {
  description = "Technical owner of the resources."
  type        = string
}


variable "allowed_cidr_ranges" {
  description = "A list of CIDR ranges that will be whitelisted by the WAF IPSet."
  type        = list(string)
}

variable "association_resource_arn" {
  description = "The ARN of the API Gateway or ALB that will be associated with the WAF ACL."
  type        = string
}

variable "endpoint_type" {
  description = "The type of endpoint for WAF."
  type        = string
}

variable "name" {
  description = "Name that will be applied across all resources."
  type        = string
}
