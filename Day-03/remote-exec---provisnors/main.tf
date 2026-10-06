resource "aws_key_pair" "fctp_self_managed_key" {
  key_name   = var.key_name
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIXHsMGBdsp6NR6mFvkkwXxRBlK12niThnRjzSc7xsJz sarthak@LAPTOP-AVJELPCU"
}

resource "aws_instance" "web-app" {
  ami           = var.instance_ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  #count = var.instance_count
  #associate_public_ip_address = var.associate_public_ip_address
vpc_security_group_ids = [aws_security_group.Day_03_sg.id]
key_name = aws_key_pair.fctp_self_managed_key.key_name
}


# Remote-exec provisioner (runs commands on the EC2 instance)
#provisioner "remote-exec" {
   inline = [
    "sudo apt update -y",
    "sudo apt install -y nginx",
    "sudo systemctl enable nginx",
    "sudo systemctl start nginx",
    "echo 'Hello from Terraform remote-exec!' | sudo tee /var/www/html/index.html"
  ]
   
   


 tags = {
    Name        = "${var.environment} web-server"
    Environment = var.environment

  }
#}