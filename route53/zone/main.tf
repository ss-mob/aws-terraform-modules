resource "aws_default_vpc" "default" {
  count = lookup(var.zone, "private", false) == true ? 1 : 0
  tags = {
    Name = "Default VPC"
  }
}

resource "aws_route53_zone" "this_private" {
  count         = lookup(var.zone, "private", false) == true ? 1 : 0
  name          = var.zone.domain
  comment       = lookup(var.zone, "comment", null)
  force_destroy = lookup(var.zone, "force_destroy", false)

  dynamic "vpc" {
    for_each = lookup(var.zone, "private", false) == true ? [aws_default_vpc.default[count.index].id] : []

    content {
      vpc_id = aws_default_vpc.default[count.index].id
    }
  }

  //  lifecycle block is required because of:
  //     you cannot use in-line VPC associations in conjunction with any aws_route53_zone_association resources
  //     with the same zone ID otherwise it will cause a perpetual difference in plan output.
  //  more info: https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route53_zone#private-zone
  lifecycle {
    ignore_changes = [
      vpc
    ]
  }

  tags = lookup(var.zone, "tags", null)
}

resource "aws_route53_zone" "this_public" {
  count         = lookup(var.zone, "private", false) == true ? 0 : 1
  name          = var.zone.domain
  comment       = lookup(var.zone, "comment", null)
  force_destroy = lookup(var.zone, "force_destroy", false)

  tags = lookup(var.zone, "tags", null)
}



