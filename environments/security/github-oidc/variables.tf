#############################################################
# AWS
#############################################################

variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "environment" {
  type = string
}

#############################################################
# ENVIRONMENT
#############################################################


#############################################################
# PROJECT
#############################################################

variable "project_name" {

  type = string

}

#############################################################
# GITHUB OWNER
#############################################################

variable "github_owner" {

  type = string

}

output "terraform_repository" {
  value = var.terraform_repository
}

output "frontend_repository" {
  value = var.frontend_repository
}

output "backend_repository" {
  value = var.backend_repository
}

output "github_branch" {
  value = var.github_branch
}

output "terraform_branch" {
  value = var.terraform_branch
}

output "frontend_branch" {
  value = var.frontend_branch
}

output "backend_branch" {
  value = var.backend_branch
}

#############################################################
# GITHUB ENVIRONMENT
#############################################################

output "github_environment" {
  value = var.github_environment
}

output "project_name" {
  value = var.project_name
}