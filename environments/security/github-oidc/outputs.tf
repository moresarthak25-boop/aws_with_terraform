#############################################################
# AWS
#############################################################

output "aws_region" {
  value = var.aws_region
}

#############################################################
# ENVIRONMENT
#############################################################

output "environment" {
  value = var.environment
}

#############################################################
# PROJECT
#############################################################

variable "project" {

  type = string

}

#############################################################
# GITHUB OWNER
#############################################################

variable "github" {

  type = string

}

variable "terraform_repository" {

}

variable "frontend_repository" {

}

variable "backend_repository" {

}

variable "github_branch" {

}

variable "terraform_branch" {

}

variable "frontend_branch" {

}

variable "backend_branch" {

}

#############################################################
# GITHUB ENVIRONMENT
#############################################################

variable "github_environment" {

  description = "GitHub Environment Name"

  type = string

}