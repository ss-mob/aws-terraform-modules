output "attributes" {
  description = "Zone ID of Route53 zone"
  value       = lookup(var.zone, "private", false) == true ? { for k, v in aws_route53_zone.this_private[0] : k => v } : { for k, v in aws_route53_zone.this_public[0] : k => v }
}
