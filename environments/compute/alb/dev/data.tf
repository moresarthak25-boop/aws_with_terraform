data "terraform_remote_state" "tg_backend" {
  backend = "s3"

  config = {
    bucket = "terraform-s3-bucket-02"
    key    = "compute/fctp/dev/tg/terraform.tfstate"
    region = "ap-south-1"
  }
}

data "terraform_remote_state" "acm_backend" {
  backend = "s3"

  config = {
    bucket = "terraform-s3-bucket-02"
    key    = "security/fctp/acm-alb/terraform.tfstate"
    region = "ap-south-1"
  }
}