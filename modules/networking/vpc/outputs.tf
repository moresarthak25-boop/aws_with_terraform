output "vpc_id" {
    value = aws_vpc.main.id
}

output "public_subnet_01_id" {
  value = aws_subnet.public_subnet_01.id
}
