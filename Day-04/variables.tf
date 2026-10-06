variable "instance_ami_id" {
    type = string 
    

}

variable "subnet_id" {
    type = string
   
   
}

variable "instance_type" {
    type = string
    
}

variable "environment" {
    type = string
    
}

#variable "instance_count" {
   # type = number
  
#}

variable "associate_public_ip_addresspublic_ip" {
   type = bool
   default = true
}