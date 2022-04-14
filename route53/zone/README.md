# Route53 Zone

This module creates Route53 zone. Zone can be both public and private,
it depends on the `private` parameter of zone variable. In case of private zone,
default VPC is used to initially associate with the zone to make it private.

To associate other VPCs with the zone, please use `assosiation` micro module
from this folder.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.6 |
| aws | >= 2.49 |

## Providers

| Name | Version |
|------|---------|
| aws | >= 2.49 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| create | Whether to create Route53 zone | `bool` | `true` | no |
| zone | Map of Route53 zone parameters | `any` | `{}` | yes |

## Parameters

| Name | Description | Type | 
|------|-------------|------|
| private | Type of the Route53 zone | `bool` | 
| domain | Domain name fo the Route53 zone | `string` |
| comment | Comment for a zone | `string` |

## Outputs
This module provides only one output: attributes. 
It is an object with all available attributes of the route53 zone
as per https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone#argument-reference

| Name | Description |
|------|-------------|
|attributes | All attributes for the Route53 zone |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.6 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.49 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 2.49 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_default_vpc.default](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/default_vpc) | resource |
| [aws_route53_zone.this_private](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |
| [aws_route53_zone.this_public](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether to create Route53 zone | `bool` | `true` | no |
| <a name="input_zone"></a> [zone](#input\_zone) | Map of Route53 zone parameters | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_attributes"></a> [attributes](#output\_attributes) | Zone ID of Route53 zone |
