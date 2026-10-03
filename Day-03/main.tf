resource "aws_instance" "web-app" {
  ami           = var.instance_ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  #count = var.instance_count
  #associate_public_ip_address = var.associate_public_ip_address
vpc_security_group_ids = [aws_security_group.Day_03_sg.id]
key_name = aws_key_pair.fctp_self_managed_key.key_name

connection {
   host = self.public_ip
   user = "ubuntu"
   type = "ssh"
   private_key = "C:\\Users\\Sarthak\\aws_with_terraform\\Day-03\\ssh.pem"
   timeout = "4m" 
}

provisioner "file" {
   source = "C:\\Users\\Sarthak\\aws_with_terraform\\Day-03\\index.html"
   destination = "/home/ubuntu/index.html"
  
}

  tags = {
    Name        = "${var.environment} web-server"
    Environment = var.environment

  }
}

