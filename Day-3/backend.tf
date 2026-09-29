terraform {
  backend "s3" {
    bucket = "terraform-s3-bucket-03"
    key    = "compute/Day-3/terraform.tfstate"
    region = "ap-south-1"
  }
}
