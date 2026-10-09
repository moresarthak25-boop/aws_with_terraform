terraform {
  backend "s3" {
    bucket = "terraform-s3-bucket-02" #this  
    key    = "networking/fctp/prod/vpc/terraform.tfstate"
    region = "ap-south-1"
  }
}
