data "terraform_remote_state" "vpc_backend" {
  backend = "s3"

  config = {

     bucket = "terraform-s3-bucket-02" # this must be your s3 bucket name
    key    = "Network/fctp/dev/vpc/terraform.tfstate"
    region = "ap-south-1"

  }
}