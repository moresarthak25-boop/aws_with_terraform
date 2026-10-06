output "public_ip" {
  description = "this is for the aws  ec2 instance public ip"
  value       = aws_instance.web-app.public_ip
}

output "private_ip" {
  description = "this is for the aws  ec2 instance private_ip "
  value       = aws_instance.web-app.private_ip
}

output "public_dns" {
  description = "this is for the aws  ec2 instance  public_dns"
  value       = aws_instance.web-app.public_dns
}

output "private_dns" {
  description = "this is for the aws  ec2 instance  private_dns"
  value       = aws_instance.web-app.private_dns
}

output "instance_id" {
  description = "this is for the aws  ec2 instance  instance id"
   value       = aws_instance.web-app
}

