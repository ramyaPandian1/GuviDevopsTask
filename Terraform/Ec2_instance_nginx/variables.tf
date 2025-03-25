variable "us-east-1-ami" {
    type = string
    description = "Ami for region us-east-1"
    default = "ami-007868005aea67c54"
  
}

variable "us-east-2-ami" {
    type = string
    description = "Ami for region us-east-2"
    default = "ami-03dd1011b2501fbfd"
  
}

variable "instance_type" {
    type = string
    description = "Instance type for EC2"
    default = "t2.micro"
  
}

