resource "aws_key_pair" "fctp_self_managed_key" {
  key_name   = var.key_name
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKN2J51CTVYj/2Jcybz62yqiIW8peX/KzN5rHKnzgz8T moresarthak25@gmail.com"
}
