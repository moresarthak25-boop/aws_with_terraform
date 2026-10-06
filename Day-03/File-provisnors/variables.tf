variable "instance_ami_id" {
  type    = string
  default = "ami-01a00762f46d584a1"

}

variable "subnet_id" {
  type    = string
  default = "subnet-0c3c23730218354a8"
  #default = "subnet-0147f31652d7b53e0"
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "sg_name" {
  type    = string
  default = "Day_03_sg_tf"
}

variable "vpc_id" {
  type    = string
  default = "vpc-098523367d8ce6ff7"
}

variable "key_name" {
  type    = string
  default = "fctp_self_managed_key"

}

#variable "instance_count" {
#   type = number
#  default = 1
# } 


#variable "public_ip" {
# type = bool
# default = true
# description = "this for public ip"
# }
