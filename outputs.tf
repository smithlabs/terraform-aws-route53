output "testing" {
  value = "Test this demo code by going to https://${aws_route53_record.myapp.fqdn} and checking your have a valid SSL cert"
}
output "testing_sclient" {
  value = "Test this SSL by using openssl s_client -host ${aws_route53_record.myapp.fqdn} -port 443 and looking at the certs"
}

output "zone_public_id" {
  description = "The public ID of the DNS zone"
  value = "data.aws_route53_zone.public.zone_id"
}

#output "acm_arn" {
#  value = aws_acm_certificate_validation.cert.certificate_arn
#}
