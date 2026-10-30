module "target_group" {

  source = "../../../../modules/compute/tg"

  environment = var.environment

  project_name = var.project_name

  vpc_id = "vpc-0b96bfd6d88e39c14"

  aws_region = var.aws_region
}