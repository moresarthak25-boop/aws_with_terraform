data "terraform_remote_state" "dns_backend" {
  backend = "s3"

  config = {

     bucket = "terraform-s3-bucket-02" # this must be your s3 bucket name
    key    = "global/dns/sarthak/terraform.tfstate"
    region = "ap-south-1"

  }
}