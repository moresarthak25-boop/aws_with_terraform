module "launch_template" {

  source = "../../../../modules/compute/lt"

  environment  = var.environment
  project_name = var.project_name

  instance_type = var.instance_type
  key_name      = var.key_name

  aws_region = var.aws_region

  # TEMPORARY VALUE
  ec2_security_group_id = "sg-0d6d2d260bf9e1e6c"
}