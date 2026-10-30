terraform {
  backend "s3" {
    bucket = "terraform-s3-bucket-02-sarthak"
    key    = "ec2/docker/terraform.tfstate"
    region = "ap-south-1"
    use_lockfile = false

  }
}
