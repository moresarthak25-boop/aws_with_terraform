resource "aws_instance" "web-app" {
    ami = var.instance_ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    #count = var.instance_count
    #associate_public_ip_address = var.public_ip


    tags = {
      Name = "${var.environment}-web-server"
        Environment = var.environment
        
    }
}

