# Route53 Zones

This module creates Route53 zones.

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
| zones | Map of Route53 zone parameters | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_route53\_zone\_name\_servers | Name servers of Route53 zone |
| this\_route53\_zone\_zone\_id | Zone ID of Route53 zone |

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
| [aws_route53_zone.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Whether to create Route53 zone | `bool` | `true` | no |
| <a name="input_zones"></a> [zones](#input\_zones) | Map of Route53 zone parameters | `any` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_this_route53_zone_name_servers"></a> [this\_route53\_zone\_name\_servers](#output\_this\_route53\_zone\_name\_servers) | Name servers of Route53 zone |
| <a name="output_this_route53_zone_zone_id"></a> [this\_route53\_zone\_zone\_id](#output\_this\_route53\_zone\_zone\_id) | Zone ID of Route53 zone |
