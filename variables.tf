variable "domain_name" {
  description = "The domain name you have in Route53"
  type        = string
}

variable "load_balancer_name" {
  description = "The name of your load balancer or target group ARN"
  type        = string
}

variable "zone_id" {
  description = "The zone ID of your ALB or ELB"
  type        = string
}
