# AWS x Terraform Module

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)

## Overview
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_cidr_ranges"></a> [allowed_cidr_ranges](#input_allowed_cidr_ranges) | A list of CIDR ranges that will be whitelisted by the WAF IPSet. | `list(string)` | n/a | yes |
| <a name="input_association_resource_arn"></a> [association_resource_arn](#input_association_resource_arn) | The ARN of the API Gateway or ALB that will be associated with the WAF ACL. | `string` | n/a | yes |
| <a name="input_client_id"></a> [client_id](#input_client_id) | Client ID - use dsol for internal resources. Used in all name prefixes. | `string` | n/a | yes |
| <a name="input_deployment_id"></a> [deployment_id](#input_deployment_id) | The deployment/application ID to be used across stack resources. | `string` | n/a | yes |
| <a name="input_endpoint_type"></a> [endpoint_type](#input_endpoint_type) | The type of endpoint for WAF. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input_name) | Name that will be applied across all resources. | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input_owner) | Technical owner of the resources. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input_environment) | Deployment environment, defaults to terraform.workspace. Used in all name prefixes. | `string` | `null` | no |
## Outputs

| Name | Description |
|------|-------------|
| <a name="output_acl_arn"></a> [acl_arn](#output_acl_arn) | ARN of the WAF Regional ACL. |
## Resources

| Name | Type |
|------|------|
| [aws_wafv2_ip_set.ipset](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_ip_set) | resource |
| [aws_wafv2_web_acl.acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl) | resource |
| [aws_wafv2_web_acl_association.associate](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl_association) | resource |
## Modules

No modules.
## Usage

```hcl

```

## Documentation
We use a library called `terraform-docs` for automatically generating documentation for the variables, outputs, resources, and sub-modules defined within a Terraform module.   
The output from `terraform-docs` is wrapped between `HEADER.md` and `FOOTER.md` files which include custom module documentation and usage guidelines.

To ensure our documentation remains up-to-date, it is important that each time changes are made to a module the docs are updated by cd'ing into the module directory and running the following command:  

`terraform-docs --config docs/terraform-docs.yml markdown --escape=false . > README.md`
