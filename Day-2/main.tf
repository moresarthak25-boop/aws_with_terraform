resource "aws_instance" "web-app" {
    ami = var.ami_id
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    # count = var.instance_count
    associate_public_ip_address = var.public_ip


    tags = {
        Name = "web-app"

    }
}

output "instance_public-ip" {
   description = "this for the aws ec2 public ip"
   value = aws_instance.web-app.public_ip
}   

output "instance_private-ip" {
   description = "this for the aws ec2 public ip"
   value = aws_instance.web-app.private_ip
}
