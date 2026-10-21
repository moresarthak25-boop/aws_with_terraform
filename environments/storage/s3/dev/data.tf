#######################################################
# Route53 Hosted Zone
#######################################################

#################################################
# DNS REMOTE STATE
#################################################

data "terraform_remote_state" "dns" {

  backend = "s3"

  config = {

    bucket = "terraform-s3-bucket-02" # this must be your s3 bucket name
    key    = "global/dns/sarthak/terraform.tfstate"
    region = "ap-south-1"
  }
}

#######################################################
# ACM Remote State
#######################################################

data "terraform_remote_state" "acm_global" {

  backend = "s3"

  config = {

    bucket = "terraform-s3-bucket-02" # this must be your s3 bucket name
    key    = "security/fctp/acm/global/terraform.tfstate"
    region = "ap-south-1"
  }

}

