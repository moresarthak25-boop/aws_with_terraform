module "alb" {

  source = "../../../../modules/compute/alb"

  environment = var.environment

  project_name = var.project_name

  vpc_id = "vpc-098523367d8ce6ff7"

  public_subnet_ids = [
    "subnet-0c3c23730218354a8",
    "subnet-06eb123fa59d653ac"
  ]

  alb_security_group_id = "sg-0d6d2d260bf9e1e6c"

  target_group_arn = data.terraform_remote_state.tg_backend.outputs.target_group_arn

  acm_certificate_arn = data.terraform_remote_state.acm_backend.outputs.certificate_arn

  aws_region = var.aws_region
}