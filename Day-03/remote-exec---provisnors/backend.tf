terraform {
  backend "s3" {
    bucket = "terraform-s3-bucket-02" #this  
    key    = "compute/fctp/dev/Day-03/local-provinors/terraform.tfstate"
    region = "ap-south-1"
  }
}
