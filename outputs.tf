
output "acl_arn" {
  description = "ARN of the WAF Regional ACL."
  value       = aws_wafv2_web_acl.acl.arn
}
