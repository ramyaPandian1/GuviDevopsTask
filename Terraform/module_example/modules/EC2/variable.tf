variable "subnet_id" {
    description = "Id of the subnet"
    type = string
}

variable "security_groups" {
    description = "list of security group "
    type = list(string)
  
}

variable "ami_id" {
    description = "Amiid for the instance "
    type = string
  
}

variable "instance_type" {
    description = "instance type for the instance"
    type = string
  
}

variable "tag_name" {
    description = "Name"
    type = string
}