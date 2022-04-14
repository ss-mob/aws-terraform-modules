variable "zone_id" {
  description = "Zone to associate VPC with"
  type        = string
}

variable "vpc_id" {
  description = "VPC to associate with Route53 hosted zone"
  type        = string
}
