locals {

  common_tags = {

    Environment = var.environment

    Project = var.project_name

    ManagedBy = var.managed_by
  }
}

module "acm" {

  source = "../../../modules/compute/acm"

  environment = var.environment

  domain_name = var.domain_name

  subject_alternative_names = [

    var.root_domain
  ]

  hosted_zone_id = "Z084123ABCXYZ456DEF"

  common_tags = local.common_tags
  aws_region = var.aws_region
}