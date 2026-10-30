data "terraform_remote_state" "launch_template_backend" {
  backend = "s3"

  config = {
     bucket = "terraform-s3-bucket-02" # this must be your s3 bucket name
    key    = "compute/fctp/dev/lt/terraform.tfstate"
    region = "ap-south-1"
  }
}

data "terraform_remote_state" "vpc_backend" {
  backend = "s3"

  config = {
     bucket = "terraform-s3-bucket-02" # this must be your s3 bucket name
    key    = "Network/fctp/dev/vpc/terraform.tfstate"
    region = "ap-south-1"
  }
}

data "terraform_remote_state" "tg_backend" {
  backend = "s3"

  config = {
      bucket = "terraform-s3-bucket-02" # this must be your s3 bucket name
    key    = "compute/fctp/dev/tg/terraform.tfstate"
    region = "ap-south-1"
  }
}