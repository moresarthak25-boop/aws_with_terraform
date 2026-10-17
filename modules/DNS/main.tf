resource "aws_route53_zone" "main" {
  name = var.domain_name
  comment = "Managed by terraform"
  force_destroy = false
}