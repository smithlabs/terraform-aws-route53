# This data source looks up the public DNS zone
data "aws_route53_zone" "public" {
  name         = var.domain_name
  private_zone = false
}

# Standard route53 DNS record for "myapp" pointing to an ALB
resource "aws_route53_record" "myapp" {
  allow_overwrite = true
  zone_id         = data.aws_route53_zone.public.zone_id
  name            = data.aws_route53_zone.public.name
  type            = "A"
  alias {
    name                   = var.load_balancer_name
    zone_id                = var.zone_id
    evaluate_target_health = false
  }
}
