
#################################################
# ACM MODULE
#################################################

module "asg" {

  source = "../../../modules/asg"

  environment = var.environment
project_name  = var.project_name
launch_template_id  = "data.terraform_remote_state.launch_template_backend.output.launch_template_id"
private_subnet_ids  = "data.terraform_remote_state.vpc_backend.output.private_subnet_ids"
target_group_arn   = "data.terraform_remote_state.tg_backend.output.target_group_arn"
launch_template_latest_version  = "data.terraform_remote_state.launch_template_backend.output.launch_template_latest_version"
aws_region  = var.aws_region
}
