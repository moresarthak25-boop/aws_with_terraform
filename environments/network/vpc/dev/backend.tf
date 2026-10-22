terraform {
  backend "s3" {

    bucket = "terraform-s3-bucket-02" # this must be your s3 bucket name
    key    = "Network/fctp/dev/vpc/terraform.tfstate"
    region = "ap-south-1"
  }
}